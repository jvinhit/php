<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>menu 5</title>

<link href="menu2.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="hover">
    <div class="menu-item alpha">
      <h4><a href="#">Home</a></h4>
      
    </div>
<?php
include("kn.php");
$lenhtl = "select * from theloai";
$kqtl = mysql_query($lenhtl);
while($rowtl = mysql_fetch_array($kqtl))
{
?>
    <div class="menu-item">
      <h4><a href="#"><?php echo $rowtl[TenTL];   ?></a></h4>
       <?php
		$MaTL = $rowtl[MaTL];
		$lenhlt = "select * from loaitin where MaTL='$MaTL'";
		$kqlt = mysql_query($lenhlt);
		while($rowlt = mysql_fetch_array($kqlt))
		{
			?>
		
      <ul>
        <li><a href="#"><?php 	echo $rowlt[TenLT];	?></a></li>
        </ul>
        <?php
		}
		?>
    </div>

    <?php
}
?>
</div>

</body>
</html>