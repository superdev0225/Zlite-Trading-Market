<?php

namespace App\Http\Controllers;

use App\User;
use App\Model\Coin;
use App\Model\Txhistory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use App\Http\Controllers\Controller;
use App\Http\Traits\PaymentTrait;
use App\Model\Paymenthistory;
use App\Model\PmhComment;
use App\Model\Settings;
use Validator;

class AdminController extends Controller
{
    use PaymentTrait;


  public function index()
  {
		
		$total_clients = User::getAllUser();
		$Authusers = User::getAllUser(1);
		$blockUsers = User::getAllUser(0);
		
		$coin_currency = file_get_contents("https://api.coinmarketcap.com/v1/ticker/?limit=100");
		$coin_currency = json_decode($coin_currency, true);
		$currencyarr = array();
		
		foreach($coin_currency as $key =>$val){
			if(isset($this->cryto_decimals_arr[strtolower($val['symbol'])])){
				$currencyarr[] = $val;
			}
		}
		
		$chartinfo = array('label'=>array(),'total'=>array() , 'fill'=>array(), 'submit'=>array());
		for($i = 6; $i >= 0; $i --){
				$d = date('Y-m-d',strtotime('-'.$i.' days'));
				$f = $d.' 00:00:00';
				$t = $d.' 23:59:59';
				$register_cnt = User::getAllUser(null,$f,$t);
				$block_cnt = User::getAllBlock($f,$t);

				$chartinfo['label'][] = $d;
				$chartinfo['registered'][] = count($register_cnt);
				$chartinfo['blocked'][] = count($block_cnt);
				$chartinfo['submit'][] = 0;

		}
		
		$to = date('Y-m-d 23:59:59');
		$from = date('Y-m-d',strtotime('-7 days'));
		$register_cnt_w = User::getAllUser(null,$from,$to);
		$block_cnt_w = User::getAllBlock($from,$to);
		
		$this->data['new_reg_users'] = $Authusers;
		$this->data['new_block_users'] = $blockUsers;

		$this->data['total_clients_cnt'] = count($total_clients);
		$this->data['total_clients_percent'] = 100;
		$this->data['finished_clients_cnt'] = count($Authusers);
		$this->data['finished_clients_percent'] = (count($Authusers)/count($total_clients)) * 100;
		$this->data['submit_clients_cnt'] =  count($blockUsers);
		$this->data['submit_clients_percent'] = (count($blockUsers)/count($total_clients)) * 100;
		$this->data['nonsubmit_clients_cnt'] = count($blockUsers);
		$this->data['nonsubmit_clients_percent'] = (count($blockUsers)/count($total_clients)) * 100;

		$this->data['total_clients_cnt_w'] = count($total_clients);
		$this->data['regist_clients_cnt_w'] = count($register_cnt_w);
		$this->data['block_clients_cnt_w'] = count($block_cnt_w);

		$this->data['chartinfo'] = $chartinfo;
		return $this->_loadContent('admin.pages.welcome');
  }
	
	public function searchWelcomeCurrency(Request $request){
		$coin_currency = file_get_contents("https://api.coinmarketcap.com/v1/ticker/?limit=100");
		$coin_currency = json_decode($coin_currency, true);
		$currencyarr = array();
		
		foreach($coin_currency as $key =>$val){
			if(isset($this->cryto_decimals_arr[strtolower($val['symbol'])])){
				$currencyarr[] = $val;
			}
		}
		return response()->json(['status'=>'success','currencyinfo'=>$currencyarr]);
	}
	
	public function indexlogin(){
		return $this->_loadContent('admin.pages.login');
	}

  public function userManagement(){
		$user = User::getAllUser();
		$this->data['users'] = $user;
		return $this->_loadContent('admin.pages.user_manage');
	}

	public function balanceManagement(){
		$users = User::getAllUser();
		$balance_arr = $this->_getTotalUserAmount();
		
		foreach($users as $key => $val){
			$users[$key]['balance'] = array();
			if(isset($balance_arr[$val->id])){
				$users[$key]['balance'] = $balance_arr[$val->id];
			}
		}
		
		$this->data['users'] = $users;
		return $this->_loadContent('admin.pages.balance_manage');
	}
	
	public function searchBanceInfo(Request $request){
		$users = User::getAllUser();
		$balance_arr = $this->_getTotalUserAmount();
		
		foreach($users as $key => $val){
			$users[$key]['balance'] = array();
			if(isset($balance_arr[$val->id])){
				$users[$key]['balance'] = $balance_arr[$val->id];
			}
		}
		return response()->json(['status'=>'success','users'=>$users]);
	}
	
	
	public function balancedetail($userid=0){
		if($userid == 0){
			redirect($this->site_baseurl . 'balance');
		}
		$user = User::getUserById($userid);
		//$coin_infos = Coin::get_coin_addressByUserId($userid);
		$coin_infos = array(array('symbol'=>'BTC','amount'=>'0.000232034'),array('symbol'=>'ETH','amount'=>'0.02325576034'),array('symbol'=>'ZXL','amount'=>'0.6632034'));
		
		$this->data['balance'] = $coin_infos;
		$this->data['user'] = $user;
		return $this->_loadContent('admin.pages.balancedetail_manage');
	}
	
	public function searchBanceDetailInfo(Request $request){
		$userid = $request->input('userid');
		//$user = User::getUserById($userid);
		$coin_infos = Coin::get_coin_addressByUserId($userid);
		return response()->json(['status'=>'success','balance'=>$coin_infos]);
	}
	
	public function _getTotalUserAmount(){
		$user_info = User::getAllUser();
		$symbols_str = '';
		foreach($this->cryto_decimals_arr as $key => $value){
			if($key == 'btc'){
				$symbols_str .= strtoupper($key);
			}else{
				$symbols_str .= ','.strtoupper($key);
			}
		}
		$coin_price = file_get_contents("https://min-api.cryptocompare.com/data/pricemulti?fsyms=".$symbols_str."&tsyms=BTC,USD,EUR");
		$coin_price = json_decode($coin_price, true);
		$user_amount = array();
		foreach($user_info as $user){
			$coin_infos = Coin::get_coin_addressByUserId($user->id);
			$btc_amount = 0;
			$usd_amount = 0;
			$eur_amount = 0;
			foreach($coin_infos as $coin_info){
				$btc_amount += floatVal(floatVal($coin_info->amount)*floatVal($coin_price[strtoupper($coin_info->symbol)]['BTC']));
				$usd_amount += floatVal(floatVal($coin_info->amount)*floatVal($coin_price[strtoupper($coin_info->symbol)]['USD']));
				$eur_amount += floatVal(floatVal($coin_info->amount)*floatVal($coin_price[strtoupper($coin_info->symbol)]['EUR']));
			}
			$user_amount[$user->id] = array('btc' => $btc_amount, 'usd'=> $usd_amount, 'eur' => $eur_amount);
		}
		return $user_amount;
	}
	
	public function txhManagement(){
		$user = User::getAllUser();
		$txhs = Txhistory::searchTxhistory();
		
		$userparse = array();
		foreach($user as $value){
			$userparse[$value->id] = $value;	
		}
		
		$coinarr = array();
		foreach($this->cryto_decimals_arr as $key=>$val){
			$coinarr[] = $key;
		}
		
		foreach($txhs as $key=> $value){
			$txhs[$key]['machine_num'] = '';
			$txhs[$key]['email'] = '';
			if(isset($userparse[$value->user_id])){
				$txhs[$key]['machine_num'] = $userparse[$value->user_id]->machine_num;
				$txhs[$key]['email'] = $userparse[$value->user_id]->email;
			}
		}
	
		$this->data['users'] = $user;
		$this->data['coinarr'] = $coinarr;
		$this->data['txhs'] = $txhs;
		
		return $this->_loadContent('admin.pages.txh_manage');
	}
	
	
	public function searchTxhInfo(Request $request){
		$txh_type = $request->input('txh_type');
		$txh_symbol = $request->input('txh_symbol');
		$sel_email = $request->input('sel_email');
		if($txh_type == 'all'){
			$txh_type = null;
		}
		if($txh_symbol == 'all'){
			$txh_symbol = null;
		}
		
		$user = User::getAllUser();
		$seluserid =  null;
		
		$userparse = array();
		foreach($user as $value){
			$userparse[$value->id] = $value;	
			if($value->email == $sel_email){
				$seluserid = $value->id;		
			}
		}
		
		if($sel_email == ''){
			$seluserid = null;
		}
		
		$txhs = Txhistory::searchTxhistory($txh_symbol,$txh_type,$seluserid);
		foreach($txhs as $key=> $value){
			$txhs[$key]['machine_num'] = '';
			$txhs[$key]['email'] = '';
			if(isset($userparse[$value->user_id])){
				$txhs[$key]['machine_num'] = $userparse[$value->user_id]->machine_num;
				$txhs[$key]['email'] = $userparse[$value->user_id]->email;
			}
		}
		return response()->json(['status'=>'success','txhs'=>$txhs]);
		
	}
	
	
	public function updateClientStatus(Request $request){
		$email = $request->input('email');
		$status = $request->input('status');
		
		$user = User::getUserByEmail($email);
		if(!isset($user['id'])){
			return response()->json(['status'=>'error']);
		}
		$userid = $user['id'];
		User::updateStatus($userid, $status);
		return response()->json(['status'=>'success']);
	}
	
	public function updateClentAuth(Request $request){
		$email = $request->input('email');
		$email_old = $request->input('email_old');
		$pass = $request->input('password');
		
		$user = User::getUserByEmail($email_old);
		if(!isset($user['id'])){
			return response()->json(['status'=>'error']);
		}
		$userid = $user['id'];
		
		$user_new = User::getUserByEmail($email);
		if(!isset($user_new['id']) || $email == $email_old){
			//new email
			$userinfo = array('email'=>$email,'password'=>$pass,'updated_at'=>date('Y-m-d H:i:s'));
			User::updateUser($userid,$userinfo);
			return response()->json(['status'=>'success']);
		}else{
			return response()->json(['status'=>'error','msg'=>'Your new email already exist.']);
		}	
	}
	
	
}











