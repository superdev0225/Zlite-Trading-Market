<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Txhistory extends Model {
  protected $table = 'tbl_txhistory';
  protected $fillable = [
    'user_id',
    'symbol',
    'tx_id',
    'tx_type',
    'tx_value',
    'tx_fee',
    'tx_fee_for',
    'tx_fee_unit',
    'tx_from',
    'tx_to',
    'tx_ss_id',
    'tx_time'
  ];
  
  public static function searchTxhistory($symbol=null,$txtype=null,$user_id=null,$from=null, $to=null){
    $query = Static::where('id','>',0);
    if($symbol != null){
      $query = $query->where('symbol',$symbol);
    }
    if($txtype != null){
      $query = $query->where('tx_type',$txtype);
    }
    if($user_id != null){
      $query = $query->where('user_id',$user_id);
    }
    if($from != null){
      $query = $query->where('tx_time','>=',$from);
    }
    if($to != null){
      $query = $query->where('tx_time','=<',$to);
    }
    
    $query = $query->get();
    if(count($query) == 0) return array();
    return $query;
  }
  
  public static function getTxhistoryByUID($user_id){
    $query = Static::where('user_id',$user_id)->orderBy('tx_time', 'desc')->get();
    if(count($query) == 0) return array();
    return $query;
  }
  
  public static function getTxhistoryByUIDandSBL($user_id, $symbol){
    $query = Static::where('user_id', $user_id)->where('symbol', $symbol)->orderBy('tx_time', 'desc')->get();
    if(count($query) == 0) return array();
    return $query;
  }
  
  public static function getTxhistoryByUIDandSBLandTXID($user_id, $symbol, $txid){
    $query = Static::where('user_id', $user_id)->where('symbol', $symbol)->where('tx_id', $txid)->first();
    if(count($query) == 0) return array();
    return $query;
  }
  
  public static function insert_coin_info($user_id, $symbol, $tx_id, $tx_type, $tx_value, $tx_fee, $tx_time, $tx_from = '', $tx_to = '', $tx_fee_for = '', $tx_fee_unit = '', $tx_ss_id = ''){
    $insertData = array(
      'user_id' => $user_id,
      'symbol' => $symbol,
      'tx_id' => $tx_id,
      'tx_type' => $tx_type,
      'tx_value' => $tx_value,
      'tx_fee' => $tx_fee,
      'tx_time' => $tx_time,
      'tx_from' => $tx_from,
      'tx_to' => $tx_fee_for,
      'tx_fee_for' => $tx_fee_for,
      'tx_fee_unit' => $tx_fee_unit,
      'tx_ss_id' => $tx_ss_id
    );
    return \DB::table('tbl_txhistory')
      ->insertGetId($insertData);
  }
  
  public static function insert_coin_info_ByArray($data){
    return \DB::table('tbl_txhistory')
      ->insertGetId($data);
  }
  
}