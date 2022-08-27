$( function() {

    let count = 0;

    /**
     * sites = [["장소명","주소",카테고리no,위도,경도]]
     * 1: 전시관
     * 2: 식당
     * 3: 카페
     * 4: 기타 */
    // let sites = [["전시관","전시관주소1"], ["식당","식당주소2"], ["카페","카페주소3"], ["안녕","주소1234"], ["123213","12312421"]];

    let sites = ["전시관", "식당", "카페", "안녕"];
    let address = ["adress1", "adress2", "카페주소3", "주소1234"]

    let listItems = [];
    const sortableList = document.getElementById("sortable");
    const startPoint = document.getElementById("startPoint");
    const endPoint = document.getElementById("endPoint");

    let dragStartIndex;

    // 페이지 구성
    createList();

    // 삭제
    let deleteBtns = document.querySelectorAll(".deleteBtn");

    let i = 0;


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
    let sites_copy=[...sites];

    deleteBtns.forEach((el,index) => {
        $(document).on("click","#"+address[index], function (){
            if(confirm("항목을 삭제하시겠습니까?")){
                $("#"+sites_copy[index]).remove(); // jsp 태그 삭제

                // sites에서 값이 동일한 요소 삭제
                for (let i=0; i<sites.length; i++){
                    if(sites[i]==sites_copy[index]) sites.splice(i,1);
                }
            }
        })
    });

    /** 초반 createList */
    function createList() {
        for(let i=0; i<sites.length; i++){
                // count +=1;
                const listItem = document.createElement('li',);
                listItem.setAttribute('data-index', i);
                listItem.setAttribute("class","route-row courseItem");
                listItem.setAttribute("id",sites[i]);
                listItem.setAttribute("draggable","true");

                listItem.innerHTML=`
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
                            <div class="siteAddress">${address[i]}</div>
                        </div>
                    </div>
                    <div class="content memo-box">
                        <textarea class="place-memo-input" placeholder="메모를 입력하세요."></textarea>
                    </div>
                    <div class="delete" id="deleteBtnBox">
                        <i class="fa-solid fa-circle-minus fa-2xl deleteBtn" id="${address[i]}"></i>
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
                attribute: "id"
            });
            console.log(newArr);

            sites = [];

            for (let i in newArr) {
                let tempArr = newArr[i].split(",,");
                sites.push(tempArr);
            }

            console.log(sites);
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

// function remove(element, id) {
//     if(confirm("항목을 삭제하시겠습니까?")){
//         $("#"+id).remove();
//     }
//     let tempArr = id.split(",,");
//     let index = sites.indexOf(tempArr);
//     sites = [...sites.slice(0,index), ...sites.slice(index+1)]; // 태그 삭제
//     element.parentElement.parentElement.remove(); // li 삭제
// }