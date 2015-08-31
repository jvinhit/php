<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Trang upload</title>
</head>

<body>
<?php
include("kn.php");
$banggia = $_FILES["banggia"]["name"];
if(isset($_POST["upload"]))
{
	$lenh = "insert into banggia(tenbanggia)values('$banggia')";
	$kq = mysql_query($lenh);
	move_uploaded_file($_FILES["banggia"]["tmp_name"],"banggia2/".$_FILES["banggia"]["name"]);
	if($kq)
	{
		?>
        <script>
		alert('Upload thành công!');		
		</script>
        <?php
		
	}
	
}



?>
<form action="" method="post" enctype="multipart/form-data" name="form1" id="form1">
  <table width="550" border="1" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFCC" bordercolor="#FFCCCC" style="border-collapse:collapse">
    <tr>
      <td height="35" align="center" bgcolor="#FFFF99"><strong>Upload bảng giá</strong></td>
    </tr>
    <tr>
      <td align="center"><label for="banggia"></label>
      <input type="file" name="banggia" id="banggia" /> <input type="submit" name="upload" id="upload" value="Upload" /></td>
    </tr>
  </table>
</form>
</body>
</html>