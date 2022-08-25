/**
 * chatbot2.js
 */
 
$(document).ready(function() {
	
	// 시작하자마자 웰컴 메시지 요청
	callAjax();
	
	
	const record = document.getElementById("record");
    const stop = document.getElementById("stop");
    const soundClips = document.getElementById("sound-clips");
  
   const audioCtx = new(window.AudioContext || window.webkitAudioContext)(); // 오디오 컨텍스트 정의
  
   if (navigator.mediaDevices) {
            var constraints = {
                audio: true
            }
             let chunks = [];

            navigator.mediaDevices.getUserMedia(constraints)
                .then(stream => {
                    const  mediaRecorder = new MediaRecorder(stream);
              		
              		// [녹음] 버튼 클릭했을 때
                    record.onclick = () => {
                        mediaRecorder.start();
                        record.style.background = "red";
                        record.style.color = "black";
                    }
					
					//정지 버튼 클릭 시
                    stop.onclick = () => {
                        mediaRecorder.stop();//녹음 정지                       
                        record.style.background = "";
                        record.style.color = "";
                    }
                    
                    mediaRecorder.onstop = e => {
                        
                        const clipName = "voiceMsg";
                        
						//태그 3개 생성
                        const clipContainer = document.createElement('article');                     
                        //const audio = document.createElement('audio');
                        const a = document.createElement('a');
                        
						// 속성/ 컨텐츠 설정
                       // clipContainer.classList.add('clip');
                       // audio.setAttribute('controls', '');                                           
                        //clipContainer.appendChild(audio);
                       
                      // $('#sound-clips').empty();  // 이전의 오디오 삭제
                       
                        clipContainer.appendChild(a);                         
                        soundClips.appendChild(clipContainer);                        
						
                        //chunks에 저장된 녹음 데이터를 audio 양식으로 설정
                        //audio.controls = true;
                        const blob = new Blob(chunks, {
                            'type': 'audio/mp3 codecs=opus'
                        }); 
                        
                        chunks = [];
                        const audioURL = URL.createObjectURL(blob);
                       // audio.src = audioURL;
                        a.href=audioURL;
                       //blob:http://localhost:8011/6377d19d-2ca8-49b1-a37f-068d602ceb60    
                        a.href=audioURL;                     
                        a.download = clipName;                      
                       
						a.click(); // 다운로드 폴더에 저장하도록 클릭 이벤트 발생			
						
						
						// 파일 업로드 함수 호출
						fileUpload(blob, clipName); // 음성파일, 파일명 
						
									
                    }//mediaRecorder.onstop

                    //녹음 시작시킨 상태가 되면 chunks에 녹음 데이터를 저장하라 
                    mediaRecorder.ondataavailable = e => {
                        chunks.push(e.data)
                    }
                    
                })
                .catch(err => {
                    console.log('The following error occurred: ' + err)
                })
        }   
	
	//////////////////////////////////////////////////////////////	
	
	
	// 서버에 파일을 업로드 하는 함수
	function fileUpload(blob, clipName) {
	
		// 음성 파일을 폼에 추가
		var formData = new FormData();
		formData.append('uploadFile', blob, clipName + ".mp3");
		
		// 녹음된 mp3 파일을 STT에게 전송하고 텍스트 반환  -> 텍스트를 챗봇 서버에게 전달
		$.ajax({
 			type:"post",
 			enctype: 'multipart/form-data',
 			url:"stt",
 			data: formData,
 			processData:false,
 			contentType:false,
			success:function(result){
				// chatBox에 받은 메시지 추가				
 				$('#chatBox').append('<div class="msgBox send"><span id="in"><span>' +
												result + '</span></span></div><br>');
												
				// <input> 태그의 값을 받은 텍스트로 설정
				$('#message').val(result);	
				// 챗봇에게 전달
				callAjax();
				
				$('#message').val("");								
			},
			error:function(){
				// 오류있을 경우 수행 되는 함수
				alert("전송 실패");
			},
 		}); // ajax 끝
	
	}
	
	
	

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
 			url:"chatbotJSON",
 			data:{"message":$('#message').val()},
 			dataType:"json",
			success:function(result){
				// JSON 형식 그대로 받아서 자바스크립에서 파싱	
				///////////////////////////////////////////////////////////////////////////////
				//JSON 형식 그대로 반환 받음
				var bubbles = result.bubbles;
				for(var b in bubbles){
					if(bubbles[b].type == 'text'){ // 기본 답변인 경우
						/* chatBox에 받은 메시지 추가 */
							$('#chatBox').append('<div class="msgBox receive"><span id="in"><span>챗봇</span><br><span>' + 
															   bubbles[b].data.description +'</span></span></div><br><br>'); 
															   
						// 챗봇으로 부터 받은 텍스트 답변을 음성으로 변환하기 위해 TTS 호출									   
						callAjaxTTS(bubbles[b].data.description);										   
					}	else if(bubbles[b].type == 'template'){//이미지 답변 또는 멀티링크 답변 시작
						if(bubbles[b].data.cover.type=="image"){//이미지 이면
							$("#chatBox").append("<img src='" + bubbles[b].data.cover.data.imageUrl +
																		 "' alt='이미지 없음' width='200' height='100'>");
							if(bubbles[b].data.contentTable == null){
								$("#chatBox").append
								("<a href='"+bubbles[b].data.cover.data.action.data.url+"' target='_blank'>" + 
										bubbles[b].data.cover.data.action.data.url+ "</a><br><br>");							
							} else {
								$("#chatBox").append("<div class='msgBox receive'><span id='in'><span>챗봇</span><br><span>" + bubbles[b].data.cover.data.description+ "</span></span></div><br><br>");	
								// 챗봇으로 부터 받은 텍스트 답변을 음성으로 변환하기 위해 TTS 호출									   
								callAjaxTTS(bubbles[b].data.cover.data.description);										
							}
						} 	else if(bubbles[b].data.cover.type=="text"){//멀티링크 답변이면
							$("#chatBox").append("<div class='msgBox receive'><span id='in'><span>챗봇</span><br><span>" + bubbles[b].data.cover.data.description+ "</span></span></div><br><br>");
							// 챗봇으로 부터 받은 텍스트 답변을 음성으로 변환하기 위해 TTS 호출									   
							callAjaxTTS(bubbles[b].data.cover.data.description);	
						}
						
						// 이미지 / 멀티링크 답변 공통 (contentTable 포함)
						for(var ct in bubbles[b].data.contentTable){
							var ct_data = bubbles[ct].data.contentTable[ct];
							for(var ct_d in ct_data){
								$("#chatBox").append
								("<a href='"+ct_data[ct_d].data.data.action.data.url+"' target='_blank'>" + 
									ct_data[ct_d].data.data.action.data.url+ "</a><br><br>");
						    }
					    }// contentTable for문 끝
				    }//template 끝			
				}//bubbles for문 종료
				
				// 스크롤해서 올리기										   
				$("#chatBox").scrollTop($("#chatBox").prop("scrollHeight"));	
				
				
				
				
				///////////////////////////////////////////////////////////////////////////////		
			},
			error:function(){
				// 오류있을 경우 수행 되는 함수
				alert("전송 실패");
			},
 		}); // ajax 끝
 	} // function 끝
 	
 	
 	function callAjaxTTS(result){
 		$.ajax({
 			type: "post",
 			url: "chatbotTTS",
 			data:{"message": result},
 			dataType:"text",
 			success: function(result){
		 		$('#audio').attr('src', '/audio/' + result)[0].play();
		 		
 			},
 			error: function(){
 				alert("전송 실패");
 			}
 		});	
	}
});







