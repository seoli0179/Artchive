$(document).ready(function (){
    $('#btn').on('click', function () {
        login();
    });

    $('#pw').on('keyup',function (key){
        if(key.keyCode==13) {
            login();
        }
    });

});

function login(){
    if ($('#id').val() == "") {
        $('#id').next('label').addClass('warning');
        $('#id').focus();
        setTimeout(function () {
            $('label').removeClass('warning');
        }, 1500);
    } else if ($('#pw').val() == "") {
        $('#pw').next('label').addClass('warning');
        $('#pw').focus();
        setTimeout(function () {
            $('label').removeClass('warning');
        }, 1500);
    } else {
        $.ajax({
            type: "POST",
            url: "/user/selectUser",
            data: {
                "id": $('#id').val(),
                "pw": $('#pw').val()
            },
            success: function (data) {
                if(data=="SUCCESS"){
                    location.href="/";
                }
                else{
                    alert("아이디 또는 비밀번호가 틀렸습니다");
                }
            },
            error: function () {
                console.log('fail');
            }
        });
    }
}
