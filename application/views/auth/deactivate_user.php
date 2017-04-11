<?php $this->load->view('include/head.php'); ?>
<div class="garis_biru"></div>
<div class="wrap_waktu"><?php echo lang('deactivate_heading'); ?></div>
<div class="title_portal_absensi">
  <span class="title3">
  <?php echo sprintf(lang('deactivate_subheading'), $user->username); ?>
	</span>
</div>
<div id="container_login">

    <?php echo form_open("auth/deactivate/" . $user->id); ?>

    <div class="row">
        <div class="col-xs-2"><?php echo lang('deactivate_confirm_y_label', 'confirm'); ?></div>
        <input class="col-xs-2" style="margin-top: 15px;" type="radio" name="confirm" value="yes" checked="checked"/>
        <div class="col-xs-2"><?php echo lang('deactivate_confirm_n_label', 'confirm'); ?></div>
        <input class="col-xs-2" style="margin-top: 15px;" type="radio" name="confirm" value="no"/>
    </div>

    <?php echo form_hidden($csrf); ?>
    <?php echo form_hidden(array('id' => $user->id)); ?>
    <br/>
    <div class="col-xs-4 col-xs-push-2"><?php echo form_submit('submit', lang('deactivate_submit_btn')); ?></div>

    <?php echo form_close(); ?>
</div>

<div id="footer">
    <div class="wrap_dalam_footer">
        <div class="logo"><img width="40" src="<?php echo base_url("assets/images/logo.png"); ?>"></div>
        <div class="tulisan">PRESENSI QR CODE</div>
        <div class="clear"></div>
    </div>
</div>

<?php $this->load->view('include/foot.php'); ?>
