@extends('client.main_noheader')

@section('content')
 <main class="col-xs-12 noPadding welcome-page register-page">
         
      <div class="container">
        
        <div class="main-dv" style="margin-top: calc(25vh - 110px);">
          <div class="login-vision-logo">
              <img src="{{asset('client/images/vision_logo.png')}}" >
          </div>
          
          <div class="main-form">  
            <div class="col-xs-12" style="padding-left:40px;padding-right:40px;">
              <div class="row title" style="margin-bottom: 20px;">
                <div class="col-md-12"><span class="m-f-f-bold">REGISTRATION</span></div>
              </div>
              <form id="register_frm">
                <div class="row">
                  <div class="col-sm-6" style="text-align: -webkit-center;">
                    <div class="input-group">
                      <span class="input-group-addon br-left border-right-0 bg-white"><i class="fa fa-fw fa-user-o"></i></span>
                      <input type="text" class="form-control border-left-0 br-right" placeholder="First Name" id="first_name" name="first_name" required>  
                    </div>
                  </div>
                  <div class="col-sm-6" style="text-align: -webkit-center;">
                    <div class="input-group">
                      <span class="input-group-addon br-left border-right-0 bg-white"><i class="fa fa-fw fa-user-o"></i></span>
                      <input type="text" class="form-control border-left-0 br-right" placeholder="Last Name" id="last_name" name="last_name" required>  
                    </div>
                  </div>
                </div>
                
                <div class="row">
                  <div class="col-sm-6" style="text-align: -webkit-center;">
                    <div class="input-group">
                      <span class="input-group-addon br-left border-right-0 bg-white"><i class="fa fa-fw fa-user-o"></i></span>
                      <select class="form-control border-left-0 br-right" id="gender" name="gender" required> 
                        <option value="">Gender</option>
                        <option value="M">Male</option>
                        <option value="F">Female</option>
                      </select>
                    </div>
                  </div>
                  <div class="col-sm-6" style="text-align: -webkit-center;">
                    <div class="input-group">
                      <span class="input-group-addon br-left border-right-0 bg-white"><i class="fa fa-fw fa-user-o"></i></span>
                      <input type="text" class="form-control border-left-0 br-right" placeholder="Age" name="age" id="age" required>  
                    </div>
                  </div>
                </div>
                
                <div class="row">
                  <div class="col-sm-6" style="text-align: -webkit-center;">
                    <div class="input-group">
                      <span class="input-group-addon br-left border-right-0 bg-white"><i class="fa fa-fw fa-envelope-o"></i></span>
                      <input type="email" class="form-control border-left-0 br-right" placeholder="E-mail" id="email" name="email" required>  
                    </div>
                  </div>
                  <div class="col-sm-6" style="text-align: -webkit-center;">
                    <div class="input-group">
                      <span class="input-group-addon br-left border-right-0 bg-white"><i class="fa fa-fw fa-lock"></i></span>
                      <input type="password" class="form-control border-left-0 br-right" placeholder="Password" id="password" name="password" required>  
                    </div>
                  </div>
                </div>
                
                
                <div class="row">
                  <div class="col-md-12" style="text-align: -webkit-center;">
                    <button class="button-radius" type="button" id="register_btn">Sign up</button>
                  </div>
                </div>
                
                <div class="row">
                  <div class="col-md-12">
                    <span class="description m-f-f-light">When you register you agree with our
                    <span class="description m-f-f-light">Privacy Policy and Terms Of</span> use</span> 
                  </div>
                </div>
                
                <div class="row social_register">
                  <div class="col-sm-4" style="text-align: -webkit-center;">
                    <button class="button-radius" type="button" id="register_tw"><i class="fa fa-twitter"></i>With Twitter</button>
                  </div>
                  <div class="col-sm-4" style="text-align: -webkit-center;">
                    <button class="button-radius" type="button" id="register_fb" onclick="Login()"><i class="fa fa-facebook"></i>With Facebook</button>
                  </div>
                  <div class="col-sm-4" style="text-align: -webkit-center;">
                    <button class="button-radius" type="button" id="register_gp"><i class="fa fa-google-plus"></i>With Google</button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>  
        
      </div>
            
        

<script type="text/javascript">
var fb_key = '{{getenv('FB_APP_KEY')}}';
</script>
      
<script type="text/javascript" src="{{asset('client/js/mainjs/register.js')}}"></script>
@stop