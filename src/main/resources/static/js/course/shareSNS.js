
const domain = "http://49.50.160.205:8080"

function shareTwitter() {
    let sendText = "Artchive에서 작성한 " + document.getElementById('courseTitle').innerText + "입니다."; // 전달할 텍스트
    let courseId = document.getElementById('courseId').value;
    let sendUrl = domain + "/course/"+courseId; // 전달할 URL
    window.open("https://twitter.com/intent/tweet?text=" + sendText + "&url=" + sendUrl);
}


function shareFacebook() {
    let courseId = document.getElementById('courseId').value;
    let sendUrl = "http://49.50.160.205:8080/course/"+courseId; // 전달할 URL
    window.open("http://www.facebook.com/sharer/sharer.php?u=" + sendUrl);
}

function shareKakao() {

    let courseTitle = document.getElementById('courseTitle').innerText // 전달할 텍스트
    let courseId = document.getElementById('courseId').value;
    let sendUrl = domain + "/course/"+courseId; // 전달할 URL
    let imgUrl = document.getElementById('courseThumnail').value;
    console.log(imgUrl);

    // Kakao 버튼 생성
    Kakao.Link.createDefaultButton({
        container : '#btnKakao',            // kakao button
        objectType : 'feed',
        content : {
            title : courseTitle,
            description : "Artchive에서 작성된 코스입니다.",
            imageUrl : imgUrl,
            link : {
                // mobileWebUrl : "포스트 링크 (모바일)",
                webUrl : sendUrl
            }
        }
    });
}

function clip(){
    let courseId = document.getElementById('courseId').value;
    let sendUrl = domain + "/course/"+courseId; // 전달할 URL
    var textarea = document.createElement("textarea");
    document.body.appendChild(textarea);
    url = window.document.location.href;
    textarea.value = sendUrl;
    textarea.select();
    document.execCommand("copy");
    document.body.removeChild(textarea);
    alert("URL이 복사되었습니다.");
}

$(document).ready(function() {
    Kakao.init('f62ace4deff6b141114cc8499d76cb47');
    shareKakao();        // 초기 호출
});
