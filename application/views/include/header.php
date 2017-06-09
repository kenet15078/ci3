<?php
$url = $this->config->base_url(); 
$current_url = current_url();
// var_dump($current_url);die();
if($_SERVER['SERVER_NAME'] == '10.0.0.58'){
 $url = 'http://10.0.0.58/ci3/';
 $current_url = str_replace('localhost', '10.0.0.58', current_url());
}
if($_SERVER['SERVER_NAME'] != 'localhost'){
  // var_dump($_SERVER['SERVER_NAME']);die();
 $url = 'http://'.$_SERVER['SERVER_NAME'].'/ci3/';
 $current_url = str_replace('localhost', $_SERVER['SERVER_NAME'], current_url());
}

?>