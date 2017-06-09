<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Process_controller extends CI_Controller {

	function __construct(){
		parent::__construct ();
		$this->load->model ( 'note_model' );
		$this->load->helper ( 'url' );
	}
	public function index(){
		
		// $link = 'http://vnexpress.net/tin-tuc/cong-dong/video/ke-gian-rach-tui-trom-do-giua-pho-ha-noi-khong-ai-dam-len-tieng-3503540.html?utm_source=home&utm_medium=box_congdong_home&utm_campaign=boxtracking';
		// echo '<pre>';
		// $tags = get_meta_tags($link);
		// var_dump($tags);
		// echo '</pre>';

// 		$data['note'] = 'link huong dan ghi vide https://mediatemple.net laf 
// https://mediatemple.net mong laf nos phasf how owif smoij thuws teen coisdf s
// heheh 
// ngoan lawms chwuhfwef
// http://www.mediatemple.net';`
// 		$pattern = '/(https?:\/\/([^\s]+))/im';
// 		$replacement = '<day roi>${1}</day roi>';
// 		echo preg_replace($pattern, $replacement, $data['note']);






		// $string = 'April 15, 2003';
		// $pattern = '/(\w+) (\d+), (\d+)/i';
		// $replacement = '${1}1,$2';
		// echo preg_replace($pattern, $replacement, $string);

// $filename = 'http://static.tinnhanhchungkhoan.vn/w660/Uploaded/Anh-Photoshop/2016/Nhan-Dinh/12/113_BCWP.jpg';

// 	$mimetype = false;
//     	// $mimetype = finfo_fopen($filename);
//     	echo '1';
//         // open with FileInfo
//     	$mimetype2 = getimagesize($filename);
//     	var_dump($mimetype2);
//     	 	echo '2';
//         // open with GD
//     	$mimetype3 = exif_imagetype($filename);
//     	var_dump($mimetype3);
//     	 	echo '3';
//        // open with EXIF
//        $mimetype4 = mime_content_type($filename);
//        var_dump($mimetype4);
//         	echo '4';
		$string = 'heheh http://static.tinnhanhchungkhoan.vn/w660/Uploaded/Anh-Photoshop/2016/Nhan-Dinh/12/113_BCWP.jpg hehehe
			into 
			http://static.tinnhanhchungkhoan.vn/w660/Uploaded/Anh-Photoshop/2016/Nhan-Din
			check

		';
		
		// $string = 'http://static.tinnhanhchungkhoan.vn/w660/Uploaded/Anh-Photoshop/2016/Nhan-Dinh/12/113_BCWP.jpg';
		$pattern = '/https?:\/\/[^\s]+/';
		$re = 'kien';
// $a = preg_replace($pattern,$re,$string); 
// var_dump($a);
// echo '===';
// var_dump($string);

$line = preg_replace_callback(
	        $pattern,
	        function ($matches) {
	        	$check_string = substr($matches[0],-3);

	        	switch ($check_string) {
	        		case 'jpg':
	        			return '<a class="img" href="'.$matches[0].'" target="_blank">'.$matches[0].'</a>';	
	        		
	        		default:
	        			return '<a href="'.$matches[0].'" target="_blank">'.$matches[0].'</a>';	
	        	}
	        	// if($check_string == 'jpg'){
	        	// 	return '<a href="'.$matches[0].'" target="_blank">'.$matches[0].'</a>';	
	        	// }else{
	        	// 	return '<a href="'.$matches[0].'" target="_blank">'.$matches[0].'</a>';	
	        	// }
	            
	        },
	      	$string
		);
var_dump($line);

		// $newstring = preg_replace_callback( 
  //   $pattern, 
  //   function($match) { 
  //   	if (strpos($match, 'jpg')){
  //   		$replacement = '<a class="image" href="${1}" target="_blank">${1}</a>';
  //   		return $replacement;
  //   	}else{
  //   		$replacement = '<a href="${1}" target="_blank">${1}</a>';
  //   		return $replacement;
  //   	}
  //   }, 
  //   $string 
  //   ); 
		









	}
	
}