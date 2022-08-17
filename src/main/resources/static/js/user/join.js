let state = 0;

$(document).ready(function () {
    stateController(state);
    $('#btn_next').val("NEXT");

    $('.fa-eye').show();
    $('.fa-eye-slash').hide();

    $('.fa-eye').on('click', function () {
        $('.fa-eye').hide();
        $('.fa-eye-slash').show();
        $('#pw').prop('type', 'text');
    });

    $('.fa-eye-slash').on('click', function () {
        $('.fa-eye').show();
        $('.fa-eye-slash').hide();
        $('#pw').prop('type', 'password');
    });

    $('#id_check').on('click', function () {
        $('#id_check').css('color', 'Green');
    });

    $('#id').on('keyup', function () {
        $('#id_check').css('color', 'Red');
    });


    $('#btn_next').on('click', function () {
        if (state == 0) {
            if ($('#id').val() == "") {
                $('#id').next('label').addClass('warning');
                setTimeout(function () {
                    $('label').removeClass('warning');
                }, 1500);
            } else if ($('#pw').val() == "") {
                $('#pw').next('label').addClass('warning');
                setTimeout(function () {
                    $('label').removeClass('warning');
                }, 1500);
            } else {
                state = 1;
                stateController(state);
            }
        } else if (state == 1) {
            state = 2;
            stateController(state);
        } else if (state == 2) {
            state = 3;
            stateController(state);
        } else if (state == 3) {
            state = 4;
            stateController(state);
        }
    });

    $('#btn_back').on('click', function () {
        state = (state == 0) ? 0 : state - 1;
        stateController(state);
    });

    $('.sendmessage').on('click', function () {
        $('.email_check').show();
    });

});

function stateController(state) {
    if (state == 0) {
        $('.id').show();
        $('.pw').show();
        $('.email').hide();
        $('.email_check').hide();
        $('.nickname').hide();
        $('.birth').hide();
        $('.gender').hide();
        $('.complete').hide();

        $('.progressbar>li:eq(0)').addClass('active');
        $('.progressbar>li:eq(1)').removeClass('active');
        $('.progressbar>li:eq(2)').removeClass('active');
        $('.progressbar>li:eq(3)').removeClass('active');

        $('#btn_next').val("NEXT");

    } else if (state == 1) {
        $('.id').hide();
        $('.pw').hide();
        $('.email').show();
        $('.email_check').hide();
        $('.nickname').show();
        $('.birth').hide();
        $('.gender').hide();
        $('.complete').hide();

        $('.progressbar>li:eq(0)').addClass('active');
        $('.progressbar>li:eq(1)').addClass('active');
        $('.progressbar>li:eq(2)').removeClass('active');
        $('.progressbar>li:eq(3)').removeClass('active');

        $('#btn_next').val("NEXT");

    } else if (state == 2) {
        $('.id').hide();
        $('.pw').hide();
        $('.email').hide();
        $('.email_check').hide();
        $('.nickname').hide();
        $('.birth').show();
        $('.gender').show();
        $('.complete').hide();

        $('.progressbar>li:eq(0)').addClass('active');
        $('.progressbar>li:eq(1)').addClass('active');
        $('.progressbar>li:eq(2)').addClass('active');
        $('.progressbar>li:eq(3)').removeClass('active');

        $('#btn_next').val("COMPLETE");

    } else if (state == 3) {
        $('.id').hide();
        $('.pw').hide();
        $('.email').hide();
        $('.email_check').hide();
        $('.nickname').hide();
        $('.birth').hide();
        $('.gender').hide();
        $('.complete').show();

        $('.back').hide();

        $('.progressbar>li:eq(0)').addClass('active');
        $('.progressbar>li:eq(1)').addClass('active');
        $('.progressbar>li:eq(2)').addClass('active');
        $('.progressbar>li:eq(3)').addClass('active');

        $('#btn_next').val("Login");


    } else if (state == 4) {
        location.href = "/login";
    }
}