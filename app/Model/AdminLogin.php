<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class AdminLogin extends Model {
  protected $table = 'vb_admin_login';
  protected $fillable = [
      'username',
      'password',
      'status',
      'createdate',
      'role'
    ];
  
 
}