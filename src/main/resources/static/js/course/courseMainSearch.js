/**
 * 
 */
 
 $(document).ready(function () {

	$('#reviewNoteSearch').on('click', function(){
 		//alert($('#inner-searchbar').val());
 		var title = $('#inner-searchbar').val();
 		// 기본 기능 중단
 		//event.preventDefault()
 		//location.href = "/review/reviewNoteList";
 		$.ajax({
            type: "post",
            url: "/review/courseReviewNoteSearch",
            data: {
                "reviewNoteTitle": title
             
            },
            success: function (result) {
            // alert("검색 결과를 보여드릴게요");

            $('#course-wrap').empty();
            $('#course-wrap').append(result);
            
			console.log(result);            },
            error: function () {
                alert('검색어를 확인하세요')
            },
        });
 		
 	}); // click
 	
 });