/**
 * indexheader.js
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
	
	/* 메뉴 배경 색상변경 */
	$(window).on('scroll',function(){
		// 스크롤되는 문서의 top이 #headerBox 이상이면 메인메뉴 고정되고 그림자 표시
		if($(document).scrollTop()>=$('#headerBox').height()){
			$('#headerBox').css("background" , "#fff");
		}else{
			$('#headerBox').css("background" , "");
		}
	});
	
	/* 메뉴 글씨 색상변경 */	
	$(window).on('scroll',function(){
		// 스크롤되는 문서의 top이 #headerBox 이상이면 메인메뉴 고정되고 그림자 표시
		if($(document).scrollTop()>=$('#headerBox').height()){
			 $('.color').css("color" , "#000");
		}else{
			$('.color').css("color" , "#fff");
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
	
	/*마우스 스크롤시 검색 이미지 변경*/
	$(window).on('scroll',function(){
		if($(document).scrollTop()>=$('#headerBox').height()){
			$('#loginBox img').attr('src','image/searchBlack.png');
		}else{
			$('#loginBox img').attr('src','image/search.png');
		}
});
	
	
	
	// moveToTop 이미지 클릭 시 top 으로 이동
	$('#footerBoxRight img').on('click',function(){
		$('html, body').animate({scrollTop:0}, 500);
	});
	
});