

<script src="<?php echo base_url('assets/libraries/jquery.min.js'); ?>"></script>
<script src="<?php echo base_url('assets/custom/js/main.js'); ?>"></script>


<script type="text/javascript">
	

	// untuk background dialog apabila diklik akan close dialog
	$("#bg_dialog").click(function(){ close_dialog() });

	//Jika button buat pertemuan diklik
	$("#btn_create_pertemuan").click(function(){
		open_dialog();
		var kelompok = $("#id_kelompok_pertemuan").val(); //pemerikasaan pilihan kelompok
		if(kelompok == 'null'){ // jika belum memilih kelompok
			$("#tempat_box_dialog").load("<?php echo site_url("index.php/dialog/error_pertemuan"); ?>"); 
		}else{

			//Jika pilihan kelompok sudah dipilih
			var waktu = $("#id_waktu").val();
			$.ajax({
				type:"POST",
				url:"<?php echo site_url("index.php/dialog/kepastian_pertemuan"); ?>",
				data: $("#form_pertemuan").serialize(),
				success: function(result){
					$("#tempat_box_dialog").html(result);			
				}
			});
			
		}
	});

	//open password
	function open_password(tujuan){
		$("#tempat_box_dialog").fadeOut(0300);
		setTimeout(function(){
			$("#tempat_box_dialog").html("");
			$("#tempat_box_dialog").fadeIn(0300);
			$("#tempat_box_dialog").load("<?php echo site_url("index.php/dialog/buka_password"); ?>/"+tujuan);
		}, 0400);
	}
	
	function input_pertemuan(){
		$.ajax({
			type:"POST",
			url:"<?php echo site_url("index.php/pertemuan/buat_pertemuan"); ?>",
			data: $("#form_pertemuan").serialize(),
			success: function(result){
				window.location.replace("<?php echo site_url("index.php/absensi"); ?>")
			}
		});
	}

	//Jika submit password
	function cek_password(tujuan){
		var pass = $("#password_admin_dialog").val();
		$.ajax({
			type:"POST",
			url:"<?php echo site_url("index.php/dialog/cek_password"); ?>",
			data: "username="+pass,
			success: function(result){
				if(result==1){
			
					if(tujuan == "untuk_pertemuan"){
						input_pertemuan();	
					}else{
						akhiri_absensi();
					}
					
				}else{
					$("#tempat_box_dialog").fadeOut(0200);
					setTimeout(function(){
						$("#tempat_box_dialog").html("");
						$("#tempat_box_dialog").fadeIn(0200);
						$("#tempat_box_dialog").load("<?php echo site_url("index.php/dialog/salah_password"); ?>");	
					}, 0300);
				}
			}
		});
	}

	function tutup_absensi(){
		open_dialog();
		$("#tempat_box_dialog").load("<?php echo site_url("index.php/dialog/tutup_absensi"); ?>");	
	}	

	function akhiri_absensi(){
		window.location.replace("<?php echo site_url("index.php/absensi/tutup_absensi"); ?>")	
	}



	function mulai_absen(){
		$("#content_mulai_absen").fadeOut(0300);
		$("#content_proses_absen").fadeIn(0850);
		load_qrcode(); //untuk load qrcode
	}
	function backToMulaiAbsen(){
		$("#content_proses_absen").fadeOut(0250);
		$("#content_mulai_absen").fadeIn(0300);
		//setTimeout(function(){
			setimg();
		//}, 0300);
	}

	function proses_absen(){
		$("#content_proses_absen").fadeOut(0300);
		$("#container_hasil_absen").hide();
		$("#container_hasil_absen").html("");

		var id_anggota = $("#result").val();
		//alert(id_anggota);
		$.ajax({
			type:"POST",
			url:"<?php echo site_url("index.php/absensi/proses_absen"); ?>",
			data:"id_anggota="+id_anggota,
			success: function(result){
				$("#container_hasil_absen").html(result);
				$("#container_hasil_absen").fadeIn(0400);
				setTimeout(function(){
					$("#container_hasil_absen").fadeOut(0300);
					$("#content_mulai_absen").fadeIn(0850);
				}, 4500);
			}
		});
	}



</script>

</body>
</html>