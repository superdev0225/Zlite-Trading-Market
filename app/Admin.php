<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Admin extends Authenticatable
{
    protected $guard = 'admin';
    protected $table = 'tbl_admin';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'username', 'password', 'status', 'role'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
    ];
    
    public static function getAllAdminInfo(){
      return Static::get();
    }
  
    public static function insertData($username, $password, $status){
      $insertData = array(
        'username' => $username,
        'password' => bcrypt($password),
        'status' => $status
      );
      return \DB::table('dmb_admin_login')
        ->insertGetId($insertData);
    }
  
    public static function deleteData($id){
      return Static::where('intId', $id)->delete();
    }
  
    public static function updateStatus($id, $status){
      return Static::where('intId', $id)->update(['status' => $status]);
    }
}