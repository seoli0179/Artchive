/**
 * 	reviewDelete.js
 */
 
 $(document).ready(function(){
 	$('#reviewDelete').on('click',function(){
 	if(confirm("삭제하시겠습니까?")) {
 		 $.ajax({
            type: "POST",
            url: "/review/deleteReviewNote",
            data: {
                "reviewNoteId": $('#reviewNoteId').val()
            },
            success: function (data) {
                alert("삭제 완료!");
                location.href = "/review/reviewNoteList";
            },
            error: function () {
                console.log('fail');
                alert("오류 발생!");
            }
        });
 	}
 	});
 
 });