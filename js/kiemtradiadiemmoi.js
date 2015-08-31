// JavaScript Document

function kiemtradiadiem()
{
	
	with(document.formdathang)
	{
		if(diadiem.value=="")
		{
			alert('Bạn chưa chọn địa điểm!');
			diadiem.focus();
			diadiem.select();
			return false;
			
		}
		
		
	}
	
	
	
	
}