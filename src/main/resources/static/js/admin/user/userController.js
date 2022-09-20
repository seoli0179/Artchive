$(document).ready(function () {

    $.ajax({
        type: "post",
        url: "/admin/user/select/all",
        dataType: "HTML",
        success: function (result) {
            $('#userResult').html(result);
        },
        error: function () {
            alert('오류!');
        },
    });

});