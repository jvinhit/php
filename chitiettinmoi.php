<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>TYrang tin mới</title>
<style type="text/css">
#chitiettinmoinhat {
	text-align: justify;
}
#hinhtin {
	padding: 2px;
	border: 2px solid #999;
}
</style>
</head>

<body>
<?php
$idtin = $_GET["idtin"];
include("kn.php");
$lenh = "select * from tin where matin='$idtin'";
$kq = mysql_query($lenh);
?>
<table width="550" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFCC" bordercolor="#FF99CC" style="border-collapse:collapse" id="chitiettinmoinhat">
  <tr>
    <td style="padding-left:5px;">
   <?php
   while($row = mysql_fetch_array($kq))
   {
	?>
	   <font color="#FF0000"><?php  echo $row[1];     ?></font>
	     <br>
         <font color="#00FF00"><?php  echo $row[2];     ?></font>
	     <br>
         <img src="hinhtintuc/<?php  echo $row[3];     ?>" width="300" height="200" hspace="5" vspace="5" align="left" id="hinhtin"/>
	     
         <?php  echo $row[5];     ?>
	     <br>
	<?php   
   }     
   ?>
    </td>
  </tr>
</table>
</body>
</html>