/**
 * 
 */
 
 $(document).ready(function () {

});

function deleteReviewComment(reviewCommentId) {

    if (confirm("댓글을 삭제하시겠습니까?")) {
        $.ajax({
            type: "POST",
            url: "/review/deleteReviewComment",
            data: {
                "reviewCommentId": reviewCommentId,
                "reviewNoteId" : $('#reviewNoteId').val()
            }, success: function (data) {
                if (data == "SUCCESS") {
                    alert("삭제 완료!");
                    $("#comment-box").load(window.location.href + " #comment-box > *"); //띄어쓰기 주의!!!

                    var commentNum = $('#commentNumMain').text();
                    commentNum *= 1;
                    $("#commentNumMain").text(--commentNum);
                } else {
                    alert("삭제 실패!");
                }

            }, error: function () {
                console.log('fail');
                alert("오류 발생!");
            }
        });
    }


}



 