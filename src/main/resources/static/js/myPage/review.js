/**
 * actHistory.js
 */
 
 $(document).ready(function () {
 
 	var test = getParameterByName('page');
    test *= 1;
    test--;

    var maxCount = parseInt($('#maxDataNum').val() / 10) + 2;
    // console.log(maxCount);

    // console.log(parseInt(test / 5) * 5);
    // console.log(parseInt(test / 5) * 5 + 1);
    // console.log((parseInt(test / 5) + 1) * 5);
    // console.log((parseInt(test / 5) + 1) * 5 + 1);

    var temp = parseInt(test / 5) * 5;
    temp = (temp == 0) ? 1 : temp;
    $('#page-box').append("<div class='nav_btn' onclick='pagemove(" + temp + ")'>" + "<" + "</div>");

    var num = parseInt(test / 5) * 5 + 1;
    test++;
    for (let i = 0; i < 5; i++) {
        if (num < maxCount) {
            if (num == test)
                $('#page-box').append("<div class='nav_btn nav_active' onclick='pagemove(" + num + ")'>" + num + "</div>");
            else
                $('#page-box').append("<div class='nav_btn' onclick='pagemove(" + num + ")'>" + num + "</div>");
        }
        num = (num < maxCount) ? num + 1 : maxCount;
    }
    num = (num >= maxCount) ? num - 1 : num;
    $('#page-box').append("<div class='nav_btn' onclick='pagemove(" + num + ")'>" + ">" + "</div>");
 	
 
}); // document.ready

function deleteReviewNote(reviewNoteId) {

    if (confirm("해당 게시글을 삭제하시겠습니까?")) {
        $.ajax({
            type: "POST",
            url: "/review/deleteReviewNote",
            data: {
                 "reviewNoteId": reviewNoteId
            }, success: function (data) {
                if (data == "SUCCESS") {
                    alert("삭제 완료!");
                    location.href="/myPage/review/" 
                   
                } else {
                    alert("삭제 실패!");
                }

            }, error: function (request,status,error) {
           		 console.log("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
                console.log('fail');
                alert("오류 발생!");
            }
        });
    }


} //deleteNote


function pagemove(page) {
    var queryParams = {
        page: page,
        category: getParameterByName('category'),
        sort: getParameterByName('sort'),
        keyword: getParameterByName('keyword')
    }
    location.href = location.pathname + '?' + new URLSearchParams(queryParams).toString();
}

function sortMove(sort) {
    var queryParams = {
        page: 1,
        category: getParameterByName('category'),
        sort: sort,
        keyword: getParameterByName('keyword')
    }
    location.href = location.pathname + '?' + new URLSearchParams(queryParams).toString();
}

function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}