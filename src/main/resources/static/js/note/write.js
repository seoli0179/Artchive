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
        ], callbacks: {	//여기 부분이 이미지를 첨부하는 부분
            onImageUpload: function (files) {
                uploadSummernoteImageFile(files[0], this);
            },
            onPaste: function (e) {
                var clipboardData = e.originalEvent.clipboardData;
                if (clipboardData && clipboardData.items && clipboardData.items.length) {
                    var item = clipboardData.items[0];
                    if (item.kind === 'file' && item.type.indexOf('image/') !== -1) {
                        e.preventDefault();
                    }
                }
            }
        }
    });

    $('#back').on('click', function () {
        window.history.back();
    });

    $('#write').on('click', function () {
        if ($('#title').val().length > 3) {
            $.ajax({
                type: "POST",
                url: "/note/createNote",
                data: {
                    "title": $('#title').val(),
                    "category": $('#category option:selected').val(),
                    "note": $('#summernote').summernote('code')
                },
                success: function (data) {
                    alert("작성 완료!");
                    window.history.back();
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

function uploadSummernoteImageFile(file, editor) {
    data = new FormData();
    data.append("file", file);
    $.ajax({
        data : data,
        dataType : "json",
        type : "POST",
        url : "/upload/summernote/image",
        contentType : false,
        processData : false,
        success : function(data) {
            //항상 업로드된 파일의 url이 있어야 한다.
            $(editor).summernote('insertImage', data.url);
        }
    });
}

