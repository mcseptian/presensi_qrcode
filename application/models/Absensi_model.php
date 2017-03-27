<?php

class Absensi_model extends CI_Model
{

    function __construct()
    {
        parent::__construct();
    }

    function cek_anggota($id)
    {
        $this->db->select("*");
        $this->db->from("users");
        $this->db->where("username", $id);

        return $this->db->get();
    }

    function absen($data)
    {
        $this->db->insert("tbl_kehadiran", $data);
    }

    function cek_absen($id_anggota, $id_pertemuan)
    {
        $this->db->select("*");
        $this->db->from("tbl_kehadiran");
        $this->db->where("id_anggota", $id_anggota);
        $this->db->where("id_pertemuan", $id_pertemuan);

        return $this->db->get();
    }

}

?>