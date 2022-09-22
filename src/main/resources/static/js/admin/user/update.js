$(document).ready(function () {

    $('#back').on('click', function () {
        window.history.back();
    });

    $('#write').on('click', function () {
        $.ajax({
            type: "post",
            url: "/admin/user/update",
            data: {
                "userName" : $('#userName').val(),
                "userNickname" : $('#userNickname').val(),
                "userEmail" : $('#userEmail').val(),
                "userId" : $('#userId').val(),
                "userState" : $('#userState option:selected').val(),
                "userRoll" : $('#userRoll option:selected').val()
            },
            success: function (result) {
                if (result){
                    alert("수정 성공!");
                    window.close();
                }else {
                    alert("수정 실패!");
                }
            },
            error: function () {
                alert("전송 실패");
            },
        });

    });

    $('#delete').on('click',function (){
        $.ajax({
            type: "post",
            url: "/admin/exhbn/delete",
            data: {
                "exhbnId" : $('#exhbnId').val()
            },
            success: function (result) {
                if (result){
                    alert("삭제 성공!");
                    window.close();
                }else {
                    alert("삭제 실패!");
                }
            },
            error: function () {
                alert("전송 실패");
            },
        });
    })

});



