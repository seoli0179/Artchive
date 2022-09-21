$(function () {

    const modal = $('#modal');

    $('.editBtn').each(function (i) {
        $(this).click(function (e) {
            e.preventDefault();
            //alert(i + '번 버튼 ');
            console.log($('#editBtn_' + i).data('id'));
            var url = "/admin/notice/updateview?noteId=" + $('#editBtn_' + i).data('id');
            modal.css('display', 'block');
            $('#iframe-box').html("<iframe class=\"updateExhbnForm\" src=\"" + url + "\" />");

        });
    });

    $('#closeBtn').on('click', function () {
        modal.css('display', 'none');
    });



});