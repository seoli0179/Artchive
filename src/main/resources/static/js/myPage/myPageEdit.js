/**
 * myPageEdit.js
 */
 
 // 비밀번호 변경 토글
  $(document).ready(function(){
  	
  	/* 이름 변경 */
	$('.nameBtn').click(function(){
		$('.nameBox').slideToggle();
	}); 
	
	/* 휴대폰 번호 변경 */
	$('.numberBtn').click(function(){
		$('.numberBox').slideToggle();		
	}); 
	
	/* 닉네임 변경 */
	$('.nicknameBtn').click(function(){
		$('.nicknameBox').slideToggle();		
	}); 
	
	/* 이메일 변경 */
	$('.emailBtn').click(function(){
		$('.emailBox').slideToggle();		
	}); 
	
}); // document.ready
	