<?php
include("kn.php");
	$MaTL = $_GET["MaTL"];  
	$lenh = "SELECT * FROM loaitin WHERE MaTL='$MaTL'";
	$kq = mysql_query($lenh);
	while($row_loaitin = mysql_fetch_row($kq))
	{
	echo"<option value='$row_loaitin[0]'>$row_loaitin[2]</option>";
	
	}
	
	?>
        
