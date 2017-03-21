<?php

    switch ($status) {
        case 'success':
                ?><div id="content_success_absen">
					<div class="title1">Nama <span id="nama_absener"><?php echo $nama_anggota ?></span> telah tercatat</div>
					<div class="title2">pada pukul <span id="pukul_absen" class="bold"><?php echo date("H:i"); ?></span></div>
				</div>
				<audio controls autoplay style="display:none">
					<source src="<?php echo base_url("assets/sound/music1.mp3"); ?>">
				</audio>
				<?php
            break;
        
        case 'sudah_tercatat':
            ?><div id="content_sudah_tercatat_absen">
				<div class="title1">Nama <span id="nama_absener"><?php echo $nama_anggota ?></span> <span class="bold">SUDAH</span> tercatat</div>
			</div>
			<audio controls autoplay style="display:none">
				<source src="<?php echo base_url("assets/sound/music2.mp3"); ?>">
			</audio>
			<?php
        break;

        case 'fail':
                ?><div id="content_fail_absen">Maaf! Anda belum terdaftar sebagai Anggota..</div>
				<audio controls autoplay style="display:none">
					<source src="<?php echo base_url("assets/sound/music3.mp3"); ?>">
				</audio>
				<?php
            break;
    }

?>

<script type="text/javascript">
var marginTop_container_hasil_absen = $("#container_hasil_absen").height() / 2 * -1;
$("#container_hasil_absen").css({"margin-top":marginTop_container_hasil_absen});
</script>