<?php
    require('config/config.php');
    if (isset($_POST['register'])){
        $user = $_POST['username'];
        $pass = $_POST['password'];
		$name = $_POST['name'];
		$email = $_POST['email'];
		$tel = $_POST['tel'];
		
        $sql = "SELECT muser FROM memmber WHERE muser='$user'";
        $rs = mysqli_query($link,$chk_usr);
        $usr_row = mysqli_num_rows($rs);

        if ($use_row > 0){
            echo"<script>alert('มีชื่อผู้ใช้งานนี้อยู่ในระบบแล้ว!');window.history.back();</script>";
        }else{
            $str = "INSERT INTO `member` (`mid`, `muser`, `mpassword`, `name`, `email`, `tel`) VALUES ('', '$user', '$pass', '$name', '$email', '$tel');";
            mysqli_query($link,$str);

            echo "<script>alert('สมัครสมาชิกเรียบร้อยแล้ว');window.location='login.php';</script>";
        }

    }

?>