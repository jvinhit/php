<?php
ini_set('display_errors',0);
ob_start(); session_start();
$host='localhost';//host
$database='laptopthay';//database
$user_database='root';//username database
$pass_database='';//password database
$root_file='/banlaptop';///web1/demo
$cons=@mysql_connect($host,$user_database,$pass_database); @mysql_select_db($database,$cons); @mysql_query("set names 'utf8'");
function check($table,$where,$id) { $sql="SELECT $id FROM $table WHERE $where"; $rs = mysql_query($sql); $row_rs= mysql_fetch_row($rs); if ($row_rs[0]>=1){return 1;}else{return 0;} }
function dem($table,$where) { if($where!=' '){$where="WHERE $where";}else $where=' '; $sqlcount="SELECT count(*) FROM $table $where "; $rs = mysql_query($sqlcount); $rows_rs = mysql_fetch_row($rs); $totalRows = $rows_rs[0]; return $totalRows; }
function lap($table,$where,$order,$limit,$lang=' ') {  settype($lang,"int"); if($lang!=' '){ if($where!=' '){$where='WHERE '.$where.' AND (lang='.$lang.' or '.$lang.'=-1)' ;}else $where=' '; }else{ if($where!=' '){$where='WHERE '.$where ;}else $where=' '; } if($order!=' '){$order='ORDER BY '.$order ;}else $order=' '; if($limit!=' '){$limit='LIMIT '.$limit ;}else $limit=' ';  $sql = "SELECT * FROM $table $where $order $limit"; $gt = mysql_query($sql) or die (mysql_error()); return $gt; } 
function ngay_run($class,$giatri=1) { settype($giatri, "int"); if($giatri==1){$kieu='dd/MM/yyyy hh:mm:ss';} elseif($giatri==2){$kieu='dd/MM/yyyy';} elseif($giatri==3){$kieu='hh:mm:ss';}  $kq=' <script type="text/javascript"> $(document).ready(function() { setInterval(function() { var kq=$.format.date(Date(),"'.$kieu.'"); $(".'.$class.'").text(kq); }, 1000); }); </script> ';  return $kq; } 
function online($iduser,$link,$lang=1,$dangxem_on=1,$thanhvien_on=1,$khach_on=1,$homnay_on=1,$homqua_on=1,$tuantruoc_on=1,$thangtruoc_on=1,$tong_on=1)
{  
	settype($iduser, "int");
	$ip=$_SERVER['REMOTE_ADDR'];
	$ngay = date("Y-m-d");
	$ngay_so=strtotime("now");
	
	if (check('users_count',"ip='{$ip}' AND ngay='{$ngay}'",'id')==0){
			$sql="INSERT INTO users_count (ip,ngay,iduser,ngay_so) VALUES ('{$ip}','{$ngay}','{$iduser}','{$ngay_so}')";
			mysql_query($sql) or die (mysql_error());	
	}else{
			$sql="UPDATE users_count SET dem=dem+1 WHERE ip='{$ip}' AND ngay='{$ngay}'";
			$kq_luu = mysql_query($sql) or die (mysql_error());
		 }
	
	$homqua=date('Y-m-d',strtotime("-1 day"));
	$t2_truoc=date('Y-m-d',strtotime("last Sunday"));
	$cn_truoc=date('Y-m-d',strtotime('-6 day',$t2_truoc));
	
	$ngaydau_t_truoc=date('Y-m-d',(strtotime('last month',strtotime(date('m/01/y')))));
	$ngaycuoi_t_truoc=date('Y/m/d',(strtotime('this month',strtotime(date('m/01/y'))) - 1));
	
	$nguoi_homnay=dem('users_count',"ngay='{$ngay}'");
	$nguoi_homqua=dem('users_count',"ngay='{$homqua}'");
	$nguoi_tuantruoc=dem('users_count',"ngay>='{$cn_truoc}' AND ngay<='{$t2_truoc}'");
	$nguoi_thangtruoc=dem('users_count',"ngay>='{$ngaydau_t_truoc}' AND ngay<='{$ngaycuoi_t_truoc}'");
	
	$sqlcount1="SELECT count(*) FROM users_count GROUP BY ip";
	$rs1 = mysql_query($sqlcount1);
	$rows_rs1 = mysql_fetch_row($rs1);
	$nguoi_tong1 = $rows_rs1[0];
	
	$sqlcount2="SELECT count(*) FROM users_count";
	$rs2 = mysql_query($sqlcount2);
	$rows_rs2 = mysql_fetch_row($rs2);
	$nguoi_tong2 = $rows_rs2[0];
	$nguoi_tong=$nguoi_tong2-$nguoi_tong1;			

	$luot_homnay_lap=lap('users_count',"ngay='{$ngay}'",' ',' ',' ');
	while($row_luot_homnay_lap=mysql_fetch_assoc($luot_homnay_lap)){
		$luot_homnay=$luot_homnay+$row_luot_homnay_lap['dem'];
	}$luot_homnay;settype($luot_homnay, "int");
	
	$luot_homqua_lap=lap('users_count',"ngay='{$homqua}'",' ',' ',' ');
	while($row_luot_homqua_lap=mysql_fetch_assoc($luot_homqua_lap)){
		$luot_homqua=$luot_homqua+$row_luot_homqua_lap['dem'];
	}$luot_homqua;settype($luot_homqua, "int");

	$luot_tuantruoc_lap=lap('users_count',"ngay>='{$cn_truoc}' AND ngay<='{$t2_truoc}'",' ',' ',' ');
	while($row_luot_tuantruoc_lap=mysql_fetch_assoc($luot_tuantruoc_lap)){
		$luot_tuantruoc=$luot_tuantruoc+$row_luot_tuantruoc_lap['dem'];
	}$luot_tuantruoc;settype($luot_tuantruoc, "int");

	$luot_thangtruoc_lap=lap('users_count',"ngay>='{$ngaydau_t_truoc}' AND ngay<='{$ngaycuoi_t_truoc}'",' ',' ',' ');
	while($row_luot_thangtruoc_lap=mysql_fetch_assoc($luot_thangtruoc_lap)){
		$luot_thangtruoc=$luot_thangtruoc+$row_luot_thangtruoc_lap['dem'];
	}$luot_thangtruoc;settype($luot_thangtruoc, "int");
	
	$luot_tong_lap=lap('users_count'," ",' ',' ',' ');
	while($row_luot_tong_lap=mysql_fetch_assoc($luot_tong_lap)){
		$luot_tong=$luot_tong+$row_luot_tong_lap['dem'];
	}$luot_tong;settype($luot_tong, "int");
	
	if($uo_keepquiet == FALSE) {
		$uo_query = "SELECT count(*) FROM users_online";
		$uo_result = mysql_query($uo_query);
		$uo_count = mysql_fetch_row($uo_result);
		$dangxem=$uo_count[0];
		
		$uo_query = "SELECT count(*) FROM users_online where username <>''";
		$uo_result = mysql_query($uo_query);
		$uo_count = mysql_fetch_row($uo_result);
		$thanhvien=$uo_count[0];
		
		$uo_query = "SELECT count(*) FROM users_online where username =''";
		$uo_result = mysql_query($uo_query);
		$uo_count = mysql_fetch_row($uo_result);
		$khach=$uo_count[0];
			
	}
	echo ngay_run('on_ngay_au',$giatri=1);
	if($lang==1){
		$dangxem1='Đang xem';
		$thanhvien1='Thành viên';
		$khach1='Khách';
		$homnay1='Trong ngày';
		$tuantruoc1='Trong tuần';
		$thangtruoc1='Trong tháng';
		$tong1 = "Tổng truy cập";
	}elseif($lang==2){
		$dangxem1='Viewing';
		$thanhvien1='Member';
		$khach1='Guest';
		$homnay1='Today';
		$tuantruoc1='Last week';
		$thangtruoc1='Last month';
		$tong1 = "Total";			
	}
	
				
	if($dangxem_on==1){
		$d1="
		<li>
			<span class='li_span1'>".$dangxem1."</span> 
			<span class='li_span2'>: ".$dangxem."</span>
			<div class='clear'></div>
		</li>";
	}
	
	if($thanhvien_on==1){
		$d2="
		<li>
			<span class='li_span1'>".$thanhvien1."</span> 
			<span class='li_span2'>: ".$thanhvien."</span>
			<div class='clear'></div>
		</li>";
	}

	if($khach_on==1){
		$d3="
		<li>
			<span class='li_span1'>".$khach1."</span> 
			<span class='li_span2'>: ".$khach."</span>
			<div class='clear'></div>
		</li>";
	}

	if($homnay_on==1){
		$d4="
		<li>
			<span class='li_span1'>".$homnay1."</span> 
			<span class='li_span2'>: ".$luot_homnay."</span>
			<div class='clear'></div>
		</li>";
	}
	
	if($tuantruoc_on==1){
		$d5="
		<li>
			<span class='li_span1'>".$tuantruoc1."</span> 
			<span class='li_span2'>: ".$luot_tuantruoc."</span>
			<div class='clear'></div>
		</li>";
	}

	if($thangtruoc_on==1){
		$d6="
		<li>
			<span class='li_span1'>".$thangtruoc1."</span> 
			<span class='li_span2'>: ".$luot_thangtruoc."</span>
			<div class='clear'></div>
		</li>";
	}				
	
	if($tong_on==1){
		$d7="
		<li>
			<span class='li_span1'>".$tong1."</span> 
			<span class='li_span2'>: ".$luot_tong."</span>
			<div class='clear'></div>
		</li>";
	}
	$kq="<ul class='ul_tktc'>".$d1.$d2.$d3.$d4.$d5.$d6.$d7."</ul>";
		
return $kq;	
}
?>