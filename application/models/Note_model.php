<?php
class Note_model extends CI_Model {

	var $table;
	public function __construct(){
		$this->load->database();
		$this->table = 'post';
	}
	
	/*$track is page */
	public function getNote($track, $count = '4'){
		
// 		echo $track;
// 		echo '<br/>';
// 		echo '===================';
		$start = $track * $count + $track;
		
		$query = $this->db->select('SQL_CALC_FOUND_ROWS *', FALSE);
		$query = $this->db->order_by("id", "desc");
// 		$query = $this->db->get($this->table,$count);
		$query = $this->db->get($this->table,$count, $start);
		$data['data'] = $query->result_array();
		// var_dump($query);die();
		$query = $this->db->query('SELECT FOUND_ROWS() AS `Count`');
		$data['current_page'] = ceil($query->row()->Count/$count);
		
// 		var_dump($data);die();
		
		
		
		
		return $data;
	}
	public function setNote($data){
		// var_dump($data);die();
		$result = $this->db->insert($this->table, $data);
		
		
		
// 		$query = $this->db->set($this->table,$data);
// 		// 		var_dump($query);die();
// 		$data = $query->row_array();
// 		$result = $this->db->query($query);
// 		// 		var_dump($data);die();
		return $result;
	}
	
}