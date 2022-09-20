$(document).ready(function () {

    $.ajax({
        type: "post",
        url: "/admin/exhbn/select/all",
        dataType:"HTML",
        success: function (result) {
            $('#exhbnResult').html(result);
        },
        error: function () {
            alert('오류!');
        },
    });

});