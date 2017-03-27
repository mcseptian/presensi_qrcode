<?php $this->load->view('include/head.php'); ?>
    <div class="garis_biru"></div>
    <div class="wrap_waktu"><?php echo lang('create_user_heading'); ?></div>
    <div class="title_portal_absensi">
  <span class="title3">
   <?php echo lang('create_user_subheading'); ?>
	</span>
    </div>
    <div id="infoMessage"><?php echo $message; ?></div>
    <div id="container_form" class="container-fluid">

        <?php echo form_open("auth/create_user"); ?>


        <div class="row">
            <div class="col-xs-6">
                <?php echo lang('create_user_fname_label', 'first_name'); ?> <br/>
                <?php echo form_input($first_name); ?>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-6">
                <?php echo lang('create_user_lname_label', 'last_name'); ?> <br/>
                <?php echo form_input($last_name); ?>
            </div>
        </div>
        <div class="row">
            <?php
            if ($identity_column !== 'email') {
                echo '<div class="col-xs-6">';
                echo lang('create_user_identity_label', 'identity');
                echo '<br />';
                echo form_error('identity');
                echo form_input($identity);
                echo '</div>';
            }
            ?>
        </div>
        <div class="row">
            <div class="col-xs-6">
                <?php echo lang('create_user_email_label', 'email'); ?> <br/>
                <?php echo form_input($email); ?>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-6">
                <?php echo lang('create_user_company_label', 'company'); ?> <br/>
                <?php echo form_input($company); ?>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-6">
                <?php echo lang('create_user_phone_label', 'phone'); ?> <br/>
                <?php echo form_input($phone); ?>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-6">
                <?php echo lang('create_user_year_label', 'year'); ?> <br/>
                <?php echo form_input($year); ?>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-6">
                <?php echo lang('create_user_faculty_label', 'faculty'); ?> <br/>
                <?php echo form_input($faculty); ?>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-6">
                <?php echo lang('create_user_major_label', 'major'); ?> <br/>
                <?php echo form_input($major); ?>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-6">
                <?php echo lang('create_user_password_label', 'password'); ?> <br/>
                <?php echo form_input($password); ?>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-6">
                <?php echo lang('create_user_password_confirm_label', 'password_confirm'); ?> <br/>
                <?php echo form_input($password_confirm); ?>
            </div>
        </div>
        <br/>
        <div class="row">
            <div class="col-xs-2"><?php echo form_submit('submit', lang('create_user_submit_btn')); ?></div>
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