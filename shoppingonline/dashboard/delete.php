<script language="javascript">
    function closewin(){
        window.opener.location.reload();
    }
    #close = closewin();
</script>
<?php
    require('../config/config.php');
    if(isset($_GET['id'])){
        $sql = "DELETE FROM tblproduct WHERE id ='$_GET[id]'";
        mysqli_query($link,$sql) or die(mysqli_error($link));
        echo"<center>ลบข้อมูลแล้ว!<br></center>";
        echo '<script type="text/javascript">window.location="index.php",</script>';
        echo @$close;


        // if(isset($_GET['id'])){
        //     include_once('../config/config.php');
        //     $sql ="DELETE FROM tbproduct WHERE id = '{$_GET['id']}'";
        //     mysqli_query($link, $sql) or die ("ลบข้อมูลไม่ได้");
            
        //     @unlink("images/".$_GET['id'].".".$_GET['ext']);
            
        //     echo "<script>";
        //     echo "alert('ลบข้อมูลหนังสือสำเร็จ');";
        //     echo "window.location='a.php';";
        //     echo "</script>";
    }

?>

