$(document).ready(function(){

    $('.dropdown').each(function(){
        $(this).find('.dropdownMenu').hide();
    });


    $('.dropdown').hover(function(){
            $(this).find('.dropdownMenu').slideDown();
        },
        function(){
            $(this).find('.dropdownMenu').slideUp();
        });
});