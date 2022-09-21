$(document).ready(function () {

    $("#searchValue").on("keyup", function (key) {
        if (key.keyCode == 13) {
            $.ajax({
                type: "post",
                url: "/admin/exhbn/select",
                data: {
                    "page": $('#currentPage').val(),
                    "searchType": $('#searchType option:selected').val(),
                    "searchValue": $('#searchValue').val()
                },
                dataType: "HTML",
                success: function (result) {
                    $('#exhbnResult').html(result);
                },
                error: function () {
                    alert('오류!');
                },
            });
        }
    });

    $('#searchButton').on('click', function () {
        $.ajax({
            type: "post",
            url: "/admin/exhbn/select",
            data: {
                "page": $('#currentPage').val(),
                "searchType": $('#searchType option:selected').val(),
                "searchValue": $('#searchValue').val()
            },
            dataType: "HTML",
            success: function (result) {
                $('#exhbnResult').html(result);
            },
            error: function () {
                alert('오류!');
            },
        });
    });

});