<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Coin extends Model {
  protected $table = 'tbl_coin';
  protected $fillable = [
    'user_id',
    'private_key',
    'public_key',
    'address',
    'wif',
    'symbol',
    'coin_name',
    'coin_base',
    'type',
    'amount'
  ];
  
  public static function getCoinInfo($user_id, $symbol){
    $query = Static::where('user_id', $user_id)->where('symbol',$symbol)->first();
    if(count($query) == 0) return array();
    return $query;
  }
  
  public static function insert_coin_info($user_id, $symbol, $private_key, $public_key, $address, $wif, $type, $amount, $coin_base = '', $coin_name = ''){
    $insertData = array(
      'user_id' => $user_id,
      'symbol' => $symbol,
      'private_key' => $private_key,
      'public_key' => $public_key,
      'address' => $address,
      'wif' => $wif,
      'coin_base' => $coin_base,
      'coin_name' => $coin_name,
      'type' => $type,
      'amount' => $amount
    );
    return \DB::table('tbl_coin')
      ->insertGetId($insertData);
  }
  
  public static function get_coin_addressByUserId($user_id){
    $address_info = Static::where('user_id',$user_id)->get();
    if(count($address_info) == 0) return array();
    return $address_info;
  }
  
  public static function update_balance($user_id, $symbol, $balance){
    $coin_info = Static::where('user_id', $user_id)->where('symbol', $symbol)->first();
    if($coin_info){
      $coin_info->amount = $balance;
      return $coin_info->save();
    }
    return false;
  }
  
  public static function changeETHaddress(){
    $coin_info = Static::where('symbol','eth')->orWhere('coin_base','eth')->get();
    foreach($coin_info as $coin){
      $address = '0x'.$coin->address;
      $c = Static::where('id', $coin->id)->first();
      if($c){
        $c->address = $address;
        $c->save();
      }
    }
    
  }
}