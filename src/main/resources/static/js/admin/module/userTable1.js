$(document).ready(function () {

    $('.editBtn').each(function (index, item){
        $(this).on('click', function(e){

            e.preventDefault();
            $('#displayBox_'+index).slideDown();
            $('#editBtn_'+index).css('display','none');
            $('#resetBtn_'+index).css('display','inline-block');
        });

    });

    $('.saveBtn').each(function (index, item){
        $(this).on('click', function(e){
            e.preventDefault();
            $('#displayBox_'+index).slideUp();
            $('#resetBtn_'+index).css('display','none');
            $('#editBtn_'+index).css('display','inline-block');
        });
    });

    $('.resetBtn').each(function (index, item){
        $(this).on('click', function(e){
            e.preventDefault();
            $('#displayBox_'+index).slideUp();
            $('#resetBtn_'+index).css('display','none');
            $('#editBtn_'+index).css('display','inline-block');
        });
    });

});