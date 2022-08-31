/**
 * movieSearch.js
 */
 
/* function getSearchDate(event)*/
 $(document).ready(function(){
 	$('#black_search_bar').on('click', function(){
 		alert("검색창으로 이동합니다.")
 		event.preventDefault();
 		var inner_searchbar = $('#inner-searchbar').val();	

 		var formData = $(this).serialize();
 		
 	location.href= "/exhbn/searchlist?keyword="+ inner_searchbar;
 	
 		/*$.ajax({
 			type:"post",
 			url:"/exhbn/searchlist", 
 			data:{
			
			"keyword": inner_searchbar
			
 			},
 			success:function(result){ 
 			// 반환된 결과를 searchResultBox <div>에 삽입
 				// 페이지 전체를 안에 넣어둠.
			console.log(result);
			alert(result); 				
 			},
 			error:function(){
 				// 오류있을 경우 수행되는 함수
 				
 				alert("전송 실패");
 			},
 			complete:function(){
 				//alert("작업완료");
 			}			
 		}); 	// ajax 끝*/
 	}); // submit 끝 
 });  // ready 끝
 
  