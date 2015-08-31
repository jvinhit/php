// JavaScript Document

function kiemtratimkiem()
{
	with(document.formtimkiem)
	{
		if(ten.value=="")
		{
			alert('Bạn chưa nhập tên cần tìm!');
			ten.focus();
			ten.select();
			return false;
			
		}
		
	}
	
	
}