<?php
session_start();
?>
<?php
include("kn.php");
if(!$_SESSION["user"])
{
	?>
    <script>
	alert('Bạn phải đăng nhập!');
	location.href="index.php";		
	</script>
    
    <?php
	
}

?>