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
            url: "/admin/notice/update",
            data: {
                "noteId" : $('#noteId').val(),
                "noteTitle" : $('#noteTitle').val(),
                "note" : $('#summernote').summernote('code'),
                "pageViewState" : $('#pageViewState option:selected').val()
            },
            success: function (result) {
                if (result){
                    alert("수정 성공!");
                    window.close();
                }else {
                    alert("수정 실패!");
                }
            },
            error: function () {
                alert("전송 실패");
            },
        });

    });

    $('#delete').on('click',function (){
        $.ajax({
            type: "post",
            url: "/admin/exhbn/delete",
            data: {
                "exhbnId" : $('#exhbnId').val()
            },
            success: function (result) {
                if (result){
                    alert("삭제 성공!");
                    window.close();
                }else {
                    alert("삭제 실패!");
                }
            },
            error: function () {
                alert("전송 실패");
            },
        });
    })

});



