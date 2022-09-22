$(document).ready(function (){
    $("#postCommentBtn").on("click", function(){
        let words = $("#story").val().length;
        if (words>1 && words<500 ) {
            $.ajax({
                type: "POST",
                url: "/course/insertComment",
                data: {
                    "courseId":$("#courseId").val(),
                    "comment": $('#story').val()
                },
                success: function (data) {
                    alert("작성 완료!");
                    $("#story").val("");
                    $('#comment').load(window.location.href +  " #comment > *");
                },
                error: function (request, status, error) {
                    alert("error!");
                    console.log("code=" + request.status + "message=" + request.responseText + "error=" + error); //실패시처리
                }
            })
        }
        if (words == 0) {
            alert("댓글 내용을 입력하세요.");
        }
        if (words >500) {
            alert("댓글은 500자를 넘길 수 없습니다.");
        }
    });
});