$(document).ready(function () {
    $('.exhbnImgClick').each(function (i) {
        $(this).click(function (e) {
            e.preventDefault();
            //alert(i + '번 버튼 ');
            location.href = "/exhbn/detail/" + $('#exhbnId_' + i).val();
        });
    });
});