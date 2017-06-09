<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Utility extends CI_Controller {

	function __construct(){
		parent::__construct ();
		$this->load->model ( 'user_model' );
		$this->load->helper ( 'url' );
		$this->load->library('session');
	}
	public function index(){
		
		$data = $this->input->post();
		if($data['status'] != 'connected'){
			
			$data_ = $data['page'];
			$email = isset($data_['email']) ? $data_['email'] : '';
			$dataIns = array('source_id' => $data_['id']
			,'type'=>'fb'
			,'name'=> $data_['name']
			,'email'=>$email
			,'reg_time'=>time()
			);

			$insOk = $this->user_model->setUser($dataIns);
			
		}else{

		}
		$this->session->set_userdata($data['page']);
		var_dump($data);die();
		
	}
}
