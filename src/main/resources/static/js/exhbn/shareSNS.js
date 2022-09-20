
const domain = "http://49.50.160.205:8080";
const data = "exhbn/detail";

function shareTwitter() {
    let exhbnId = document.getElementById('exhbnId').value;
    let sendUrl = domain + "/"+data+"/"+exhbnId; // 전달할 URL
    let sendText = "Artchive에서 작성한 " + document.getElementById('exhbnTitle').innerText + "입니다."; // 전달할 텍스트
    window.open("https://twitter.com/intent/tweet?text=" + sendText + "&url=" + sendUrl);
}


function shareFacebook() {
    let exhbnId = document.getElementById('exhbnId').value;
    let sendUrl = domain + "/"+data+"/"+exhbnId; // 전달할 URL
    window.open("http://www.facebook.com/sharer/sharer.php?u=" + sendUrl);
}

function shareKakao() {
    let exhbnId = document.getElementById('exhbnId').value;
    let sendUrl = domain + "/"+data+"/"+exhbnId; // 전달할 URL
    let exhbnTitle = document.getElementById('exhbnTitle').innerText // 전달할 텍스트
    let imgUrl = document.getElementById('exhbnImgUrl').value;
    console.log(imgUrl);

    // Kakao 버튼 생성
    Kakao.Link.createDefaultButton({
        container : '#btnKakao',            // kakao button
        objectType : 'feed',
        content : {
            title : exhbnTitle,
            description : "Artchive에서 공유된 전시입니다.",
            imageUrl : imgUrl,
            link : {
                // mobileWebUrl : "포스트 링크 (모바일)",
                webUrl : sendUrl
            }
        }
    });
}

function clip(){
    var textarea = document.createElement("textarea");
    document.body.appendChild(textarea);
    let exhbnId = document.getElementById('exhbnId').value;
    let sendUrl = domain + "/"+data+"/"+exhbnId; // 전달할 URL
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
