/**
 * ocr.js
 */
 
 $(document).ready(function() {
	
	
	$("#ticketBox").click(function () {
	    $("#uploadFile").trigger('click');
	});
	
	$("#uploadFile").on('change', function() {
 		setImageFromFile(this, '#peviewImg');
	});
	
	// 이미지 미리보기
	function setImageFromFile(input) {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	            document.getElementById('peviewImg').style.display = 'block'; 
	            document.getElementById('peviewImg').src = e.target.result; 
	            document.getElementById('explain').style.display='none';
	        }
	        reader.readAsDataURL(input.files[0]);
	    } else {
	    	document.getElementById('preview').src = "";
	    }
	}
 
	$('#ocrForm').on('submit', function(){
 		// submit 이벤트 기본 기능 : 페이지 새로 고침
 		// 기본 기능 중단
 		event.preventDefault();
 		
 		// 폼 데이터 읽어 오기
 		var formData = new FormData($('#ocrForm')[0]);
 		
 		// 업로드된 파일명 알아오기
 		var fileName = $('#uploadFile').val().split("\\").pop();
 		// alert(fileName);
 		
 		if(!fileName){
 			alert("이벤트 티켓을 업로드해주세요.")
 		} else {
 		
 		$.ajax({
 			type:"post",
 			url:"/myPage/uploadTicket",
 			enctype: 'multipart/form-data',
 			processData:false,
 			contentType:false,
 			data:formData,
			success:function(result){
				// console.log(result["title"]);
				console.log(result.title);
 				// imageBox에 이미지 출력
 				//var imgHtml = `<img src="/images/${fileName}" />`;
 				//$('#imageBox').html(imgHtml);
 				//$('#imageBox').empty();
 				//$('#imageBox').append('<img src="/images/'+fileName+'">');
 				
 				$('#ticketBox').html('<img src="/images/'+fileName+'">');
 				
 				// resultBox에 출력
 				//$('#resultBox').html(result);
 				$('#resultBoxTitle').text("전시회명 : " + result.title);
 				$('#resultBoxPlace').text("장 소 : " + result.place);
 				$('#resultBoxNumber').text("예약번호 : " + result.number);
 				$('#resultBoxDate').text("예매일시 : " + result.date);
 				
			},
			error:function(){
				// 오류있을 경우 수행 되는 함수
				alert("전송 실패");
			},
 		}); // ajax 끝
 			$('#submitBtn').on('click', function(){
 				alert("쿠폰이 발급되었습니다.");
 				window.close();
 			});
 		} // else if
 		
 	}); // submit 끝
});