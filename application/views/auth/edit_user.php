<?php $this->load->view('include/head.php'); ?>
    <div class="garis_biru"></div>
    <div class="wrap_waktu"><?php echo lang('edit_user_heading'); ?></div>
    <div class="title_portal_absensi">
    <span class="title3">
     <?php echo lang('edit_user_subheading'); ?>
	</span>
    </div>
    <div id="infoMessage"><?php echo $message; ?></div>
    <div class="container" id="container_form">
        <?php echo form_open(uri_string()); ?>

        <div class="row">
            <div class="col-xs-6">
                <?php echo lang('edit_user_fname_label', 'first_name'); ?> <br/>
                <?php echo form_input($first_name); ?>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-6">
                <?php echo lang('edit_user_lname_label', 'last_name'); ?> <br/>
                <?php echo form_input($last_name); ?>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-6">
                <?php echo lang('edit_user_company_label', 'company'); ?> <br/>
                <?php echo form_input($company); ?>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-6">
                <?php echo lang('edit_user_phone_label', 'phone'); ?> <br/>
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
                <?php echo lang('edit_user_password_label', 'password'); ?> <br/>
                <?php echo form_input($password); ?>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-6">
                <?php echo lang('edit_user_password_confirm_label', 'password_confirm'); ?><br/>
                <?php echo form_input($password_confirm); ?>
            </div>
        </div>
        <div class="row">
            <?php if ($this->ion_auth->is_admin()): ?>

            <h3 class="col-xs-6"><?php echo lang('edit_user_groups_heading'); ?></h3>
        </div>

    <?php foreach ($groups as $group): ?>
        <div class="row">
            <label class="form-group col-xs-6 pull-left">
                <?php
                $gID = $group['id'];
                $checked = null;
                $item = null;
                foreach ($currentGroups as $grp) {
                    if ($gID == $grp->id) {
                        $checked = ' checked="checked"';
                        break;
                    }
                }
                ?>
                <input type="checkbox" name="groups[]"
                       value="<?php echo $group['id']; ?>"<?php echo $checked; ?>>
                <?php echo htmlspecialchars($group['name'], ENT_QUOTES, 'UTF-8'); ?>
            </label>
        </div>
    <?php endforeach ?>
    <?php endif ?>

        <?php echo form_hidden('id', $user->id); ?>
        <?php echo form_hidden($csrf); ?>

        <div class="row">
            <div class="col-xs-2"><?php echo form_submit('submit', lang('edit_user_submit_btn')); ?></div>
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