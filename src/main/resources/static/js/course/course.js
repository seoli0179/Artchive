
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

});

