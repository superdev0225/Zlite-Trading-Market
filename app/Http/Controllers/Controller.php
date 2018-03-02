<?php

namespace App\Http\Controllers;

use Auth;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesResources;

class Controller extends BaseController
{
    use AuthorizesRequests, AuthorizesResources, DispatchesJobs, ValidatesRequests;
    protected $user;
    protected $site_baseurl;
    protected $data;
    protected $upload_baseurl;
    protected $admin;
    /**
     * Make a constructor to initialize Auth check.
     */
    public function __construct() {
        $this->admin = Auth::guard('admin')->user();
        $this->site_baseurl = config('app.site_url');
        $this->data = array();
        $this->upload_baseurl =  $_SERVER['DOCUMENT_ROOT'];
        
        view()->share('base_url', $this->site_baseurl);
        view()->share('admin', $this->admin);
      
    }
  
    public function _loadContent($url){
      return view($url)->with($this->data);
    }

    function mysql_escape($inp){ 
        if(is_array($inp)) return array_map(__METHOD__, $inp);

        if(!empty($inp) && is_string($inp)) { 
            return str_replace(array('\\', "\0", "\n", "\r", "'", '"', "\x1a"), array('\\\\', '\\0', '\\n', '\\r', "\\'", '\\"', '\\Z'), $inp); 
        } 

        return $inp; 
    }
    
    public function curl_post_request($url, $data) 
    {
        $ch = curl_init($url);

        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

        $content = curl_exec($ch);

        curl_close($ch);
        return $content;
    }
    
}
