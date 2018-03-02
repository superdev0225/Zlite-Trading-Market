<?php

namespace App;

use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
  //protected $table = 'vb_user';
  /**
   * The attributes that are mass assignable.
   *
   * @var array
   */
  protected $fillable = [
    'email','password','machine_num','auth_status','created_at','status','remember_token',
  ];

  /**
   * The attributes that should be hidden for arrays.
   *
   * @var array
   */
  protected $hidden = [
      'password',
  ];
  
  public static function getAllUser($status=null,$from=null,$to=null){
    $query = Static::where('id','>',0);
    
    if($status !== null) $query = $query -> where('status','=',$status);
    if($from != null) $query = $query->where('created_at','>=',$from)->where('created_at','<=',$to);
    $user = $query->get();
    
    if(count($user) ==0) return array();
    return $user;  
  }
  
  public static function getAllBlock($from=null,$to=null){
    $query = Static::where('status','=',0);
    if($from != null) $query = $query->where('updated_at','>=',$from)->where('updated_at','<=',$to);
    $user = $query->get();
    
    if(count($user) ==0) return array();
    return $user;  
  }
  
  

  public static function getUserByMachine_num($machine_num){
    $user = Static::where('machine_num','=',$machine_num)->first();
    if(count($user) == 0) return array();
    return $user;
  }

  public static function registerByMachine_num($machine_num){
    $token = sha1($machine_num.time());
    $insertData = array(
      'machine_num' => $machine_num,
      'auth_status' => 0,
      'remember_token' => $token
    );
    return \DB::table('users')
      ->insertGetId($insertData);
  }

  public static function getUserById($intUserId){
    $query = Static::where('id','=', $intUserId)->first();
     if($query)
     {
       return $query;
     }
     return 0;
  }
  
  
  public static function getUserByUserIdandPassword($user_id, $password){
    $query = Static::where('id', $user_id)->where('password', $password)->first();
    if(count($query) == 0) return array();
    return $query;
  }
  
  public static function getUserByEmailandPassword($email, $password){
    $query = Static::where('email', $email)->where('password', $password)->first();
    if(count($query) == 0) return array();
    return $query;
  }
  
  public static function updateUser($user_id, $update_info){
    
    return Static::where('id',$user_id)
            ->update($update_info);
  }
  
  
    public static function setAuthCodeByEmail($email, $code)
    {
      $user = Static::where('email','=', $email)->first();
      if($user){
        $user->auth_code = $code;
        $user->updated_at = date('Y-m-d H:i:s');
        return $user->save();
      }
      return false;
    }
    public static function updatePassword($email, $pass)
    {
      $user = Static::where('email','=', $email)->first();
      if($user){
        $user->password = bcrypt($pass);
        $user->updated_at = date('Y-m-d H:i:s');
        return $user->save();
      }
      return false;
    }
    public static function getUserByFname($fname){
       $query = Static::where('first_name','=', $fname)->get();
       if(count($query))
       {
         return $query[0];
       }
       return 0;
    }
    public static function getUserByEmail($email)
    {
      $query = Static::where('email','=', $email)->first();
       if($query)
       {
         return $query;
       }
       return 0;
    }
  
    public static function getFullUserInfo(){
      return \DB::table('dmb_client as a')
        ->select(\DB::raw('a.id as userId, a.first_name as fname, a.email as email, a.user_type as user_type, a.status as user_status, date_format(a.created_at,"%d-%m-%Y") as createdate , date_format(a.updated_at "%d-%m-%Y")'))
        ->orderby('a.id','desc')
        ->get();
    }
  
    
  
    
    public static function updateStatus($intUserId, $status)
    {
      $user = Static::where('id','=', $intUserId)->first();
      if($user){
        $user->status = $status;
        $user->updated_at = date('Y-m-d H:i:s');
        return $user->save();
      }
      return false;
    }
  
    public static function updateInfo($data,$userId){
      return Static::
        where('id',$userId)
        ->update($data);
    }
  
    public static function deleteUser($intUserId){
      return Static::where('id', $intUserId)->delete();
    }
}
