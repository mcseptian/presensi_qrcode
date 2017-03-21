<?php
	
class Admin_model extends CI_Model
{
	
	function __construct()
	{
		parent::__construct();
	}

	function cek_password($pass){
		$this->db->select("*");
		$this->db->from("tbl_anggota");
		$this->db->where("password", $pass);
		$this->db->where("status", 1);

		return $this->db->get();
	}
}

?>