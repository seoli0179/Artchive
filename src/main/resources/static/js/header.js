/**
 * header.js
 */
 
 $(document).ready(function() {
	// 윈도우 스크롤시 메인 메뉴 고정 
	$(window).on('scroll',function(){
		if($(document).scrollTop()>=$('#headerBox').height()){
			$('#mainMenu').addClass('mainMenuFixed');
		}else{
			$('#mainMenu').removeClass('mainMenuFixed');
		}
	});
	
	$(window).on('scroll',function(){
		// 스크롤되는 문서의 top 그림자 표시
		if($(document).scrollTop()>=$('#headerBox').height()){
			$('#headerBox').addClass('boxshadow');
		}else{
			$('#headerBox').removeClass('boxshadow');
		}
	});
	
	// moveToTop 이미지 클릭 시 top 으로 이동
	$('#footerBoxRight img').on('click',function(){
		$('html, body').animate({scrollTop:0}, 500);
	});
});