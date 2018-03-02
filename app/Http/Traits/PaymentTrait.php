<?php
namespace App\Http\Traits;

use App\Model\Paymenthistory;
use App\Model\PmhComment;
use App\Model\PmhVbvCode;
use App\User;
trait PaymentTrait {


    public function getAllPaymentHistory(){

        $pmh_arr = array();
        $comment_arr = array();
        $code_arr = array();
        $user_arr = array();

        $pmhs = Paymenthistory::orderBy('pmh_id')->get();
        $comments = PmhComment::all();
        $codes = PmhVbvCode::all();
        $users = User::all();

        foreach($comments as $item) {
            $comment_arr[$item->pmh_id] = $item;
        }

        foreach($users as $item) {
            $user_arr[$item->intId] = $item;
        }

        foreach($codes as $item) {

            $code_arr[$item->pmh_id][] = $item;
        }



        foreach($pmhs as $item) {
            $item['comment'] = isset($comment_arr[$item->pmh_id]) ? $comment_arr[$item->pmh_id] : array();
            $item['code'] = isset($code_arr[$item->pmh_id]) ? $code_arr[$item->pmh_id] : array();
            $item['client'] = isset($user_arr[$item->pmh_client_id]) ? $user_arr[$item->pmh_client_id] : array();

            $pmh_arr[] = $item;
        }

        $return_arr = array();
        for($i=count($pmh_arr)-1;$i>=1;$i--){
            $return_arr[] = $pmh_arr[$i];
        }
        return $return_arr;
    }


}