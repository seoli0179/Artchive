$(document).ready(function () {
    $('#btn').on('click', function () {
        login();
    });

    $('#pw').on('keyup', function (key) {
        if (key.keyCode == 13) {
            login();
        }
    });



});

function login(){
    $.ajax({
        type: "POST",
        url: "/admin/login",
        data: {
            "id": $('#id').val(),
            "pw": $('#pw').val()
        },
        success: function (data) {
            if(data){
                location.href = "/admin/index";
            }else{
                alert("아이디 또는 비밀번호를 잘못입력하셨습니다!");
            }
        },
        error: function () {
            console.log('fail');
        }
    });
}