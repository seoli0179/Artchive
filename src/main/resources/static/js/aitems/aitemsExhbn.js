$(document).ready(function () {
    $.ajax({
        type: "post",
        url: "/aitems/personalRecommend",
        dataType:"html",
        success: function (result) {
            $('#exhbnRecommendBox').html(result);
        },
        error: function () {
            alert("전송 실패");
        },
    });
});