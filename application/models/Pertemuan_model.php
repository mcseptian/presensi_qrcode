<?php 

class Pertemuan_model extends CI_Model {

	function __construct()
	{
		parent::__construct();
	}

	function select_all_kelompok()
	{
		$this->db->select("*");
		$this->db->from("tbl_kelompok");

		return $this->db->get();
	}

	function select_kelompok($id)
	{
		$this->db->select("*");
		$this->db->from("tbl_kelompok");
		$this->db->where("id",$id);

		return $this->db->get();
	}

	function create_pertemuan($data)
	{
		$this->db->insert("tbl_pertemuan", $data);
	}

	function select_pertemuan_byTime($waktu)
	{
		$this->db->select("*");
		$this->db->from("tbl_pertemuan");
		$this->db->where("waktu",$waktu);

		return $this->db->get();
	}

}

?>