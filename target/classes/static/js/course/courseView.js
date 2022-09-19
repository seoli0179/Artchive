// course detail view create list and mapping
document.write('<script type=\"text/javascript\" src=\"mapEdit.js\"><\/script>');
document.write('<script type=\"text/javascript\" src=\"timelineEdit.js\"><\/script>');

// 변수 설정
let positions = []; // 코스 정보를 저장하는 배열입니다.

$(document).ready(function() {
    // list init
    $.ajax({
        type: "POST",
        url: "/course/getCourse",
        data: {"courseId": $("#courseId").val()},
        dataType: "json",
        success: function (result) {
            positions = result;
        },
        error: function () {
            alert("error!");
        }
    }); // ajax end.

});