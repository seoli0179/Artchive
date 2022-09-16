/**
 * 
 */
 
 $(document).ready(function () {
    $('#summernote').summernote({
        tabsize: 2,
        width: 1080,
        height: 600,
        toolbar: [
            ['style', ['style']],
            ['font', ['bold', 'underline', 'clear']],
            ['color', ['color']],
            ['para', ['ul', 'ol', 'paragraph']],
            ['table', ['table']],
            ['insert', ['link', 'picture', 'video']],
            ['view', ['fullscreen', 'codeview', 'help']]
        ]
    });

    $('#back').on('click', function () {
        window.history.back();
    });

    $('#reviewWrite').on('click', function () {
        if ($('#reviewNoteTitle').val().length > 3) {
            $.ajax({
                type: "POST",
                url: "/review/createReviewNote",
                data: {
                    "reviewNoteTitle": $('#reviewNoteTitle').val(),
                    "courseId": $('#courseId').val(),
                    "userId" : $('#userId').val(),
                    "exhbnId": $('#exhbnId').val(),
                    "reviewNote": $('#summernote').summernote('code')
                },
                success: function (data) {
                    alert("작성 완료!");
                    location.href = "/review/reviewNoteList";
                },
                error: function () {
                    console.log('fail');
                    alert("오류 발생!");
                }
            });
        } else {
            alert("게시글 제목을 입력해 주세요!");
        }

    });

});



 