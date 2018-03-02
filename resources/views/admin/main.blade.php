<!DOCTYPE html>
<html lang="en" data-textdirection="ltr" class="loading">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="Visa Program.">
    <meta name="keywords" content="admin template,visa admin">
    <meta name="author" content="EXO">

    <meta name="csrf-token" content="{{ csrf_token() }}" />

    <title>Admin-Visa</title>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i%7COpen+Sans:300,300i,400,400i,600,600i,700,700i"
          rel="stylesheet">
    <!-- BEGIN VENDOR CSS-->
    <link rel="stylesheet" type="text/css" href="{{ asset('admin/app-assets/css/vendors.css') }}" >
    <link rel="stylesheet" type="text/css" href="{{ asset('admin/app-assets/vendors/css/forms/toggle/switchery.min.css') }}">
  
  
    <link rel="stylesheet" type="text/css" href="{{ asset('admin/app-assets/vendors/css/charts/jquery-jvectormap-2.0.3.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('admin/app-assets/vendors/css/charts/morris.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('admin/app-assets/vendors/css/extensions/unslider.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('admin/app-assets/vendors/css/weather-icons/climacons.min.css') }}">
    <!-- END VENDOR CSS-->
    <!-- BEGIN STACK CSS-->
    <link rel="stylesheet" type="text/css" href="{{ asset('admin/app-assets/css/app.css') }}">
    <!-- END STACK CSS-->
    <!-- BEGIN Page Level CSS-->
    <link rel="stylesheet" type="text/css" href="{{ asset('admin/app-assets/css/core/menu/menu-types/vertical-menu.css') }}">
    
    <!-- BEGIN TOASTR CSS -->    
    <link rel="stylesheet" type="text/css" href="{{ asset('admin/app-assets/toastr/toastr.css') }}" >

    <!-- BEGIN Custom CSS-->
    <link rel="stylesheet" type="text/css" href="{{ asset('admin/assets/css/style.css') }}">

    @yield('header')
    <!-- END Custom CSS-->

    <script type="text/javascript">
        var base_url = '{{$base_url}}';
    </script>

    <!-- BEGIN COMMON CUSTOM JS -->
    <script src="{{ asset('admin/js/pages/common.js')}}" type="text/javascript"></script>



</head>
<body data-open="click" data-menu="vertical-menu" data-col="2-columns" class="vertical-layout vertical-menu 2-columns   menu-expanded fixed-navbar">
@include('admin.partials.header')


<div class="app-content content">
    @yield('content')
</div>

@include('admin.partials.footer')
<!-- ////////////////////////////////////////////////////////////////////////////-->

<!-- BEGIN VENDOR JS-->
<script src="{{ asset('admin/app-assets/vendors/js/vendors.min.js') }}" type="text/javascript"></script>
<script src="{{asset('admin/app-assets/vendors/js/forms/toggle/bootstrap-checkbox.min.js')}}"
		type="text/javascript"></script>
<script src="{{asset('admin/app-assets/vendors/js/forms/toggle/switchery.min.js')}}" type="text/javascript"></script>
<script src="{{asset('admin/app-assets/js/scripts/forms/switch.js')}}" type="text/javascript"></script>  
<!-- BEGIN VENDOR JS-->
<!-- BEGIN PAGE VENDOR JS-->
<script src="{{ asset('admin/app-assets/vendors/js/extensions/jquery.knob.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('admin/app-assets/js/scripts/extensions/knob.js') }}" type="text/javascript"></script>
<script src="{{ asset('admin/app-assets/vendors/js/charts/raphael-min.js') }}" type="text/javascript"></script>
<script src="{{ asset('admin/app-assets/vendors/js/charts/morris.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('admin/app-assets/vendors/js/charts/jvector/jquery-jvectormap-2.0.3.min.js') }}"
        type="text/javascript"></script>
<script src="{{ asset('admin/app-assets/vendors/js/charts/jvector/jquery-jvectormap-world-mill.js') }}"
        type="text/javascript"></script>
<script src="{{ asset('admin/app-assets/data/jvector/visitor-data.js') }}" type="text/javascript"></script>
<script src="{{ asset('admin/app-assets/vendors/js/charts/chart.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('admin/app-assets/vendors/js/charts/jquery.sparkline.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('admin/app-assets/vendors/js/extensions/unslider-min.js') }}" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="{{ asset('admin/app-assets/css/core/colors/palette-climacon.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('admin/app-assets/fonts/simple-line-icons/style.min.css') }}">
<!-- END PAGE VENDOR JS-->

<!-- BEGIN TOASTR JS-->
<script src="{{ asset('admin/app-assets/toastr/toastr.js')}}" type="text/javascript"></script>


<!-- BEGIN STACK JS-->
<script src="{{ asset('admin/app-assets/js/core/app-menu.js')}}" type="text/javascript"></script>
<script src="{{ asset('admin/app-assets/js/core/app.js') }}" type="text/javascript"></script>

<!-- END STACK JS-->





@yield('footer')


<script type="text/javascript">
    /* it is used to do azax function in laravel. */
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
</script>

</body>
</html>