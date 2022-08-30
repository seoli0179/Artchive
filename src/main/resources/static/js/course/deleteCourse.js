$(function (){

    // 삭제
    let deleteBtns = document.querySelectorAll(".deleteBtn");

    deleteBtns.forEach((el,index) => {
        alert(index);
        $(this).on("click", function () {
            if(confirm("항목을 삭제하시겠습니까?")){
                $("#route"+index).remove(); // jsp 태그 삭제

                // sites에서 값이 동일한 요소 삭제
                for (let i=0; i<sites.length; i++){
                    if(sites[i]==sites_copy[index]) sites.splice(i,1);
                }
            }
        })
    });


});