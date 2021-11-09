<?php
require('config/config.php');
if (isset($_POST['login'])){
	$user = $_POST['username'];
	$pass = $_POST['password'];
	
	$sql ="select * from `member` where muser='{$user}' AND mpassword='{$pass}';";
	$rs = mysqli_query($link,$sql) or die(mysqli_error($link));
	$data = mysqli_fetch_array($rs);
	$mid = $data['mid'];
	$u = $data['muser'];
	$p = $data['mpassword'];
	
	if($user == $u && $pass == $p){
		setcookie('user', $u, time() + (86400 * 30), "/");
		setcookie('mid', $mid, time() + (86400 * 30), "/");
		echo "<script>
		window.location='index.php';
		</script>";
	}else {
		echo "<script>
		alert('ชื้อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง!');
		
		window.location='index.php';
		</script>";
	}
}
?>