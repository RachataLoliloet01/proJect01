<script language="javascript">
function closewin()
{
    window.opener.location.reload();
    self.close();

}
$close = closewin();
</script>
<?php
    require('../config/config.php');
    $unit = $_POST['unit'];
    if(isset($_GET['id'])){
        $sql = "UPDATE tblproduct SET unit = $unit Where id = '$_GET[id]'";
        mysqli_query($link,$sql) or die(mysqli_error($link));
        // echo"<center>แก้ไขข้อมูลแล้ว!<br></center>";
        echo "<script>";
            echo "alert('แก้ไขข้อมูลแล้ว!');";
            echo "</script>";
        // echo '<script type="text/javascript">window.location="index.php",</script>';
        // echo '<script type="text/javascript"></script>';
        echo"<script>window.location='index.php';</script>";
        echo @$close;
    }
    mysqli_close($link);
?>