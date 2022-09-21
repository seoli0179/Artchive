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

    $('#write').on('click',function (){
        $.ajax({
            type: "post",
            url: "/admin/exhbn/insert",
            data: {
                "exhbnId" : $('#exhbnId').val(),
                "exhbnTitle" : $('#exhbnTitle').val(),
                "exhbnImgUrl" : $('#exhbnImgUrl').val(),
                "exhbnUrl" : $('#exhbnUrl').val(),
                "exhbnPlaceUrl" : $('#exhbnPlaceUrl').val(),
                "exhbnArea" : $('#exhbnArea').val(),
                "exhbnPlace" : $('#exhbnPlace').val(),
                "exhbnPlaceAddr" : $('#exhbnPlaceAddr').val(),
                "exhbnStartDate" : $('#exhbnStartDate').val(),
                "exhbnEndDate" : $('#exhbnEndDate').val(),
                "exhbnPrice" : $('#exhbnPrice').val(),
                "exhbnPrice1" : $('#exhbnPrice1').val(),
                "exhbnPhone" : $('#exhbnPhone').val(),
                "gpsX" : $('#gpsX').val(),
                "gpsY" : $('#gpsY').val(),
                "exhbnDetail" : $('#summernote').summernote('code'),
                "exhbnType" : $('#exhbnType option:selected').val()
            },
            success: function (result) {
                alert(result);
                if (result){
                    window.history.go(-1);
                }
            },
            error: function () {
                alert("전송 실패");
            },
        });
    });

});



