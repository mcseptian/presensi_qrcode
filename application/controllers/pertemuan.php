<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Pertemuan extends CI_Controller
{

    function __construct()
    {
        parent:: __construct();
        $this->load->model("Pertemuan_model");
        $this->load->helper("url");

    }

    public function index()
    {
        $have_meeting = $this->session->userdata('mempunyai_pertemuan');
        if (!$have_meeting) {
            $data["daftar_kelompok"] = $this->Pertemuan_model->select_all_kelompok()->result();
            $this->load->view("buat_pertemuan_baru", $data);
        } else {
            redirect(site_url('absensi'));
        }

    }

    public function buat_pertemuan()
    {
        $data["id_kelompok"] = $this->input->post("kelompok_pertemuan");
        $data["waktu"] = time();
        $this->Pertemuan_model->create_pertemuan($data);

        $pertemuan = $this->Pertemuan_model->select_pertemuan_byTime($data["waktu"])->row();
        $kelompok = $this->Pertemuan_model->select_kelompok($data["id_kelompok"])->row();

        $array_sess = array(
            'id_pertemuan' => $pertemuan->id,
            'kelompok' => $kelompok->description,
            'waktu' => $data["waktu"],
            'mempunyai_pertemuan' => true
        );

        $this->session->set_userdata($array_sess);
    }
}

