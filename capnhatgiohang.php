<?php
include("kn.php");
include("check_userlogin.php");
if($_POST["xoa"]=="")
{
	for($i = 1; $i <= $_SESSION["tongsp"];$i++)
	{
		$_SESSION["Soluong".$i]= $_POST["C".$i];		
		
	}
	
	
}
else
{
	for($k = $_SESSION["tongsp"]; $k >= 1; $k--)
	{
		if($_POST["X".$k]=="on")
		{
				for($i =$k;$i <= $_SESSION["tongsp"];$i++)
		{
		$j = $i +1;
		$_SESSION["Malaptop".$i]=$_SESSION["Malaptop".$j];
		$_SESSION["Tenlaptop".$i]=$_SESSION["Tenlaptop".$j];
		$_SESSION["Soluong".$i]=$_SESSION["Soluong".$j];
		$_SESSION["Dongia".$i]=$_SESSION["Dongia".$j];
		
		}

			session_unregister($_SESSION["Malaptop".$k]);
						session_unregister($_SESSION["Tenlaptop".$k]);
									session_unregister($_SESSION["Dongia".$k]);
												session_unregister($_SESSION["Soluong".$k]);
			$_SESSION["tongsp"]--;
			
		}
		
		
	}

}

echo"<script>
location.href='index.php?act=gh';
</script>";

?>
