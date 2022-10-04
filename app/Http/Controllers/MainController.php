<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Payment;
use Monolog\SignalHandler;
use Razorpay\Api\Api;
use Razorpay\Api\Errors\SignatureVerificationError;
use Session;

class MainController extends Controller
{
    public function index(){
        return view('index');
    }

    public function success(){
        return view('success');
    }




    public function payment(Request $request){

        $name = $request->input('name');
        $amount = $request->input('amount');
        $email = $request->input('email');

        $api = new Api('rzp_test_4GF0TIKNQenqYi', 'PeWooIsuVEDkTeNDCmoHftFR');
        $order  = $api->order->create(array('receipt' => '123', 'amount' => $amount * 100 , 'currency' => 'INR')); // Creates order
        $orderId = $order['id'];
        // dd($orderId);
        // $email = $order['item'];

        $user_pay = new Payment();

        // $fetch = $api->payment->all();
        // $fetchData = $fetch['item'];
        // dd($fetch);
        // // dd($fetch);
        // $user_pay->email = $fetch;

        $user_pay->name = $name;
        $user_pay->amount = $amount;
        $user_pay->payment_id = $orderId;
        $user_pay->email = $email;
        $user_pay->save();

        $data = array(
            'order_id' => $orderId,
            'email' => $email,
            'amount' => $amount
        );

        Session::put('order_id', $orderId);
        Session::put('email', $email);
        Session::put('amount' , $amount);


        return redirect()->route('home')->with('data', $data);




    }


    public function pay(Request $request){
        $data = $request->all();

        $user = Payment::where('payment_id', $data['razorpay_order_id'])->first();
        $user->payment_done = true;
        $user->razorpay_id = $data['razorpay_payment_id'];

        $api = new Api('rzp_test_4GF0TIKNQenqYi', 'PeWooIsuVEDkTeNDCmoHftFR');

        // $fetch = $api->payment->all();
        // dd($fetch);
        try{
        $attributes = array(
             'razorpay_signature' => $data['razorpay_signature'],
             'razorpay_payment_id' => $data['razorpay_payment_id'],
             'razorpay_order_id' => $data['razorpay_order_id']
        );
        $order = $api->utility->verifyPaymentSignature($attributes);

        $success = true;
    }catch(SignatureVerificationError $e){

        $succes = false;
    }


    if($success){
        $user->save();
        return redirect('/success');
    }else{

        return redirect()->route('error');
    }





    }


    public function error(){
        return view('error');
    }

}
