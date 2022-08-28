/**
 * myPageEdit.js
 */
 
 
  $(document).ready(function(){
  	
  	
  	// 비밀번호 변경 토글
  	
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
	
	
	// 유효성 체크 전역변수
 	var reg, name, msg;
 	
 	// 유효성 체크 프레임
 	function chkFrame(reg, name, msg) {
 		var result = true;
 		if(!reg.test(name.val())) {
 			alert(msg);
 			result = false;
 		}
 		return result;
 	}
 	
 	// 유효성 체크
 	function chkSubmit() {
 		var result = true;
 		
		// 이름 유효성 체크
	 	reg = /^[가-힣a-zA-Z]+$/; // 한글 + 영문만
	 	name = $('#userName');
	 	msg = "유효하지 않은 이름입니다. 이름을 다시 확인해주세요.";
	 	
	 	if(!chkFrame(reg, name, msg)) {
			result = false;
			return result;
	 	}
	 	
	 	// 닉네임 유효성 체크
	 	// 닉네임은 한글, 영문, 숫자만 글자 수 제한x
		reg = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|]{2,10}$/g;
		name = $('#userNickname');
		msg = "유효하지 않은 닉네임입니다. 한글, 영문, 숫자만 가능하며 2~10자 내로 입력해주세요.";

		if(!chkFrame(reg, name, msg)) {
			result = false;
			return result;
	 	}
		
		// Email 유효성 체크
		// 첫 글자 영문으로 시작 영문, 숫자만 가능하며 6-20자 	
		reg = /^[a-z]+[a-z0-9]{5,14}$/g;
		name = $('#userEmail1');
		msg = "유효하지 않은 이메일입니다. 영문과 숫자를 조합하여 6~14자 내로 입력해주세요.";
		
		if(!chkFrame(reg, name, msg)) {
			result = false;
			return result;
	 	}
		
		// 닉네임, Email 중복 여부 체크
 		$('.chkInput').each(function(index){
			var chkInput = $(this).parent().children().eq(1).children();
			
			if($(this).css('color') == "rgb(255, 0, 0)") {
 		    	alert("중복된 항목이 있습니다.");
 		    	chkInput.focus();
 		    	result = false;
 		    	return result;
 		    }
 		});

 		return result; 	
 	} // chkSubmit 함수 종료
 	
	// 수정
	// 기존 이름, 비밀번호, 소속 확인
	var chkName = $('#userName').val();
	var chkNum = $('#userNum').val();
	var chkNickName = $('#userNickname').val();
	
	$("#editFrm").on('submit', function(){
		// 기본 기능 중단
		event.preventDefault();
	
		// 수정 여부 확인(호이스팅)
		var email = $('#userEmail1').val() + "@" + $('#userEmail2').val();
		
		// 기존값 변화여부
		if((chkName == $('#userName').val()) &&			// 기존 이름과 비교
		   (chkNickName == $('#userNickname').val()) && // 기존 닉네임과 비교
		   (chkEmail == email) &&						// 기존 이메일과 비교
		   (chkNum == $('#userNum').val()) 				// 기존 번호와 비교
		   ) {				

		   	// 변화가 없을 때
			alert("수정할 항목이 없습니다.");
			return false;
		}
	
 		
 		var formData = new FormData($('#editFrm')[0]);

 		$.ajax({
 			type:"post",
 			enctype: 'multipart/form-data',
 			url:"/myPage/updateUser/",
 			data: formData,
			contentType : false,
        	processData : false,
			success:function(result){
				// 성공 시 결과 받음
				if(result == "SUCCESS"){
					alert("수정되었습니다.");
					location.href="/myPage/home/" + $('#userId').val();
				}
			},
			error:function(){
				// 오류있을 경우 수행 되는 함수
				alert("전송 실패");
			}
 		}); 
 	});
	
	
}); // document.ready
	