<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>chi tiết laptop</title>
<style type="text/css">
#rowcha {
	margin: auto;
	width: 550px;
	text-align: center;
	border: 2px dotted #0F0;
}
#rowcha #rowcon {
	background-color: #FF9;
	margin: 4px;
	float: left;
	width: 265px;
	border: 1px solid #FC9;
	text-align: center;
	height: 220px;
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

</head>

<body>
<?php
$idlaptop = $_GET["idlaptop"];
include("kn.php");
$lenh = "select hinh, tenlaptop, tenhanglaptop,tenloai,concat(soluong,' Cái') as soluong,concat(format(dongia,0),' VNĐ') as dongia,mota from laptop, hanglaptop,loailaptop where laptop.mahanglaptop = hanglaptop.mahanglaptop and laptop.maloailaptop=loailaptop.maloailaptop and malaptop='$idlaptop'";
$kq = mysql_query($lenh);

?>
<div id="rowcha">
<?php
while($row = mysql_fetch_array($kq))
  {
	  ?>

	
   <font color="#FF0000"><b> Tên laptop:</b></font>
    <?php
	echo $row[1];
	?>
    <br/>
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
    Mô tả:
       <font color="#0033CC"> <?php
	echo $row[6];
	?></font>
    <br/>
    
  <?php
  }
?>	

</div><!--rowcha-->
<p align="center">
<a href="javascript:history.go(-1)">Trở về</a>
</p>
</body>
</html>