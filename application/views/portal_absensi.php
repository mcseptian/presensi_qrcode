<?php
	include 'include/head.php';
	$date_eng = array("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun", "Jan", "Feb", "Mar", "Apr", "Mei", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec");
	$date_ind = array("Senin", "Selasa", "Rabu", "Kamis", "Jum'at", "Sabtu", "Minggu", "Januari", "Februari", "Maret", "April", "Mei", "Juni", "Juli", "Agustus", "September", "Oktober", "November", "Desember");
?>

<div id="bg_dialog"></div>
<div id="tempat_box_dialog"></div>

<div class="garis_biru"></div>
<div class="title_portal_absensi">
	<span class="title1">Portal Presensi</span>
	<span class="title2">
		Pertemuan <span class="bold"> kelompok <span id="pertemuan_kelompok"><?php echo $this->session->userdata("kelompok"); ?></span></span>,
		pada <span class="bold" id="tanggal"><?php echo str_replace($date_eng, $date_ind, date('D, d M Y', $this->session->userdata("waktu"))); ?></span>
	</span>
</div>

<div id="container_absen">
	<div id="content_mulai_absen">

		<div id="btn_untuk_absen" onclick="mulai_absen()">Klik untuk Absen</div>
		<div class="catatan_untuk_absen">Siapkan <span class="bold">gambar barcode</span> identitas Anda</div>
	</div>
	<div id="content_proses_absen">
		<div class="qrcode_wrap">
			<input type="button" onclick="backToMulaiAbsen()" value="kembali">
			<div id="mainbody">
			    <div id="outdiv"></div>
			    <input type="hidden" id="result">
			</div>
			<canvas id="qr-canvas" width="800" height="600"></canvas>
		</div>
		<!--<input id="id_anggota_saat_absensi"><input type="button" onclick="proses_absen()" value="Absen">-->
	</div>
</div>

<div id="container_hasil_absen"></div>

<div id="btn_tutup_absen" onclick="tutup_absensi()">Tutup Absen</div>

<div id="footer"><div class="wrap_dalam_footer">
	<div class="logo"><img width="50" src="<?php echo base_url("assets/images/logo.png"); ?>"></div>
	<div class="tulisan">PRESENSI QR CODE</div>
	<div class="clear"></div>
</div></div>



<?php include 'include/foot.php'; ?>
