<?php
	
class Admin_model extends CI_Model
{
	
	function __construct()
	{
		parent::__construct();
	}

	function cek_password($pass){
		$this->db->select("*");
		$this->db->from("users");
		$this->db->where("username", $pass);
		$this->db->where("active", 1);

		return $this->db->get();
	}
}

?>