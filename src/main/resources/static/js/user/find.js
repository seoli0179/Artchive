$(document).ready(function () {
    $(document).ready(function () {

        $('#btn_next').val("Login");

        $('.pw').hide();
        $('.email_check').hide();
        $('.complete1').hide();
        $('.complete2').hide();

    });

    $('#id_check').on('click', function () {
        $('.id').hide();
        $('.complete1').text($('#id').val() + ' 주소로 ID를 보냈습니다');
        $('.complete1').show();
    });

    $('#pw_check2').on('click', function () {
        $('.pw').hide();
        $('.email_check').hide();
        $('.complete2').text($('#pw').val() + ' 주소로 초기화된  Password를 보냈습니다');
        $('.complete2').show();
    });

    $('.tab_id').on('click', function () {
        $('.id').show();
        $('.pw').hide();
        $('.email_check').hide();
        $('.complete1').hide();
        $('.complete2').hide();
    });

    $('.tab_pw').on('click', function () {
        $('.id').hide();
        $('.pw').show();
        $('.email_check').hide();
        $('.complete1').hide();
        $('.complete2').hide();
    });

    $('#pw_check').on('click', function () {
        $('#pw_check').css('color', 'Green');
        $('.email_check').show();
    });


});