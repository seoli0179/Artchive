$(document).ready(function () {

    $.ajax({
        type: "post",
        url: "/admin/note/select/all",
        dataType:"HTML",
        success: function (result) {
            $('#noteResult').html(result);
        },
        error: function () {
            alert('오류!');
        },
    });

});