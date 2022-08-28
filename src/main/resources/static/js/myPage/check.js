/**
 *  check.js
 */
 
 
  $(document).ready(function(){
 	
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
 	
 	// 비밀번호 유효성 체크
 	function chkPW() {
		// PASSWORD 유효성 체크
		// 최소 8 자, 20자 이하 하나 이상의 문자, 하나의 숫자 및 하나의 특수 문자 정규식
  		reg = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;
  		pw = $('#userPw').val;
  		msg = "유효하지 않은 비밀번호입니다. 하나 이상의 문자와 숫자 특수 문자를 포함하여 8~20자 내로 입력해주세요."; 
  		
  		if(!chkFrame(reg, name, msg)) {
			return false;
	 	}
  		
  		// 비밀번호 확인
  		const pwCfm = $('.pwCfrmInput');
		if(pw.val() != pwCfm.val()){
			alert("비밀번호가 일치하지 않습니다.");
			pwCfm.focus();
			return false;	
		}
		
		return true; 
		location.href="/myPage/edit" + $('#userId').val();
 	}
 	
 }); // document.ready