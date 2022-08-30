/**
 *  pwChange
 */
 
 $(document).ready(function(){
 	
 	// 정규식
 	/* var pw = $('#userPw').val();
 	function pw_check(pw){
 	
 	var reg = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,20}$";
	var userPw = $('#userPw').val();
	if(!reg.test(userPw) ) {
	    alert("영문, 숫자, 특수문자 8~20자로 입력해주세요.");
	    return false;
	}
 } */
 	
 	// 버튼 클릭시
	$('#editBtn').on('click', function () {
       
       // 비밀번호
       var userPw = $('#userPw').val();
       
       // 비밀번호 확인
       var userPwCfm = $('#userPwCfm').val();
       
       if(userPw!=userPwCfm){
       	alert("비밀번호가 일치하지 않습니다.");
       }
       else{ 
       
           $.ajax({
                type: "POST",
                url:"/myPage/updatePw/",
                data: {
                    "userPw": userPw,
                },
                success: function (data) {
                    alert("수정 완료!");
                    location.href="/myPage/home/"  // 세션 아이디 추가
                },
                error: function () {
                    console.log('fail');
                    alert("오류 발생!");
                } 
            });
         } // else
    });  // editBtn.click

   	// 글자 수 제한
   	$('.pwInput').on('keyup', function(){
		$(this).attr('maxlength', '20');
	});
	
	$('.pwCfmInput').on('keyup', function(){
		$(this).attr('maxlength', '20');
	});
   
 }); // document.ready