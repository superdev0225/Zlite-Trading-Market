<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=yes">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-touch-fullscreen" content="yes">
		
<!--     <meta name="viewport" content="user-scalable=yes"> -->
		
    <meta name="" content="">
		<meta name="author" content="">

  <!-- 
      it is used to do ajax function in laravel. 
      If you are using the HTML form submit (not AJAX) then you need to put :
      {{ csrf_field() }} 
      inside your form tags.
  -->
  <meta name="csrf-token" content="{{ csrf_token() }}">
  
  <!--<link rel="icon" href="favicon.ico" type="image/x-icon">-->
  
  <link rel="shortcut icon" type="image/png" href="/favicon.png"/>

  <title>WalletApi</title>
  
  <!-- lib css -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous"><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

  
  <!-- custom css -->
  <link rel="stylesheet" href="{{ asset('client/css/maincss/main.css') }}" type="text/css" />
  
  
  
  <!-- lib js -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>

  <script type="text/javascript" src="{{ asset('client/js/jquery1.js') }}"></script>
	<script src="{{ asset('client/js/ajaxupload.3.5.js') }}"></script>
	
	<!-- for fancy -->
	<script src="{{ asset('client/tool_js/jquery-ui.min.js') }}"></script>
  
  <script type="text/javascript">
    /* it is used to do azax function in laravel. */  
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
      });

    var base_url = '{{$base_url}}';
  </script>
  </head>

  <body>
    <div id="main">
      @yield('content')
      @include('client.partials.footer')
      @yield('script')
    </div>
  </body>
  </html>