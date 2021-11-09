<meta charset="UTF-8">
<?php
    if(empty($_COOKIE['status'])){
        echo"<script> alert('เขาสู่ระบบ');window.location='account.html';</script>";
    }
    if(empty($_COOKIE['status']!='ADMIN')){
        echo"<script> alert('ADMIN');window.location='account.html';</script>";
        setcookie('status');
    }
?>