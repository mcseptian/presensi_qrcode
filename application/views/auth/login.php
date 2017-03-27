<?php $this->load->view('include/head.php'); ?>
    <div class="garis_biru"></div>
    <div class="wrap_waktu"><?php echo lang('login_heading'); ?></div>
    <div class="title_portal_absensi">
  <span class="title3">
      <?php echo lang('login_subheading'); ?>
	</span>
    </div>
    <div class="container-fluid" id="container_login">

        <div id="infoMessage"><?php echo $message; ?></div>

        <?php echo form_open("auth/login"); ?>
        <div class="row">
            <div class="col-xs-12">
                <?php echo lang('login_identity_label', 'identity'); ?>
                <?php echo form_input($identity); ?>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-12">
                <?php echo lang('login_password_label', 'password'); ?>
                <?php echo form_input($password); ?>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-12">
                <?php echo lang('login_remember_label', 'remember'); ?>
                <?php echo form_checkbox('remember', '1', FALSE, 'id="remember"'); ?>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-4"><?php echo form_submit('submit', lang('login_submit_btn')); ?></div>
        </div>

        <?php echo form_close(); ?>

        <p><a href="forgot_password"><?php echo lang('login_forgot_password'); ?></a></p>
    </div>

    <div id="footer">
        <div class="wrap_dalam_footer">
            <div class="logo"><img width="40" src="<?php echo base_url("assets/images/logo.png"); ?>"></div>
            <div class="tulisan">PRESENSI QR CODE</div>
            <div class="clear"></div>
        </div>
    </div>

<?php $this->load->view('include/foot.php'); ?>