<?php
include "include/header.php";
$date_eng = array("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun", "Jan", "Feb", "Mar", "Apr", "Mei", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec");
$date_ind = array("Senin", "Selasa", "Rabu", "Kamis", "Jum'at", "Sabtu", "Minggu", "Januari", "Februari", "Maret", "April", "Mei", "Juni", "Juli", "Agustus", "September", "Oktober", "November", "Desember");
?>

    <div id="bg_dialog"></div>
    <div id="tempat_box_dialog"></div>

    <div class="garis_biru"></div>

    <div class="wrap_waktu"><?php echo str_replace($date_eng, $date_ind, date('D, d M Y')); ?></div>

    <div id="container_create_pertemuan">
        <div id="box_create_pertemuan">
            <div class="wrap_dalam_box_create_pertemuan">
                <form id="form_pertemuan">
                    <div class="option_kelompok_pertemuan">
                        <select id="id_kelompok_pertemuan" name="kelompok_pertemuan">
                            <option value="null">Kelompok Pertemuan</option>
                            <?php
                            foreach ($daftar_kelompok as $kelompok) {
                                echo "<option value='$kelompok->id'>$kelompok->description</option>";
                            }
                            ?>
                        </select>
                    </div>
                    <input type="hidden" id="id_waktu" name="waktu" value="<?php echo time(); ?>">
                    <input type="button" name="submit_create_pertemuan" class="btn_create_pertemuan"
                           id="btn_create_pertemuan" value="BUAT PERTEMUAN">
                </form>
            </div>
        </div>
        <div class="catatan_create_pertemuan"><span class="bold">Buat pertemuan</span> untuk melakukan proses presensi
        </div>
    </div>

    <div id="footer">
        <div class="wrap_dalam_footer">
            <div class="logo"><img width="40" src="<?php echo base_url("assets/images/logo.png"); ?>"></div>
            <div class="tulisan">PRESENSI QR CODE</div>
            <div class="clear"></div>
        </div>
    </div>


<?php include "include/foot.php"; ?>