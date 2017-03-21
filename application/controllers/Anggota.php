<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
*
*/
class Anggota extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function index()
	{
		$this->load->view('anggota');
	}

}

?>
