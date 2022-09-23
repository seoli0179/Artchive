
const domain = "http://49.50.160.205:8080";
const data = "review/reviewNote";

function shareTwitter() {
    let reviewNoteId = document.getElementById('reviewNoteId').value;
    let sendUrl = domain + "/"+data+"/"+reviewNoteId; // 전달할 URL
    let sendText = "Artchive에서 작성한 " + document.getElementById('reviewNoteTitle').innerText + "입니다."; // 전달할 텍스트
    window.open("https://twitter.com/intent/tweet?text=" + sendText + "&url=" + sendUrl);
}


function shareFacebook() {
    let reviewNoteId = document.getElementById('reviewNoteId').value;
    let sendUrl = domain + "/"+data+"/"+reviewNoteId; // 전달할 URL
    window.open("http://www.facebook.com/sharer/sharer.php?u=" + sendUrl);
}

function shareKakao() {
    let reviewNoteId = document.getElementById('reviewNoteId').value;
    let sendUrl = domain + "/"+data+"/"+reviewNoteId; // 전달할 URL
    let reviewNoteTitle = document.getElementById('reviewNoteTitle').innerText // 전달할 텍스트
    let imgUrl = document.getElementById('exhbnImgUrl').value;
    console.log(imgUrl);

    // Kakao 버튼 생성
    Kakao.Link.createDefaultButton({
        container : '#btnKakao',            // kakao button
        objectType : 'feed',
        content : {
            title : reviewNoteTitle,
            description : "Artchive에서 공유된 리뷰입니다.",
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
    let reviewNoteId = document.getElementById('reviewNoteId').value;
    let sendUrl = domain + "/"+data+"/"+reviewNoteId; // 전달할 URL
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
