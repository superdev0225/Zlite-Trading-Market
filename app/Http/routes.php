<?php
header('Access-Control-Allow-Origin: *');
header( 'Access-Control-Allow-Headers: Authorization, Content-Type' );
/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

//Route::group(['middlewareGroups' => ['web']], function () {

/******************************* Get the Using Page *****************************/
Route::get('/', 'PagesController@index');
    

/******************************* Admin login  ***************************************/

/* get */
Route::get('admin/login',['uses' => 'AdminController@indexlogin','as'=>'admin']);
Route::get('administration', ['uses' => 'AdminController@index','as'=>'admin_index','middleware' =>['guest:admin']]);
Route::get('admin/user', ['uses'=>'AdminController@userManagement', 'middleware' =>['guest:admin']]);
Route::get('admin/balance', ['uses'=>'AdminController@balanceManagement', 'middleware' =>['guest:admin']]);
Route::get('admin/balancedetail/{userid}', ['uses'=>'AdminController@balancedetail', 'middleware' =>['guest:admin']]);
Route::get('admin/txh', ['uses'=>'AdminController@txhManagement', 'middleware' =>['guest:admin']]);
Route::get('admin/logout', ['uses' => 'Auth\AdminLoginController@logout','as'   => 'auth.admin.logout']);

/* post */
Route::post('admin/searchTxhInfo',['uses'=>'AdminController@searchTxhInfo','middleware'=>['guest:admin']]);
Route::post('admin/searchBanceInfo',['uses'=>'AdminController@searchBanceInfo','middleware'=>['guest:admin']]);
Route::post('admin/searchBanceDetailInfo',['uses'=>'AdminController@searchBanceDetailInfo','middleware'=>['guest:admin']]);
Route::post('admin/searchWelcomeCurrency',['uses'=>'AdminController@searchWelcomeCurrency','middleware'=>['guest:admin']]);
Route::post('admin/login', ['uses' => 'Auth\AdminLoginController@login','as'   => 'auth.admin.login']);
Route::post('admin/update_client_st_post',['uses'=>'AdminController@updateClientStatus','middleware'=>['guest:admin']]);
Route::post('admin/update_client_auth_post',['uses'=>'AdminController@updateClentAuth','middleware'=>['guest:admin']]);


