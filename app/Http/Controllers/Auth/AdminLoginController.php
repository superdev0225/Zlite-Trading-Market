<?php
namespace App\Http\Controllers\Auth;
use App\Admin;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
use Validator;
use Illuminate\Contracts\Auth\Guard;
//use Illuminate\Support\Facades\Auth;
use Session;
use Illuminate\Foundation\Auth\ThrottlesLogins;
use Illuminate\Foundation\Auth\AuthenticatesAndRegistersUsers;
class AdminLoginController extends Controller
{
    use AuthenticatesAndRegistersUsers, ThrottlesLogins;
    public function __construct()
    {
      //$this->middleware('guest:admin');
    }
  
    public function login(Request $request)
    {
      
      // Validate the form data
      
      $this->validate($request, [
        'username'   => 'required',
        'password' => 'required|min:4'
      ]);
      /*//////////////?????????????????????????
        !!!!!!!!!!!! database password must be bcrypt() !!!!!!!!!!!!!!!
      */
      // Attempt to log the user in
      if (Auth::guard('admin')->attempt(['username' => $request->input('username'), 'password' => $request->input('password'),'status'=>'Y'])) {
        // if successful, then redirect to their intended location
        return redirect()->intended(route('admin_index'));
      }
      // if unsuccessful, then redirect back to the login with the form data
      return redirect()->back()->withInput($request->only('username'));
    }
  
    public function logout(Request $request){
      Auth::guard('admin')->logout();
      return redirect()->route('admin');
    }
}