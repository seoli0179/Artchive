document.addEventListener("DOMContentLoaded", function(){
    // Handler when the DOM is fully loaded

    // 선택된 전시명으로 코스짜기 버튼
    const selectBtn = document.getElementsByClassName("courseSelect");
    const textBox = document.getElementById("selectedExhbn");
    const selectedBox = document.getElementById("selected");

    for (let i=0; i<selectBtn.length; i++) {
        selectBtn[i].addEventListener('click', function (){
            const radioId = selectBtn[i].id;
            const query = 'label[for="' + radioId + '"]';
            const text = document.querySelector(query).innerText;
            textBox.innerHTML = text;
            selectedBox.style.visibility = "visible";
        });
    }

    // 태그 검색
    const ul = document.getElementById("tagList"),
        input = document.getElementById("inner-searchbar");

    input.addEventListener("keyup", addTag);

    let tags = [];

    function createTag(){
        tags.forEach(tag =>{
            let liTag = `<li> ${tag} <i class="fa-solid fa-xmark"></i></li>`;
            ul.insertAdjacentHTML("afterbegin",liTag); // tag 추가
        });
    }

    function addTag(e){
        if (e.key == "Enter") {
            let tag = e.target.value.replace(/\s+/g, ' '); // 태그에서 다수 공백 삭제
            if(tag.length>1 && !tag.includes(tag)) { // 아직 없는 태그, // 태그 생성
                tag.split(',').forEach(tag => {
                    tags.push(tag);
                    console.log(tags);
                    createTag();
                });
            }

        }
    }
});
