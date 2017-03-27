<?php $this->load->view('include/head.php'); ?>
    <div class="garis_biru"></div>
    <div class="wrap_waktu"><?php echo lang('index_heading'); ?></div>
    <div class="title_portal_absensi">
        <span class="title3 breadcrumb"><?php echo lang('index_subheading'); ?></span>
    </div>
    <div class="container-fluid" id="container_index">
        <div id="infoMessage"><?php echo $message; ?></div>

        <table class="table table-responsive">
            <tr>
                <th style="text-align: center;"><?php echo lang('index_fname_th'); ?></th>
                <th style="text-align: center;"><?php echo lang('index_lname_th'); ?></th>
                <th style="text-align: center;"><?php echo lang('index_email_th'); ?></th>
                <th style="text-align: center;"><?php echo lang('index_groups_th'); ?></th>
                <th style="text-align: center;"><?php echo lang('index_status_th'); ?></th>
                <th style="text-align: center;"><?php echo lang('index_action_th'); ?></th>
            </tr>
            <?php foreach ($users as $user): ?>
                <tr>
                    <td><?php echo htmlspecialchars($user->first_name, ENT_QUOTES, 'UTF-8'); ?></td>
                    <td><?php echo htmlspecialchars($user->last_name, ENT_QUOTES, 'UTF-8'); ?></td>
                    <td><?php echo htmlspecialchars($user->email, ENT_QUOTES, 'UTF-8'); ?></td>
                    <td>
                        <?php foreach ($user->groups as $group): ?>
                            <?php echo anchor("auth/edit_group/" . $group->id, htmlspecialchars($group->name, ENT_QUOTES, 'UTF-8')); ?>
                            <br/>
                        <?php endforeach ?>
                    </td>
                    <td><?php echo ($user->active) ? anchor("auth/deactivate/" . $user->id, lang('index_active_link')) : anchor("auth/activate/" . $user->id, lang('index_inactive_link')); ?></td>
                    <td><?php echo anchor("auth/edit_user/" . $user->id, 'Edit'); ?></td>
                </tr>
            <?php endforeach; ?>
        </table>

        <p><?php echo anchor('auth/create_user', lang('index_create_user_link')) ?>
            | <?php echo anchor('auth/create_group', lang('index_create_group_link')) ?></p>
        <br><br>
    </div>
    <div id="btn_tutup_absen" onclick="logout_auth()">Logout</div>
    <div id="footer">
        <div class="wrap_dalam_footer">
            <div class="logo"><img width="40" src="<?php echo base_url("assets/images/logo.png"); ?>"></div>
            <div class="tulisan">PRESENSI QR CODE</div>
            <div class="clear"></div>
        </div>
    </div>
<?php $this->load->view('include/foot.php'); ?>