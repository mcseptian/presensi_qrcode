<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Dialog extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->helper("url");
		$this->load->model("Pertemuan_model");
		$this->load->model("Admin_model");
	}

	public function kepastian_pertemuan()
	{
		$id_kelompok = $this->input->post("kelompok_pertemuan");

		$data["kelompok"] = $this->Pertemuan_model->select_kelompok($id_kelompok)->result();
		$data["waktu"] = $this->input->post("waktu");
		$data["tampilan_dialog"] = "kepastian_pertemuan";
		$this->load->view("dialog", $data);
	}

	public function buka_password($tujuan)
	{
		$data["tampilan_dialog"] = "buka_password";
		$data["tujuan"] = $tujuan;
		$this->load->view("dialog", $data);
	}

	public function error_pertemuan()
	{
		$data["tampilan_dialog"] = "error_pertemuan";
		$this->load->view("dialog", $data);
	}

	public function cek_password()
	{
		$pass = $this->input->post("password");

		$admin = $this->Admin_model->cek_password($pass)->row();
		$jumlah_admin = count($admin);

		if($jumlah_admin > 0){
			echo "1";
		}else{
			echo "0";
		}
	}

	public function salah_password()
	{
		$data["tampilan_dialog"] = "salah_password";
		$this->load->view("dialog", $data);
	}

	public function tutup_absensi()
	{
		$data["tampilan_dialog"] = "tutup_absensi";
		$this->load->view("dialog", $data);
	}
}

?>
