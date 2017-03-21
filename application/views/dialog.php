<?php
	$date_eng = array("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun", "Jan", "Feb", "Mar", "Apr", "Mei", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec");
	$date_ind = array("Senin", "Selasa", "Rabu", "Kamis", "Jum'at", "Sabtu", "Minggu", "Januari", "Februari", "Maret", "April", "Mei", "Juni", "Juli", "Agustus", "September", "Oktober", "November", "Desember");

	switch($tampilan_dialog){
		case "kepastian_pertemuan":
			?><div id="box_dialog_kepastian_pertemuan" class="box_dialog">
				<div class="wrap_text">Apakah Anda yakin membuat pertemuan kelompok
					<span id="nama_kelompok_dialog" class="bold"><?php foreach ($kelompok as $k) {echo $k->nama;} ?></span>
					pada <span class="bold" id="tanggal_dialog"><?php echo str_replace($date_eng, $date_ind, date('d M Y',$waktu)); ?></span>?
				</div>
				<btn class="btn_tidak_dialog" onclick="close_dialog()">Tidak</btn>
				<btn class="btn_ya_dialog" onclick="open_password('untuk_pertemuan')">Ya</btn>
				<div class="clear"></div>
			</div> <?php
		break;

		case "buka_password":
			?><div id="box_dialog_password" class="box_dialog">
				<div class="wrap_text">
					<input type="password" id="password_admin_dialog" class="input_pass_dialog" placeholder="Masukkan Password">
					<input type="btn" id="submit_password_dialog" class="btn_submit_dialog" value="OK" onclick="cek_password('<?php echo $tujuan; ?>')">
				</div>
			</div> <?php
		break;

		case "error_pertemuan":
			?><div id="box_dialog_error_pertemuan" class="box_dialog">
				<div class="wrap_text">Kelompok pertemuan harus dipilih terlebih dahulu!</div>
				<btn class="btn_tidak_dialog" style="width:100%;" onclick="close_dialog()">OK kembali!</btn>
				<div class="clear"></div>
			</div> <?php
		break;

		case "salah_password":
			?><div id="box_dialog_salah_password" class="box_dialog">
				<div class="wrap_text">Maaf password Anda salah!</div>
				<btn class="btn_tidak_dialog" style="width:100%;" onclick="close_dialog()">OK Fine!</btn>
				<div class="clear"></div>
				<audio controls autoplay style="display:none"><source src="<?php echo base_url("assets/sound/music3.mp3"); ?>"></audio>
			</div> <?php
		break;

		case "tutup_absensi":
			?><div id="box_dialog_tutup_absensi" class="box_dialog">
				<div class="wrap_text">Anda akan menutup portal presensi
					<span id="nama_kelompok_dialog" class="bold">kelompok <?php echo $this->session->userdata("kelompok"); ?></span>
					<!--pada <span class="bold" id="tanggal_dialog"><?php echo str_replace($date_eng, $date_ind, date('d M Y',$this->session->userdata("waktu"))); ?></span> ?-->
				</div>
				<btn class="btn_tidak_dialog" onclick="close_dialog()">Tidak</btn>
				<div class="btn_ya_dialog" onclick="open_password('untuk_absensi')">Ya</div>
				<div class="clear"></div>
			</div> <?php
		break;

	}

 ?>


<script type="text/javascript">
	var marginTop_tempat_box_dialog = $("#tempat_box_dialog").height() / 2 * -1;
	var marginLeft_tempat_box_dialog = $(".box_dialog").width() / 2 * -1;
	$("#tempat_box_dialog").css({"width":$(".box_dialog").width(), "margin-left":marginLeft_tempat_box_dialog, "margin-top":marginTop_tempat_box_dialog});
</script>
