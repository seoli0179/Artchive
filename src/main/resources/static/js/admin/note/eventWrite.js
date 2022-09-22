$(document).ready(function () {

    $('#summernote').summernote({
        tabsize: 2,
        width: 800,
        height: 400,
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

    $('#write').on('click', function () {
        $.ajax({
            type: "post",
            url: "/admin/note/insert/event",
            data: {
                "title": $('#title').val(),
                "startDate": $('#startDate').val(),
                "endDate": $('#endDate').val(),
                "content": $('#summernote').summernote('code')
            },
            success: function (result) {
                if (result) {
                    alert("이벤트 작성 성공!");
                    location.href = "/admin/note/view";
                } else {
                    alert("작성 실패!");
                }
            },
            error: function () {
                alert('오류!');
            },
        });
    })
});