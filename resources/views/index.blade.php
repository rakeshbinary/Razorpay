<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Razorpay</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>





    <div class="container mt-5 col-6 mx-auto pt-5">

        <div class="text-center">
        <img src="https://scontent.famd15-1.fna.fbcdn.net/v/t39.30808-6/301594624_113362281504761_3067227785267111736_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=aewfQH3BCfoAX9X9sMR&_nc_ht=scontent.famd15-1.fna&oh=00_AT-9RqmafRzYzU1sms7Dn3tjP2-2QUfN1v851sgvOktqMA&oe=633A4794" class="img-fluid" style="height:200px">
        </div>
        <form method="post" action="/payment">
          @csrf
            <div class="form-group">
              <label for="exampleInputEmail1">Enter name</label>
              <input type="text" name="name" class="form-control" placeholder="Enter your name">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Enter email</label>
                <input type="email" name="email" class="form-control" placeholder="Enter your Email">
              </div>
            <div class="form-group">
              <label for="exampleInputPassword1">Enter amount</label>
              <input type="number" name="amount" class="form-control" id="exampleInputPassword1" placeholder="Enter Amount">
            </div>

            <button type="submit" class="btn btn-primary btn-block">Submit</button>
          </form>








    </div>

    @if(Session::has('data'))

    <div class="container tex-center mx-auto">
    <form action="/pay" method="POST" class="text-center mx-auto mt-5">
      <script
        src="https://checkout.razorpay.com/v1/checkout.js"
        data-key="rzp_test_4GF0TIKNQenqYi"
        data-amount="{{Session::get('data.amount')}}"
        data-currency="INR"
        data-order_id="{{Session::get('data.order_id')}}"
        data-buttontext="Pay with Razorpay"
        data-name="Binary Solution"
        data-image="https://scontent.famd15-1.fna.fbcdn.net/v/t39.30808-6/301594624_113362281504761_3067227785267111736_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=aewfQH3BCfoAX9X9sMR&_nc_ht=scontent.famd15-1.fna&oh=00_AT-9RqmafRzYzU1sms7Dn3tjP2-2QUfN1v851sgvOktqMA&oe=633A4794"
        data-description="Test transaction"
        data-prefill.name=""
        data-prefill.email="{{ Session::get('data.email') }}"
        data-theme.color="#3399cc"
      ></script>
      <input type="hidden" custom="Hidden Element" name="hidden">
      </form>

    </div>

    @endif


</body>
</html>
