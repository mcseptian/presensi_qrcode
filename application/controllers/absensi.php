<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Absensi extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->helper("url");
		$this->load->model("Absensi_model");
	}

	public function index()
	{
		$have_meeting = $this->session->userdata("mempunyai_pertemuan");
		if(!$have_meeting){
			redirect(site_url("index.php/pertemuan"));
		}else{
			$this->load->view('portal_absensi');
		}
	}

	public function tutup_absensi()
	{
		$this->session->sess_destroy();
		redirect(site_url(""));
	}		

	public function proses_absen()
	{
		$data["id_anggota"] = $this->input->post("id_anggota");
		$anggota = $this->Absensi_model->cek_anggota($data["id_anggota"])->row();

		if(count($anggota) > 0){

			$data["id_pertemuan"] = $this->session->userdata("id_pertemuan");
			
			$cek_absen = $this->Absensi_model->cek_absen($data["id_anggota"], $data["id_pertemuan"])->row();
			if(count($cek_absen) > 0){
				$data["status"] = "sudah_tercatat";
			}else{
				$data["waktu"] = time();
				$this->Absensi_model->absen($data);
				$data["status"] = "success";
			}

			$data["nama_anggota"] = $anggota->nama;

			$this->load->view("hasil_absensi",$data);

		}else{
			$data["status"] = "fail";
			$this->load->view("hasil_absensi",$data);
		}
	}	
}

