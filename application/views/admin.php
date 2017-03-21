<?php include "include/head.php"; ?>

<div class="container_login_admin">
	<form action="<?php echo site_url("admin/login"); ?>" method="post">
		<div class=""><input type="text" name="username" class="input-full input1" placeholder="Username"></div>
		<div class=""><input type="password" name="password" class="input-full input1" placeholder="Password"></div>
		<div class=""><input type="submit" value="Login" class="btn btn-full btn_login" name="submitLogin"></div>
	</form>
</div>

<?php include "include/foot.php"; ?>