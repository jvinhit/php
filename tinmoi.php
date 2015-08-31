<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>TYrang tin mới</title>
</head>

<body>
<?php
include("kn.php");
$lenhtinmoi = "select matin,left(tieude,27) as tieude from tin order by ngay desc limit 0,5";
$kqtinmoi = mysql_query($lenhtinmoi);
?>
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFCC" bordercolor="#FF99CC" style="border-collapse:collapse" id="tinmoinhat">
  <tr>
    <td style="padding-left:5px;">
   <?php
   while($rowtinmoi = mysql_fetch_array($kqtinmoi))
   {
	?>
	   <a href="index.php?idtin=<?php echo $rowtinmoi[0];   ?>"><?php  echo $rowtinmoi[1];     ?></a>
	     <p>
	<?php   
   }     
   ?>
    </td>
  </tr>
</table>
</body>
</html>