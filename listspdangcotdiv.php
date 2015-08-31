<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Trang list div</title>
<style type="text/css">
#rowcha {
	margin: auto;
	width: 550px;
}
#rowcha #rowcon {
	background-color: #FF9;
	margin: 4px;
	float: left;
	width: 265px;
	border: 1px solid #FC9;
	text-align: center;
	height: 250px;
	padding-top: 5px;
}
</style>
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="jquery.corner.js"></script>

<script> 
$(document).ready(function()
 { 
 $("#rowcha #rowcon").corner("10px");
}); 
</script>

<link href="jsjquery/tooltips.css" rel="stylesheet" type="text/css" />
</head>

<body>
<?php
$idhang = $_GET["idhang"];
include("kn.php");
$lenh = "select hinh, tenlaptop, tenhanglaptop,tenloai,concat(soluong,' Cái') as soluong,concat(format(dongia,0),' VNĐ') as dongia,malaptop,mota from laptop, hanglaptop,loailaptop where laptop.mahanglaptop = hanglaptop.mahanglaptop and laptop.maloailaptop=loailaptop.maloailaptop and laptop.mahanglaptop='$idhang'";
$kq = mysql_query($lenh);
$sodong = 6;
$sodulieu = mysql_num_rows($kq);
$sotrang = ceil($sodulieu/$sodong);
if(!$_GET["p"])
$p = 1;
else
$p = $_GET["p"];
$x = ($p-1)*$sodong;
$lenh1 = "select hinh, tenlaptop, tenhanglaptop,tenloai,concat(soluong,' Cái') as soluong,concat(format(dongia,0),' VNĐ') as dongia,malaptop,mota from laptop, hanglaptop,loailaptop where laptop.mahanglaptop = hanglaptop.mahanglaptop and laptop.maloailaptop=loailaptop.maloailaptop and laptop.mahanglaptop='$idhang' limit $x,$sodong";
$kq1 = mysql_query($lenh1);
?>
<div id="rowcha">
<?php
while($row = mysql_fetch_array($kq1))
  {
	  ?>

	<div id="rowcon">
    <div id="dhtmltooltip"></div>
    <script type="text/javascript" src="jsjquery/tooltips.js"></script>

   <font color="#FF0000"><b> Tên laptop:</b></font>
   <a onmouseout="hideddrivetip()" onmouseover="ddrivetip('<?php  echo $row[6];  ?>', 'lightyellow', 500)" href="#" > 	<?php echo $row[1];?></a>
  <br />
<span style="display:none" id="select_text_<?php  echo $row[6];  ?>"><?php  echo  $row[7];?></span>
<span style="display:none" id="select_image_<?php  echo $row[6];  ?>"><? echo  $row[0];?></span> 

    <font color="#003399">Hãng laptop:</font>
    <?php
	echo $row[2];
	?>
    <br/>
    <font color="#FF00FF">Loại laptop:</font>
    <?php
	echo $row[3];
	?> - 
    <?php
	echo $row[4];
	?>
     - 
     <?php
	echo $row[5];
	?>
    <br/>
    <img src="laptop/<?php
	echo $row[0];
	?>" width="150" height="100" />
   
    <br/>
   <a href="index.php?idlaptop=<?php  echo $row[6];    ?>">Chi tiết</a>
   <br />
   <a href="index.php?act=gh&Malaptop=<?php echo $row[6];   ?>"><img src="image/dathang.gif" width="103" height="30" /></a></div><!--rowcon-->
    <?php
  }
?>	
<p align="center" style="clear:both">
<?php
for($i = 1; $i <= $sotrang;$i++)
{
	if($i==$p)
	{
		echo $i."&nbsp;";		
	}
	else
	{
		?>
        <a href="index.php?idhang=<?php  echo $idhang;  ?>&p=<?php echo $i;    ?>"><?php  echo $i;   ?></a>
        
        <?php		
	}	
}

?>
</p>
</div><!--rowcha-->
</body>
</html>