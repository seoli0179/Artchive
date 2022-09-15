/**
 * 
 */
 
 $(document).ready(function () {
    $('#like').on('click', function () {
        $.ajax({
            type: "post",
            url: "/review/reviewNoteLike",
            data: {
                "reviewNoteId": $('#reviewNoteId').val()
            },
            success: function (result) {
                if (result == "TRUE") {
                    $('#like').css('color', 'red');
                    var likeNum = $('#likeNum').text();
                    likeNum *= 1;
                    $('#likeNum').text(++likeNum);
                } else {
                    $('#like').css('color', 'black');
                    var likeNum = $('#likeNum').text();
                    likeNum *= 1;
                    $('#likeNum').text(--likeNum);
                }
            },
            error: function () {
                alert('오류!')
            },
        });
    });
});