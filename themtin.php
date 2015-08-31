<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Thêm tin tức</title>
<link href="style/themlaptop.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="jquery.ui.core.js"></script>
<script type="text/javascript" src="jquery.ui.datepicker.js"></script>

<link href="jquery-ui-1.8.2.custom.css" rel="stylesheet" type="text/css" />
<script>
$(document).ready(function() {
$("#ngay").datepicker({
numberOfMonths: 1,  dateFormat: 'yy/mm/dd',
monthNames: ['Một','Hai','Ba','Tư','Năm','Sáu','Bảy','Tám','Chín', 
'Mười','Mười một','Mười hai'] ,
monthNamesShort: ['Tháng1','Tháng2','Tháng3','Tháng4','Tháng5',
'Tháng6','Tháng7','Tháng8','Tháng9','Tháng10','Tháng11','Tháng12'] ,
dayNames: ['Chủ nhật', 'Thứ hai', 'Thứ ba', 'Thứ tư', 'Thứ năm',
 'Thứ sáu', 'Thứ bảy'],
dayNamesMin: ['CN', 'T2', 'T3', 'T4', 'T5', 'T6', 'T7'] ,
showWeek: true , showOn: 'both',
changeMonth: true , changeYear: true,
currentText: 'Hôm nay', weekHeader: 'Tuần'
});
});
</script>

</script>
<script>
$(document).ready(function() {
	$("#MaTL").change(function(){
		var MaTL=$(this).val();
		$("#MaLT").load("tintuc_layloaitin.php?MaTL="+ MaTL);
	});
});
</script>
<script type="text/javascript" src="Editor/scripts/innovaeditor.js"></script>

</head>

<body>
<?php
include("kn.php");
$matin = $_POST["matin"];
$tieude = $_POST["tieude"];
$MaTL = $_POST["MaTL"];
$MaLT = $_POST["MaLT"];
$tomtat = $_POST["tomtat"];
$noidung = $_POST["noidung"];
$hinh = $_FILES["hinh"]["name"];
$ngay = $_POST["ngay"];
if(isset($_POST["them"]))
{
	$lenhthem = "insert into tin values('$matin','$tieude','$tomtat','$hinh','$ngay','$noidung','$MaTL','$MaLT')";
	$kqthem = mysql_query($lenhthem);
	move_uploaded_file($_FILES["hinh"]["tmp_name"],"hinhtintuc/".$_FILES["hinh"]["name"]);
	?>
    <script>
	alert('Thêm thành công!');
	</script>
    <?php
	
	
}

?>
<form action="" method="post" enctype="multipart/form-data" name="form1" id="form1">
  <table width="550" border="1" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFCC" bordercolor="#FFCCCC" style="border-collapse:collapse">
    <tr>
      <td height="35" colspan="2" align="center" bgcolor="#FFFF99"><strong>THÊM TIN</strong></td>
    </tr>
    <tr>
      <td width="167" style="padding-left:10px;">Mã tin</td>
      <td width="377"><label for="matin"></label>
      <input name="matin" type="text" class="themlaptop" id="matin" value="<?php  echo $_POST["matin"];  ?>" size="40" readonly="readonly" /></td>
    </tr>
    <tr>
      <td style="padding-left:10px;">Tiêu đề</td>
      <td><label for="tieude"></label>
      <input name="tieude" type="text" class="themlaptop" id="tieude" size="40" value="<?php  echo $_POST["tieude"];  ?>"/></td>
    </tr>
    <tr>
      <td style="padding-left:10px;">Thể loại</td>
      <td><label for="MaTL"></label>
        <select name="MaTL" class="themlaptopCopy" id="MaTL">
        <option value="0">--Chọn thể loại--</option>
        <?php
		include("kn.php");
		$lenhtl = "select * from theloai";
		$kqtl = mysql_query($lenhtl);
		while($rowtl = mysql_fetch_array($kqtl))
		{
			echo"<option value='$rowtl[0]'>$rowtl[2]</option>";
		}
		?>
        
      </select></td>
    </tr>
    <tr>
      <td style="padding-left:10px;">Loại tin</td>
      <td><label for="MaLT"></label>
        <select name="MaLT" class="themlaptopCopy" id="MaLT">
         
      </select></td>
    </tr>
    <tr>
      <td style="padding-left:10px;">Tóm tắt</td>
      <td><label for="tomtat"></label>
      <textarea name="tomtat" cols="40" rows="4" class="themlaptopCopy" id="tomtat"><?php  echo $_POST["tomtat"];  ?>
        </textarea></td>
    </tr>
    <tr>
      <td style="padding-left:10px;">Nội dung</td>
      <td><label for="noidung"></label>
      <textarea name="noidung" cols="40" rows="4" class="themlaptopCopy" id="noidung"><?php  echo $_POST["noidung"];  ?>
        </textarea><script>
    var oEdit1 = new InnovaEditor("oEdit1");

    /***************************************************
      SETTING EDITOR DIMENSION (WIDTH x HEIGHT)
    ***************************************************/

    oEdit1.width=450;//You can also use %, for example: oEdit1.width="100%"
    oEdit1.height=350;


    /***************************************************
      SHOWING DISABLED BUTTONS
    ***************************************************/

    oEdit1.btnPrint=true;
    oEdit1.btnPasteText=true;
    oEdit1.btnFlash=true;
    oEdit1.btnMedia=true;
    oEdit1.btnLTR=true;
    oEdit1.btnRTL=true;
    oEdit1.btnSpellCheck=true;
    oEdit1.btnStrikethrough=true;
    oEdit1.btnSuperscript=true;
    oEdit1.btnSubscript=true;
    oEdit1.btnClearAll=true;
    oEdit1.btnSave=true;
    oEdit1.btnStyles=true; //Show "Styles/Style Selection" button

    /***************************************************
      APPLYING STYLESHEET
      (Using external css file)
    ***************************************************/

    oEdit1.css="style/test.css"; //Specify external css file here

    /***************************************************
      APPLYING STYLESHEET
      (Using predefined style rules)
    ***************************************************/
    /*
    oEdit1.arrStyle = [["BODY",false,"","font-family:Verdana,Arial,Helvetica;font-size:x-small;"],
          [".ScreenText",true,"Screen Text","font-family:Tahoma;"],
          [".ImportantWords",true,"Important Words","font-weight:bold;"],
          [".Highlight",true,"Highlight","font-family:Arial;color:red;"]];

    If you'd like to set the default writing to "Right to Left", you can use:

    oEdit1.arrStyle = [["BODY",false,"","direction:rtl;unicode-bidi:bidi-override;"]];
    */


    /***************************************************
      ENABLE ASSET MANAGER ADD-ON
    ***************************************************/

    oEdit1.cmdAssetManager = "modalDialogShow('/banlaptop/Editor/assetmanager/assetmanager.php',640,465)"; //Command to open the Asset Manager add-on.
    //Use relative to root path (starts with "/")

    /***************************************************
      ADDING YOUR CUSTOM LINK LOOKUP
    ***************************************************/

    oEdit1.cmdInternalLink = "modelessDialogShow('links.htm',365,270)"; //Command to open your custom link lookup page.

    /***************************************************
      ADDING YOUR CUSTOM CONTENT LOOKUP
    ***************************************************/

    oEdit1.cmdCustomObject = "modelessDialogShow('objects.htm',365,270)"; //Command to open your custom content lookup page.

    /***************************************************
      USING CUSTOM TAG INSERTION FEATURE
    ***************************************************/

    oEdit1.arrCustomTag=[["First Name","{%first_name%}"],
        ["Last Name","{%last_name%}"],
        ["Email","{%email%}"]];//Define custom tag selection

    /***************************************************
      SETTING COLOR PICKER's CUSTOM COLOR SELECTION
    ***************************************************/

    oEdit1.customColors=["#ff4500","#ffa500","#808000","#4682b4","#1e90ff","#9400d3","#ff1493","#a9a9a9"];//predefined custom colors

    /***************************************************
      SETTING EDITING MODE

      Possible values:
        - "HTMLBody" (default)
        - "XHTMLBody"
        - "HTML"
        - "XHTML"
    ***************************************************/

    oEdit1.mode="XHTMLBody";


    oEdit1.REPLACE("noidung<?php  echo $_POST["noidung"];  ?>");
  </script>
</td>
    </tr>
    
    <tr>
      <td style="padding-left:10px;">Hình</td>
      <td><label for="hinh"></label>
      <input name="hinh" type="file" class="themlaptop" id="hinh" size="30" /></td>
    </tr>
    <tr>
      <td style="padding-left:10px;">Ngày </td>
      <td><label for="ngay"></label>
      <input name="ngay" type="text" class="themlaptop" id="ngay" size="40" value="<?php  echo $_POST["ngay"];  ?>"/></td>
    </tr>
   
    <tr>
      <td height="30" colspan="2" align="center"><input type="submit" name="them" id="them" value="Thêm tin" /></td>
    </tr>
  </table>
</form>
</body>
</html>