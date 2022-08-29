let count = 0;

let sites = [];
let sites_copy = [];
let addresses = [];
let memos = [];
let listItems = [];

$( function() {

    const sortableList = document.getElementById("sortable");
    const startPoint = document.getElementById("startPoint");
    const endPoint = document.getElementById("endPoint");

    let dragStartIndex;

    let num = document.getElementById("courseId").value;
    $.ajax({
        type:"POST",
        url:"/course/getCourse",
        data:{"courseId":num},
        dataType:"json",
        success:function (result){
            console.log(result);
            $.each(result, function (index,item){
                sites.push(item.siteName);
                addresses.push(item.siteAddresses);
                memos.push(item.siteMemos);
            });
            createList();
        },
        error:function (result){
            alert("error");
        }
    });

    // 페이지 구성
    createList();

    // delete 구현1
    // deleteBtns.forEach(function (el, index){
    //     $(document).on("click", "#"+address[index], function (){
    //         if(confirm("항목을 삭제하시겠습니까?")){
    //             if(sites.length == 1 || sites.length == index){
    //                 sites.pop();
    //                 address.pop();
    //             } else {
    //             sites.splice(index,1);
    //             address.splice(index,1);
    //             }
    //             $("#" + sites[index]).remove(); // jsp 태그 삭제
    //
    //             $(".courseItem").remove();
    //             createList();
    //         }
    //     });
    // });


    // delete Course item 구현2
    sites_copy=[...sites];

    // // 삭제
    // let deleteBtns = document.querySelectorAll(".deleteBtn");
    //
    // deleteBtns.forEach((el,index) => {
    //     alert(index);
    //     $(this).on("click", function () {
    //         if(confirm("항목을 삭제하시겠습니까?")){
    //             $("#route"+index).remove(); // jsp 태그 삭제
    //
    //             // sites에서 값이 동일한 요소 삭제
    //             for (let i=0; i<sites.length; i++){
    //                 if(sites[i]==sites_copy[index]) sites.splice(i,1);
    //             }
    //         }
    //     })
    // });



    /** 초반 createList */
    function createList() {
        for(let i=0; i<sites.length; i++){
                const listItem = document.createElement('li',);
                listItem.setAttribute('data-index', i);
                listItem.setAttribute("class","route-row courseItem");
                listItem.setAttribute("id","route"+i);
                listItem.setAttribute("draggable","true");
                listItem.setAttribute("value", sites[i]+";;"+addresses[i]+";;"+memos[i])

                listItem.innerHTML=`
                    <div class="left-side">
                        <div class="moveHandler">
                            <i class="fa-solid fa-bars moveHandlerBtn"></i>
                        </div>
                        <div class="line"></div>
                        <div class="left">
                            <div class="subCourse-dot">${i+1}</div>
                        </div>
                        <div class="content">
                            <div class="where">
                                <h3 class="siteName">${sites[i]}</h3>
                                <div class="siteAddress">${addresses[i]}</div>
                            </div>
                        </div>
                        <div class="content memo-box">
                            <textarea class="place-memo-input" placeholder="메모를 입력하세요.">${memos[i]}</textarea>
                        </div>
                    </div>
                    <div class="delete" id="deleteBtnBox">
                        <i class="fa-solid fa-circle-minus fa-2xl deleteBtn" id="deleteBtn${i}" onclick="remove(this, 'route${i}')"></i>
                    </div>
                    `;
            // ${sites[i]}
                listItems.push(listItem);

                $("#sortable").append(listItem);
            }
    }

    // 정렬 가능한 리스트
    // 순서 바꿔 배열 다시 저장하기
    $("#sortable").sortable({
        cursor: "move",
        delay: 100,
        helper: "clone",
        items: "> li",
        opacity: 0.5,
        revert: 10,
        handle: ".moveHandler",
        start : function(event, ui) {
        },
        change : function(event, ui) {
        },
        update : function (event, ui) {
            let newArr = $("#sortable").sortable('toArray', {
                attribute: "value"
            });

            sites = [];
            addresses = [];
            memos = [];

            for (let i in newArr) {
                let tempArr = newArr[i].split(";;");
                sites.push(tempArr[0]);
                addresses.push(tempArr[1]);
                memos.push(tempArr[2]);
            }

            let li = document.getElementsByClassName("route-row");
            $(".courseItem").remove();

            createList();

            // sites_copy 재구현
            sites_copy=[...sites];
        },
        axis : 'y'
    });

    $("#sortable").disableSelection();


    $( ".portlet-toggle" ).on( "click", function() {
        let icon = $( this );
        icon.toggleClass( "ui-icon-minusthick ui-icon-plusthick" );
        icon.closest( ".portlet" ).find( ".portlet-content" ).toggle();
    });

} );

function remove(element, id) {
    sites_copy=[...sites];
    if(confirm("항목을 삭제하시겠습니까?")){
        $("#"+id).remove();
        let tempArr = id.split(",,");
        let index = sites.indexOf(tempArr);
        for (let i=0; i<sites.length; i++){
            if(sites[i]==sites_copy[index]) sites.splice(i,1);
            }
        console.log(sites);
        element.parentElement.parentElement.remove(); // li 삭제
    }
}

// //////

/** ajax 배열 가져오기 ajax **/
// function getCourse() {
//     let num = document.getElementById("courseId").value;
//     $.ajax({
//         type:"POST",
//         url:"/course/getCourse",
//         data:{"courseId":num},
//         dataType:"json",
//         success:function (result){
//             console.log(result);
//             $.each(result, function (index,item){
//                 sites.push(item.siteName);
//                 addresses.push(item.siteAddresses);
//                 memos.push(item.siteMemos);
//
//                 createList();
//             });
//         },
//         error:function (result){
//             alert("error");
//         }
//     });
// }