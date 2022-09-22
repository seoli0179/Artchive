$(document).ready(function (){
    for (let i=0; i<10; i ++) {
        if ($('#noteStatusBtn_'+i).text() === 'DELETE') {
            console.log($('#noteStatusBtn_',i).text());
            $('#noteStatusBtn_'+i).css('background-color', 'hotpink');
        }
    }

});