$(document).ready(function () {



    $.ajax({
        type: "post",
        url: "/admin/exhbn/select",
        data: {
            "page": 1,
            "searchType" : "전체",
            "searchValue" : ""
        },
        dataType: "HTML",
        success: function (result) {
            $('#exhbnResult').html(result);

            var page = 1;

            $('.pageNumList').empty();
            var maxCount = $('#maxCount').val();

            page *= 1;
            page--;

            var temp = parseInt(page / 5) * 5;
            temp = (temp == 0) ? 1 : temp;
            $('.pageNumList').append("<li onclick='pagemove(1)'>" + "<<" + "</li>");
            $('.pageNumList').append("<li onclick='pagemove(" + temp + ")'>" + "<" + "</li>");

            var num = parseInt(page / 5) * 5 + 1;
            console.log(num);
            page++;
            for (let i = 0; i < 5; i++) {
                if (num < maxCount) {
                    if (num == page)
                        $('.pageNumList').append("<li class=\"pageOn\" onclick='pagemove(" + num + ")'>" + num + "</li>");
                    else
                        $('.pageNumList').append("<li onclick='pagemove(" + num + ")'>" + num + "</li>");
                }
                num = (num < maxCount) ? num + 1 : maxCount;
            }
            num = (num >= maxCount) ? num - 1 : num;
            $('.pageNumList').append("<li onclick='pagemove(" + num + ")'>" + ">" + "</li>");
            $('.pageNumList').append("<li onclick='pagemove(" + --maxCount + ")'>" + ">>" + "</li>");
        },
        error: function () {
            alert('오류!');
        },
    });

});

function pagemove(page) {
    $.ajax({
        type: "post",
        url: "/admin/exhbn/select",
        data: {
            "page": page,
            "searchType" : $('#searchType option:selected').val(),
            "searchValue" : $('#searchValue').val()
        },
        dataType: "HTML",
        success: function (result) {

            $('#exhbnResult').html(result);
            $('.pageNumList').empty();
            var maxCount = $('#maxCount').val();

            page *= 1;
            page--;

            var temp = parseInt(page / 5) * 5;
            temp = (temp == 0) ? 1 : temp;
            $('.pageNumList').append("<li onclick='pagemove(1)'>" + "<<" + "</li>");
            $('.pageNumList').append("<li onclick='pagemove(" + temp + ")'>" + "<" + "</li>");

            var num = parseInt(page / 5) * 5 + 1;
            console.log(num);
            page++;
            for (let i = 0; i < 5; i++) {
                if (num < maxCount) {
                    if (num == page)
                        $('.pageNumList').append("<li class=\"pageOn\" onclick='pagemove(" + num + ")'>" + num + "</li>");
                    else
                        $('.pageNumList').append("<li onclick='pagemove(" + num + ")'>" + num + "</li>");
                }
                num = (num < maxCount) ? num + 1 : maxCount;
            }
            num = (num >= maxCount) ? num - 1 : num;
            $('.pageNumList').append("<li onclick='pagemove(" + num + ")'>" + ">" + "</li>");
            $('.pageNumList').append("<li onclick='pagemove(" + --maxCount + ")'>" + ">>" + "</li>");


        },
        error: function () {
            alert('오류!');
        },
    });
}