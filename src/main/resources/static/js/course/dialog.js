

let dialog;
let addBtn;

$(document).ready(function (){
    dialog = $("#courseDialog");
});

function courseAddDialog(places, i) {
    let data = JSON.stringify(places[i]);
    $("#detailPlaceUrl").html(`<iframe class="detailUrl" src="${places[i].place_url}" />`);
    $("#addBtnBox").html(`
        <input type="button" id="addBtn" name="${i}" class="addBtn black-btn" value="코스에 추가">
    `);
    dialog.dialog({
        width: 1080,
        height: 650
    });

    $('#addBtn').on("click", function (){
        let idx = $(this).attr('name');
        console.log(idx);
        addCourseItem(result, idx);
        dialog.dialog("close");
    });

}

