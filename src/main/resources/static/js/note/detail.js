$(document).ready(function () {
	$('#like').on('click',function(){
		if($('#like').hasClass('like-active')){
			$('#like').css('color','Black');
			$('#like').removeClass('like-active');
		}else{
			$('#like').css('color','Red');
			$('#like').addClass('like-active');
		}
	});
});



