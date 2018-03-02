<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Settings extends Model {

    protected $table = 'vb_settings';

    protected $fillable = [
        'set_field','set_value'
    ];


    public static function insertData($data){
        $insert_array = array(
            'set_field' => $data['field'],
            'set_value' => $data['value']
        );
        return Static::insertGetId($insert_array);
    }

    public static function updateInfo($data,$setId){
        return Static::where('set_id',$setId)
            ->update($data);
    }

    public static function getInfoById($id){
        return Static::
            select(\DB::raw('*'))
            ->where('set_id',$id)
            ->first();
    }
  
    public static function getInfoByfield($field){
        return Static::
            select(\DB::raw('*'))
            ->where('set_field',$field)
            ->first();
    }

}