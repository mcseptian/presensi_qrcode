<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
* 
*/
class Admin extends CI_Controller
{	

	function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$this->load->view("admin");
	}

	public function login(){
		$this->load->model(Auth_model);
		
	}
}


?>