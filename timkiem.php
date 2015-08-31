<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Trang tìm kiếm</title>
<script type="text/javascript" src="js/kttim.js"></script>
<script>
function validForm(){
var ten = document.getElementById('ten');
var filter = /[a-zA-Z0-9]/;
if(!filter.test(ten.value)){
document.formtim.ten.focus();
return false;
}
}

</script>

</head>

<body>
<?php
if(!$_GET["ten"])
$ten = $_POST["ten"];
else
$ten = $_GET["ten"];
include("kn.php");
$lenh = "select hinh, tenlaptop, tenhanglaptop,tenloai,concat(soluong,' Cái') as soluong,concat(format(dongia,0),' VNĐ') as dongia,malaptop from laptop, hanglaptop,loailaptop where laptop.mahanglaptop = hanglaptop.mahanglaptop and laptop.maloailaptop=loailaptop.maloailaptop and tenlaptop like '%$ten%'";
$kq = mysql_query($lenh);
$n = mysql_num_rows($kq);
if($n > 0)
{
	$tb = "Tìm thấy ".$n." laptop";
}
else
{
	$tb = "Không tìm thấy!";
	
}

$sodong = 4;
$sotrang = ceil($n/$sodong);
if(!$_GET["p"])
$p = 1;
else
$p = $_GET["p"];
$x = ($p-1)*$sodong;
$lenh1 = "select hinh, tenlaptop, tenhanglaptop,tenloai,concat(soluong,' Cái') as soluong,concat(format(dongia,0),' VNĐ') as dongia,malaptop from laptop, hanglaptop,loailaptop where laptop.mahanglaptop = hanglaptop.mahanglaptop and laptop.maloailaptop=loailaptop.maloailaptop and tenlaptop like '%$ten%' limit $x,$sodong";
$kq1 = mysql_query($lenh1);

?>
<form id="formtim" name="formtim" method="post" action="timkiem.php" enctype="multipart/form-data" onsubmit="return  validForm()">
  <table width="535" border="1" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFF99" bordercolor="#FFCCCC" style="border-collapse:collapse">
    <tr>
      <td width="531" height="35" align="center" bgcolor="#FFFF66">TÌM KIẾM </td>
    </tr>
    <tr>
      <td align="center">Tên laptop : 
        <label>
          <input name="ten" type="text" id="ten" size="40" value="<?php if(isset($_POST["ten"]))   echo $_POST["ten"]; else echo $ten;  ?>" />
          <input type="submit" name="tim" id="tim" value="Tìm" onclick="kiemtratim()" />
      </label></td>
    </tr>
    <tr>
      <td align="center"><?php  if(isset($_POST["ten"])||isset($_GET["ten"])) echo $tb;    ?></td>
    </tr>
    <tr>
      <td align="center">
      
     
     <?php
	if(isset($_POST["ten"])||isset($_GET["ten"]))
	 {
while($row = mysql_fetch_array($kq1))
  {
$mt =  str_replace($ten,'<span style="background-color:#FF0;color:#F00">'.$ten.'</span>',$row[1]);
	  ?>

	
   <font color="#FF0000"><b> Tên laptop:</b></font>
    <a href="chitietlaptop.php?idlaptop=<?php echo $row[6];     ?>"><?php
	echo $mt;
	?></a>
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
   
    
  <?php
  }
	 }
?>	
      </td>
    </tr>
  </table>
</form>
<p align="center" style="clear:both">
<?php
 if(isset($_POST["ten"])||isset($_GET["ten"]))
	 {
for($i = 1; $i <= $sotrang;$i++)
{
	if($i==$p)
	{
		echo $i."&nbsp;";		
	}
	else
	{
		?>
        <a href="timkiem.php?ten=<?php  echo $ten;  ?>&p=<?php echo $i;    ?>"><?php  echo $i;   ?></a>
        
        <?php		
	}	
}
	 }
?>
</p>
</body>
</html>