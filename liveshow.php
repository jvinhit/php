<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Trang liveshow</title>
<script type="text/javascript" src="jquery-1.2.2.pack.js"></script>
<link rel="stylesheet" type="text/css" href="featuredcontentglider.css" />
<script type="text/javascript" src="featuredcontentglider.js">
</script>

</head>

<body>
<?php
include("kn.php");
$lenh = "select malaptop,tenlaptop,mota, concat(soluong,' Cái')as soluong, concat(format(dongia,0),' VNĐ')as dongia,hinh from laptop where noibat=1 order by malaptop desc limit 0,5";
$kq = mysql_query($lenh);

?>
<script type="text/javascript">
featuredcontentglider.init({
	gliderid: "canadaprovinces", //ID of main glider container
	contentclass: "glidecontent", //Shared CSS class name of each glider content
	togglerid: "p-select", //ID of toggler container
	remotecontent: "", //Get gliding contents from external file on server? "filename" or "" to disable
	selected: 0, //Default selected content index (0=1st)
	persiststate: false, //Remember last content shown within browser session (true/false)?
	speed: 500, //Glide animation duration (in milliseconds)
	direction: "downup", //set direction of glide: "updown", "downup", "leftright", or "rightleft"
	autorotate: true, //Auto rotate contents (true/false)?
	autorotateconfig: [3000, 2] //if auto rotate enabled, set [milliseconds_btw_rotations, cycles_before_stopping]
})
</script>
<div id="canadaprovinces" class="glidecontentwrapper">
<?php
while($row = mysql_fetch_array($kq))
{
	?>
<div class="glidecontent">
 <img src="laptop/<?php echo $row[5];  ?>"style="float: left; padding: 5px" width="120" height="100" vspace="5" hspace="5" id="hinhnoibat"/> <font color="#0000FF"><a href="index.php?idlaptop=<?php   echo $row[0];?>"><?php echo $row[1];  ?></a></font><br />
<?php echo $row[2];  ?> <br/>
<font color="#00FF00"><center><?php echo $row[3];  ?> - <?php echo $row[4];  ?></center></font>
</div>
<?php
}

?>

</div>

<div id="p-select" class="glidecontenttoggler">
<a href="#" class="prev">Prev</a> 
<a href="#" class="toc">1</a> <a href="#" class="toc">2</a> <a href="#" class="toc">3</a><a href="#" class="toc">4</a><a href="#" class="toc">5</a>
<a href="#" class="next">Next</a>

</div>

</body>
</html>