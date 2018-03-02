@extends('client.main')

@section('content')
<section>
<style>
  
  .padding {
font-size: 17px !important;
margin-bottom: 0 !important;
padding-bottom: 10px !important;
padding-left: 30px !important;
padding-right: 35px !important;
padding-top: 10px !important;
}

.user,.password{left:21px;}
.form-control {

padding: 6px 25px;
}

textarea{resize:none;}
</style>

<div class="login_body">
  <div class="container">
   <div class="row" style="margin-top:50px;">
    <form id="pass_reset" method="post">
        <input type="hidden" name="email" value="{{$email}}">
        <input type="hidden" name="code" value="{{$auth_code}}">
  <div class="content login_page">
    <div class="form_box">
      <h2>Generate Password</h2>
      <p id="error" style="font-weight: bold;color: red;">
      </p>
      <div class="field_outer">
        <div class="password"></div>
        <input name="pass" id="pass" type="password" placeholder="Enter Password" required/>
      </div>
      <div class="field_outer">
        <div class="password"></div>
        <input name="pass1" id="pass1" type="password"  placeholder="Repeat Password" required/>
      </div>
      
      <div class="dark_blue"><button type="button" onclick="set_new_password()">Submit</button></div>
      
    </div>
    
    </div>
    </form>
</div>
  </div>
</div>

<script type="text/javascript">
  function set_new_password()
    {
    var firstpassword=$("#pass").val(); 
    var secondpassword= $("#pass1").val(); 
    if(firstpassword == '' || secondpassword == '')
    {
      $('#error').html('Please fill password and confirm password field.')
    }
    else if(firstpassword != secondpassword)
    {
      $('#error').html('Wrong secondpassword Entered,insert secondpassword again.')
    }
    else if(firstpassword == secondpassword){
      var frm_post = $("#pass_reset");
      if(frm_post.valid()){
        $.ajax({
          type: "POST",
          url: base_url+"/reset_password",
          dataType:"json",
          data: frm_post.serialize(),
          success: function(data) {
          if(data.status == 'success')
            {
              location.href=base_url+'/login';
            }
          else
          {
             $('#error').html(data.message);
          }
          }
        });
      }
    }
  }
  </script>
@stop