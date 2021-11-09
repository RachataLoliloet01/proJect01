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
    $sale = $_POST['sale'];
    if(isset($_GET['id'])){
        $sql = "UPDATE tblproduct SET sale = $sale Where id = '$_GET[id]'";
        mysqli_query($link,$sql) or die(mysqli_error($link));
        
        echo "<script>";
            echo "alert('แก้ไขข้อมูลแล้ว!');";
            echo "</script>";
            echo"<script>window.location='index.php';</script>";
        echo @$close;
    }
    mysqli_close($link);
?>