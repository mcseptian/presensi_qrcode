<?php $this->load->view('include/head.php'); ?>
    <div class="garis_biru"></div>
    <div class="wrap_waktu"><?php echo lang('forgot_password_heading'); ?></div>
    <div class="title_portal_absensi">
  <span class="title3">
  <?php echo sprintf(lang('forgot_password_subheading'), $identity_label); ?>
	</span>
    </div>

    <div id="container_login" class="container-fluid">

        <?php echo form_open("auth/forgot_password"); ?>
        <div class="row">
            <div class="col-xs-12">
                <label
                    for="identity"><?php echo(($type == 'email') ? sprintf(lang('forgot_password_email_label'), $identity_label) : sprintf(lang('forgot_password_identity_label'), $identity_label)); ?>
                </label>
                <?php echo form_input($identity); ?>
            </div>
        </div>
        <br/>
        <div class="row">
            <div class="col-xs-4"><?php echo form_submit('submit', lang('forgot_password_submit_btn')); ?></div>
        </div>
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