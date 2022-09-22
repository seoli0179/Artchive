$( function() {

    const modal = $('#modal');

    $('.editBtn').each(function (index, item) {
        $(this).on('click', function (e) {

            e.preventDefault();
            $("#editBtn_" + i).on("click", function (el) {
                modal.css('display','block');
                $("#iframe-box").html(`<iframe class="updateExhbnForm" src="/admin/exhbn/updateview" />`);
            });
        });

    });

    $('#closeBtn').on('click', function (){
        modal.css('display','none');
    });

} );