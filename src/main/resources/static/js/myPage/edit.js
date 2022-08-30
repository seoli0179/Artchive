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
	
	
	$("#editFrm").on('submit', function(){
		// 기본 기능 중단
		event.preventDefault();
	
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
					location.href="/myPage/edit/"
				}
			},
			error:function(){
				// 오류있을 경우 수행 되는 함수
				alert("전송 실패");
			}
 		}); 
 	});
	
/* 
	$('#editFrm').on('submit', function () {
       
           $.ajax({
                type: "POST",
                url:"/myPage/updateUser/",
                data: {
                    "userName": $('#userName').val(),
                    "userNum": $('#userNum').val(),
                    "userNickname": $('#userNickname').val(),
                    "userEmail": $('#userEmail').val()
                },
                success: function (data) {
                    alert("수정 완료!");
                    window.history.back();
                },
                error: function () {
                    console.log('fail');
                    alert("오류 발생!");
                } 
            });
        
    });  */
	
}); // document.ready
	