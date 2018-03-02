<?php

namespace App\Http\Controllers;

use App\User;
use App\Model\Paymenthistory;
use App\Model\PmhVbvCode;
use App\Model\Settings;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Validator;

class PagesController extends Controller
{
	/**
	 * Show the profile for the given user.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function index(){
		return $this->_loadContent('client.pages.landing_page');
	}
	
   
}
?>