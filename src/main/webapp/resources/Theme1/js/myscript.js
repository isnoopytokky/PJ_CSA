$(document).ready(function() {
	/*------------------------Start autofocus---------------------------------*/
	$('input:text:first').focus();
	    
	$('input:text').bind("keydown", function(e) {
	   var n = $("input:text").length;
	   if (e.which == 13) 
	   { //Enter key
	     e.preventDefault(); //to skip default behavior of the enter key
	     var nextIndex = $('input:text').index(this) + 1;
	     if(nextIndex < n)
	       $('input:text')[nextIndex].focus();
	     else
	     {
	       $('input:text')[nextIndex-1].blur();
	       $('#btnSubmit').click();
	       //alert('กรอกข้อมูลครบแล้ว');
	     }
	   }
	});
	
	/*----------------------Start auto dropdown------------------------------*/
	$('ul.nav li.dropdown').hover(function(){
		$('.dropdown-menu', this).fadeIn('slow');
	}, function(){
		$('.dropdown-menu', this).fadeOut('fast');
	});
	/*----------------------End auto dropdown-------------------------------*/
});
