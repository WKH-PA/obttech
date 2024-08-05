<?php
	session_start();
	@header("Content-Type: text/html; charset=UTF-8");
	@header('X-XSS-Protection:0');
  	@date_default_timezone_set('Asia/Saigon');
	if($_SERVER['HTTP_HOST'] != 'localhost') error_reporting(0);


	$db_localhost 		 		= "localhost";
	$db_user 			 		= "webdemo5_2021_dem";
	$db_pass 			 		= 'Evf1pH4YUtK2MGVz';
	$db_data 			 		= "webdemo5_2021_dem";
	$_SESSION['sub_demo'] 		= "2021_anthuy/";
	$check_fl_domain 			= "webdemo5.pavietnam.vn";
	$cache_file   				= "on";
	$_SESSION['sub_demo_check'] = false;
	$_SESSION['thumuc']  		= $_SESSION['sub_demo']."datafiles";
	$php_vs 					= 7;


	include("function.php");

	
	if(!strpos($_SERVER['REQUEST_URI'],"myadmin") && $thongtin['is_https'] == 1) {
	    if(empty($_SERVER['HTTPS']) || $_SERVER['HTTPS'] == 'off'){
	        header("Location: https://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']);
	        exit();
	    }
	}
	
	$duongdantin = "datafiles";
	if(!is_dir('/'.$file_coder.'datafiles/cache')){
		@mkdir('/'.$file_coder.'datafiles/cache','0777');
	}
	if(!is_dir("../".$duongdantin)){
		@mkdir("../".$duongdantin,'0777');
	}
	// f_link301();
	if(!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] == 'on')  $fullpath       = 'https://'.$domain1ty;
else  $fullpath       = 'http://'.$domain1ty;
$fullpath_admin     = $fullpath."/myadmin/";
$auto_key_pass      = "wlh_2019";
$is_myadmin         = $motty == "myadmin" ? "on" : "off";
	
?>