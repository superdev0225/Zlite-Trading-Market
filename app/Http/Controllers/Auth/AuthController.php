<?php
namespace App\Http\Controllers\Auth;

use App\User;
use Session;
use Validator;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Foundation\Auth\ThrottlesLogins;
use Illuminate\Foundation\Auth\AuthenticatesAndRegistersUsers;

require 'vendor/autoload.php';
use Abraham\TwitterOAuth\TwitterOAuth;

define('CONSUMER_KEY', getenv('CONSUMER_KEY'));
define('CONSUMER_SECRET', getenv('CONSUMER_SECRET'));
define('OAUTH_CALLBACK', getenv('OAUTH_CALLBACK'));

class AuthController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Registration & Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users, as well as the
    | authentication of existing users. By default, this controller uses
    | a simple trait to add these behaviors. Why don't you explore it?
    |
    */

    use AuthenticatesAndRegistersUsers, ThrottlesLogins;

    /**
     * Where to redirect users after login / registration.
     *
     * @var string
     */
    protected $redirectTo = '/';
    protected $imap_server_arr = array();

    /**
     * Create a new authentication controller instance.
     *
     * @return void
     */
    public function __construct()
    {
    
       // $this->middleware($this->guestMiddleware(), ['except' => 'logout', 'getLogout']);
    }
    
    public function getLogout(){
      Auth::logout();
      Session::flush();
      return redirect('/');
    }
    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'email' => 'required|email|max:255|unique:users',
            'password' => 'required|min:6|',
        ]);
    }

     /**
     * Validate and create the user in the Database.
     *
     * @param RegistrationRequest $request
     * @param AppMailers $mailer
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postRegister(Request $request) {

      // Validate fname, lname,email, password and gender.
        $this->validate($request, [
          'first_name' => 'required',
          'last_name' => 'required',
          'email' => 'required|email|max:255|unique:users',
          'password' => 'required|min:6',
        ]);
        
        // Create the user in the DB.
        $user = User::create([
          'email' => $request->input('email'),
          'first_name' => $request->input('first_name'),
          'last_name' => $request->input('last_name'),
          'password' => bcrypt($request->input('password')),
          'gender' => $request->input('gender'),
          'age' => $request->input('age'),
          'status' => 'N',
          'user_type' => '0',
        ]);
      
      if($user)
      {
        echo 'success';exit;
      }
      else{
        $err_msg = "Registeration Failed. Please try again later.";
        echo $err_msg;
      }
    }
  
    /**
     * Login the user.
     *
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function postLogin(Request $request) {

        // Validate email and password.
        $this->validate($request, [
            'email'    => 'required|email',
            'password' => 'required|min:6'
        ]);
        
        if ($this->signIn($request)) {
          //var_dump($request->session()->all());
          //var_dump(Auth::user()->id);exit;
          return response()->json(['success'=>'success']);
        }
        
        
        $err_msg = 'Could not sign you in with those credentials.';

        return response()->json(['error'=>$err_msg]);
    }

    public function postTwitUrl(Request $request){
      // The TwitterOAuth instance
        $connection = new TwitterOAuth(CONSUMER_KEY,CONSUMER_SECRET);
        // Requesting authentication tokens, the parameter is the URL we will be redirected to
        $request_token = $connection->oauth('oauth/request_token', array('oauth_callback' => OAUTH_CALLBACK));
        
        /*
            response for the $request_token
            'oauth_token' => string 'icsdbAAAAAAA3zKnAAABYKQSJeE' (length=27)
            'oauth_token_secret' => string 'XaviTmTxJVGIbMyjeYNkVZ68glkGR7fT' (length=32)
            'oauth_callback_confirmed' => string 'true' (length=4)
        */
        // Saving them into the session
        $request->session()->put('oauth_token',$request_token['oauth_token']);
        $request->session()->put('oauth_token_secret',$request_token['oauth_token_secret']);
        //$request->session()->put('oauth_verifier',$request_token['oauth_verifier']);  
      
        // If everything goes well..
        if($request_token['oauth_callback_confirmed'] == true){
            // Let's generate the URL and redirect
            $url = $connection->url('oauth/authenticate', array('oauth_token' => $request_token['oauth_token']));
            //header('Location: '. $url);
            return response()->json(['authed'=>'success','url'=>$url]);
        } else {
            // It's a bad idea to kill the script, but we've got to know when there's an error.
            //die('Something wrong happened.');
            $err_msg = 'Could not sign you in with those credentials.';

            return response()->json(['authed'=>'error','msg'=>$err_msg]);
        }
    }
  
    
    public function postTwitLogin(Request $request){
      $oauth_token = $request->session()->get('oauth_token');
      $oauth_token_secret = $request->session()->get('oauth_token_secret');
      
      $register = $request->input('register');
      $oauth_verifier = $request->input('verifier');
      
      $connection = new TwitterOAuth(CONSUMER_KEY, CONSUMER_SECRET, $oauth_token, $oauth_token_secret);
      $access_token = $connection->oauth("oauth/access_token", array("oauth_verifier" => $oauth_verifier));
      $accessToken=$access_token['oauth_token'];
      $secretToken=$access_token['oauth_token_secret'];
      
      $connection = new TwitterOAuth(CONSUMER_KEY, CONSUMER_SECRET, $accessToken, $secretToken);
      
      //var_dump($connection); exit;
      
      if($connection)//->httpCode == '200'
      {
        /* getting the user info */
        $params = array('include_email' => 'true', 'include_entities' => 'false', 'skip_status' => 'true');
        $data = $connection->get('account/verify_credentials', $params);  // get the data 
        //var_dump($data); exit;
        $twt_id = $data->id; //twitter user id
        if(!isset($data->email)){
          return response()->json(['status'=>'error','message'=>'Login Faild']);
        }
        $twt_email = $data->email; //twitter user email
        $name = $data->name;
        
        $exist = User::getUserByEmail($twt_email);
        if($exist)
        {
          Auth::login($exist);
          Session::save();
          return response()->json(['status'=>'connected','message'=>'success']);
        }
        elseif($register)   /// registe new user
        {
           $user = User::create([
              'email' =>$twt_email,
              'first_name' => $name,
              'password' =>bcrypt('Twit_user_sj_Max'),
              'user_type' => 'T'
          ]);
          if($user)
          {
            $credit = ['email'=>$twt_email, 'password'=>'Twit_user_sj_Max', 'status'=>'Y'];
            if (Auth::attempt($credit)) {
                return response()->json(['status'=>'connected','message'=>'success']);
            }
          }
          return response()->json(['status'=>'error','message'=>'Register Failed']);
        }
        else{
          return response()->json(['status'=>'error','message'=>'Your Twitter account is not registered with Visionboard.']);
        }
        return response()->json(['status'=>'error','message'=>'Login Faild']);
      }
      
      return response()->json(['status'=>'error','message'=>'Login Faild']);
    }
    
  
    public function postFBLogin(Request $request)
    {
      $email = $request->input('email');
      $name = $request->input('name');
      $register = $request->input('register');
      
      $exist = User::getUserByEmail($email);
      if($exist)
      {
        Auth::login($exist);
        Session::save();
        return response()->json(['status'=>'connected','message'=>'success']);
      }
      elseif($register)   /// registe new user
      {
         $user = User::create([
            'email' =>$email,
            'first_name' => $name,
            'password' =>bcrypt('FB_user_sj_Max'),
            'user_type' => 'F',
            'status'=>'Y',
            'gender'=>'M',
        ]);
        if($user)
        {
          $credit = ['email'=>$email, 'password'=>'FB_user_sj_Max', 'status'=>'Y'];
          if (Auth::attempt($credit)) {
              return response()->json(['status'=>'connected','message'=>'success']);
          }
        }
        return response()->json(['status'=>'error','message'=>'Register Failed']);
      }
      else{
        return response()->json(['status'=>'error','message'=>'Your Facebook account is not registered with Visionboard.']);
      }
      return response()->json(['status'=>'error','message'=>'Login Faild']);
    }
    
    public function post_forgot_password(Request $request)
    {
      
    }
  
    public function reset_password(Request $request)
    {
      $email = $request->input('email');
      $code = $request->input('code');
      $pass = $request->input('pass');
      
      $res = User::updatePassword($email, $code, $pass);
      if($res)
      {
          $err_msg  ="Password Successfully Changed";
          return response()->json(array('status'=>'success'));
       }
      else
      {
        return response()->json(array('status'=>'error','message'=>'Password Reset failed.'));
      }
    }
    
   
    protected function signIn(Request $request) {
      return Auth::attempt($this->getCredentials($request));
    }
    /**
     * Get the user credentials to login.
     *
     * @param Request $request
     * @return array
     */
    protected function getCredentials(Request $request) {
        return [
            'email'    => $request->input('email'),
            'password' => $request->input('password'),
            //'status' => 'Y'
        ];
    }
 
  
}
