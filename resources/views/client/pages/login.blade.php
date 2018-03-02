@extends('client.main_noheader')

@section('content')
 <main class="col-xs-12 noPadding welcome-page login-page">
         
      <div class="container">
        
        <div class="main-dv" style="margin-top: calc(25vh - 110px);">
          <div class="login-vision-logo">
              <img src="{{asset('client/images/vision_logo.png')}}" >
          </div>
          
          <div class="main-form">  
            <div class="left col-xs-12">
              <div class="back_link" >
                <a class="m-f-f-regular" href="{{$base_url}}"><i class="fa fa-long-arrow-left"></i> go back</a>
              </div>
              <div class="row title" style="margin-bottom: 20px;">
                <div class="col-md-12"><span class="m-f-f-bold">LOGIN</span></div>
              </div>
              <form id="login_frm">
                <div class="row">
                  <div class="col-md-12" style="text-align: -webkit-center;">
                    <div class="input-group" style="width:75%">
                      <span class="input-group-addon br-left border-right-0 bg-white"><i class="fa fa-fw fa-user-o"></i></span>
                      <input type="email" class="form-control border-left-0 br-right" placeholder="E-mail" id="email" name="email">  
                    </div>
                  </div>
                </div>
                
                <div class="row">
                  <div class="col-md-12" style="text-align: -webkit-center;">
                    <div class="input-group" style="width:75%">
                      <span class="input-group-addon br-left border-right-0 bg-white"><i class="fa fa-fw fa-lock"></i></span>
                      <input type="password" class="form-control border-left-0 br-right" placeholder="Password" id="password" name="password">  
                    </div>
                  </div>
                </div>
                
                <div class="row">
                  <div class="col-md-12" style="text-align: -webkit-center;">
                    <button class="button-radius" type="button" id="login_btn">Login</button>
                  </div>
                </div>
                
                <div class="row" style="margin-bottom:50px;">
                  <div class="col-md-12"><a href="#" id="forget_pass"><span class="description m-f-f-light">Forgot your password?</span></a></div>
                </div>
                
                <div clas="row">
                  <div class="col-md-12"><a href="{{$base_url}}register" id="toregister_btn"><span class="description m-f-f-light">Don't have an account?</span> <span class="description m-f-f-regular">Create One</span></span></a></div>
                </div>
              </form>
            </div>
            
            <div class="right col-xs-12">
              
              <div class="row title">
                <div class="col-md-12"><span class="m-f-f-bold">ALWAYS STAY ON TRACK</span></div>
              </div>
              
              <div class="row" style="height:280px">
                <div class="col-md-12">
                    <span class="description m-f-f-regular">
                      <p>Log-in to your account to update your vision.  </p>

                      <p>You have to keep the fairtale alive!</p>
                    </span>
                </div>
              </div>
              
              <div class="row" style="margin-bottom: 20px; ">
                <div class="col-md-12" style="text-align:-webkit-center;">
                  <button class="button-radius btn1" id="goto_blog">Go to our blog</button>
                </div>
              </div>
            </div>
          </div>
        </div>  
        
      </div>
            
        

<script type="text/javascript">
</script>
      
<script type="text/javascript" src="{{asset('client/js/mainjs/login.js')}}"></script>
@stop