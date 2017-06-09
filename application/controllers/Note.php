<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Note extends CI_Controller {

	var $_SS;
	function __construct(){
		parent::__construct ();
		$this->load->model ( 'note_model' );
		$this->load->helper ( 'url' );
		$this->load->library('session');
		$this->_SSID = isset($_SESSION['id']) ? $_SESSION['id'] : 'unknow'; 
	}
	public function index(){
//		echo '<pre>';
//		var_dump($this->_SSID);
		// echo '<pre>';
		// var_dump($_SESSION);
//		echo '</pre>';
		$session = $this->session->userdata();
		$note_data = $this->note_model->getNote(0,5);
        $kien = 1;
		$this->load->view('view_note',$note_data);
	}
	public function detail(){

		// $this->template['header']   = $this->load->view('layout/header', $this->data, true);
  //   $this->template['left']   = $this->load->view('layout/left', $this->data, true);
  //   $this->template['middle'] = $this->load->view($this->middle, $this->data, true);
  //   $this->template['footer'] = $this->load->view('layout/footer', $this->data, true);
  //   $this->load->view('layout/front', $this->template);
		$data1['hehe'] = 'heheh1';
		$data['header'] = $this->load->view('include/header_html.php', $data1, true);
		$data['nav'] = $this->load->view('include/view_nav.php', array(), true);

		// $data_head['title'] = 'speechless';
		// $data_footer['footer'] = 'speechless';
		// $this->load->view('include/header.php',$data_head);
		// $this->load->view('include/footer.php',$data_footer);
		$this->load->view('view_note_detail',$data);
	}
	function set_note(){
		header('Access-Control-Allow-Origin: *'); 
		$data = $this->input->post();    // Catch values form url via POST Method
		// var_dump($data);die();
		$data['note'] = strip_tags($data['note']);
		$data['userID'] = $this->_SSID;
		$data['time'] = time();
		$data['raw_note'] = $data['note']; // backup note when need
		$pattern = '/(https?:\/\/([^\s]+))/im';
		$replacement = '<a href="${1}" target="_blank">${1}</a>';


		$data['note']= preg_replace_callback(
	        $pattern,
	        function ($matches) {
	        	$pos_jpg = strpos($matches[0], '.jpg');
	        	$pos_png = strpos($matches[0], '.png');
	        	$pos_video = strpos($matches[0], '.youtube.');

	        	if($pos_png || $pos_jpg ){
	        		return '<a class="img-a" href="'.$matches[0].'" target="_blank"><img class="main-img" src="'.$matches[0].'"></a>';	
	        	}

        		if($pos_video){
        			$video_id = explode("v=", $matches[0]); // For videos like http://www.youtube.com/watch?v=...
					if (empty($video_id[1]))
					    $video_id = explode("/v/", $link); // For videos like http://www.youtube.com/watch/v/..

					$video_id = explode("&", $video_id[1]); // Deleting any other params
					$video_id = $video_id[0];
        			return '<iframe width="100%" height="315" src="https://www.youtube.com/embed/'.$video_id.'" frameborder="0" allowfullscreen></iframe>';
        		}

        		return '<a href="'.$matches[0].'" target="_blank">'.$matches[0].'</a>';	
	        },
	      	$data['note']
		);
		
		
		// $data['note'] = preg_replace($pattern, $replacement, $data['note']);
		
		$result = $this->note_model->setNote($data);
		echo $data['note'];
	}

	function get_note(){
		$data = $this->input->post();
		$page = $data['page'];
		$note_data = $this->note_model->getNote($page,5);
		$array_reverse = array_reverse($note_data,true);
		echo json_encode($array_reverse);
	}
}
