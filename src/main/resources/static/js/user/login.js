$(document).ready(function (){
    $('#btn').on('click', function () {
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
        }

    });
});


