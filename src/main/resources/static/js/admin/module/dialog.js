$( function() {

    const modal = $('#modal');

    for (let i = 0; i < 10; i++) {
        $("#editBtn_" + i).on("click", function (el) {
            modal.css('display','block');
            $("#iframe-box").html(`<iframe class="updateExhbnForm" src="/admin/exhbn/updateview" />`);
        });
    }

    $('#closeBtn').on('click', function (){
        modal.css('display','none');
    });

} );