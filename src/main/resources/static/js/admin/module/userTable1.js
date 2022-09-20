$(document).ready(function () {

    $('.editBtn').each(function (index, item) {
        $(this).on('click', function (e) {

            e.preventDefault();
            $('#displayBox_' + index).slideDown();
            $('#editBtn_' + index).css('display', 'none');
            $('#resetBtn_' + index).css('display', 'inline-block');
        });

    });

    $('.saveBtn').each(function (index, item) {
        $(this).on('click', function (e) {
            e.preventDefault();
            $('#displayBox_' + index).slideUp();
            $('#resetBtn_' + index).css('display', 'none');
            $('#editBtn_' + index).css('display', 'inline-block');
            e.preventDefault();
            $.ajax({
                type: "post",
                url: "/admin/user/update",
                data: {
                    "userId": $('#userId_' + index).val(),
                    "userEmail": $('#userEmail_' + index).val(),
                    "userRoll": $('#userRoll_' + index + ' option:selected').val(),
                    "userState": $('#userState_' + index + ' option:selected').val(),
                    "userNickname": $('#userNickname_' + index).val()
                },
                success: function (result) {
                    alert(result);
                },
                error: function () {
                    alert('오류!');
                },
            });
        });
    });

    $('.resetBtn').each(function (index, item) {
        $(this).on('click', function (e) {
            e.preventDefault();
            $('#displayBox_' + index).slideUp();
            $('#resetBtn_' + index).css('display', 'none');
            $('#editBtn_' + index).css('display', 'inline-block');
        });
    });

});