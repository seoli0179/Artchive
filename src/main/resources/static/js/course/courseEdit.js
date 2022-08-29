$( function() {

    let count = 0;

    /**
     * sites = [["장소명","주소",카테고리no,위도,경도]]
     * 1: 전시관
     * 2: 식당
     * 3: 카페
     * 4: 기타 */
    let sites = [["전시관","전시관주소1"], ["식당","식당주소2"], ["카페","카페주소3"], ["안녕","주소1234"], ["123213","12312421"]];

    let listItems = [];
    const sortableList = document.getElementById("sortable");
    const startPoint = document.getElementById("startPoint");
    const endPoint = document.getElementById("endPoint");

    let dragStartIndex;

    // 삭제
    function remove(element, id) {
        if(confirm("항목을 삭제하시겠습니까?")){
            $("#"+id).remove();
        }
        let tempArr = id.split(",,");
        let index = sites.indexOf(tempArr);
        sites = [...sites.slice(0,index), ...sites.slice(index+1)]; // 태그 삭제
        element.parentElement.parentElement.remove(); // li 삭제
    }

    /** 초반 createList */
    function createList() {
        [...sites]
            .forEach((siteItem, index)=>{
                count +=1;
                const listItem = document.createElement('li',);
                listItem.setAttribute('data-index', index);
                listItem.setAttribute("class","route-row courseItem");
                listItem.setAttribute("id",siteItem[0]+",,"+siteItem[1]);
                listItem.setAttribute("draggable","true");

                listItem.innerHTML=`
                    <div class="moveHandler">
                        <i class="fa-solid fa-bars moveHandlerBtn"></i>
                    </div>
                    <div class="line"></div>
                    <div class="left">
                        <div class="subCourse-dot">${index+1}</div>
                    </div>
                    <div class="content">
                        <div class="where">
                            <h3 class="siteName">${siteItem[0]}</h3>
                            <div class="siteAddress">${siteItem[1]}</div>
                        </div>
                    </div>
                    <div class="content memo-box">
                        <textarea class="place-memo-input" placeholder="메모를 입력하세요."></textarea>
                    </div>
                    <div class="delete">
                        <i class="fa-solid fa-circle-minus" onclick="remove(this, '${siteItem[0]},,${siteItem[1]}')"></i>
                    </div>
                    `;

                listItems.push(listItem);

                $("#sortable").append(listItem);
                // startPoint.after(listItem);
                // endPoint.before(listItem);
            });
    }

    createList();



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

            sites = []

            for (let i in newArr) {
                let tempArr = newArr[i].split(",,");
                sites.push(tempArr);
            }

            console.log(sites);
            let li = document.getElementsByClassName("route-row");
            $(".courseItem").remove();

            createList();

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