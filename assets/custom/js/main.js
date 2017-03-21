
//closed dialog
function close_dialog(){
	$("#tempat_box_dialog").fadeOut(0200);
	$("#bg_dialog").fadeOut(0300);
	$("#tempat_box_dialog").html("");
}

//open dialog
function open_dialog(){
	$("#bg_dialog").fadeIn(0300);
	$("#tempat_box_dialog").fadeIn(0300);
}

var marginTop_container_absen = $("#container_absen").height() / 2 * -1;
$("#container_absen").css({"margin-top":marginTop_container_absen});
