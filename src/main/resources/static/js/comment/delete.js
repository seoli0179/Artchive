$(document).ready(function () {

});

function deleteComment(commentId){
    $.ajax({
        type: "POST",
        url: "/comment/deleteComment",
        data: {
            "commentId": commentId
        },
        success: function (data) {
            if (data == "SUCCESS") {
                alert("삭제 완료!");
                $("#comment-box").load(window.location.href + " #comment-box > *"); //띄어쓰기 주의!!!
            } else {
                alert("삭제 실패!");
            }

        },
        error: function () {
            console.log('fail');
            alert("오류 발생!");
        }
    });
}



