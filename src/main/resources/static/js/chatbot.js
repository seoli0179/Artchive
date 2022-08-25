/**
 * 
 */
 
 $(document).ready(function() {
	
	// 시작하자마자 웰컴 메시지 요청
	callAjax();
		

	$('#chatForm').on('submit', function(){
 		// submit 이벤트 기본 기능 : 페이지 새로 고침
 		// 기본 기능 중단
 		event.preventDefault();
 		
 		if($('#message').val() == ""){
			alert("질문을 입력해주세요");			
			$('#message').focus();
			return false;
		} 		
 		
 		// chatBox에 보낸 메시지 추가
		$('#chatBox').append('<div class="msgBox send"><span id="in"><span>' +
												$('#message').val() + '</span></span></div><br>');
 		
 		callAjax();
 		
 		$('#message').val("");	
 		
 		
 	}); // submit 끝
 	

 	
 	// ajax() 부분을 별도의 함수로 분리
 	function callAjax(){
 		$.ajax({
 			type:"post",
 			url:"chatbot",
 			data:{"message":$('#message').val()},
 			dataType:"text",
			success:function(result){
				// chatBox에 받은 메시지 추가				
 				$('#chatBox').append('<div class="msgBox receive"><span id="in"><span>' +
												result + '</span></span></div><br>');
				
				// 스크롤해서 올리기 : 맨 아래 답변이 밑으로 내려가지 않도록 맨 아래 위치에 고정								
				$('#chatBox').scrollTop($('#chatBox').prop("scrollHeight"));			
				
				// 챗봇으로부터 텍스트 답변 받음 -> 음성 변환 (TTS)
				//callAjaxTTS(result); // 
				
				
				$('#message').val("");
				$('#message').focus();					
			},
			error:function(){
				// 오류있을 경우 수행 되는 함수
				alert("전송 실패");
			},
 		}); // ajax 끝
 	} // function 끝
 	
});