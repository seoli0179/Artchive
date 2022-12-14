
$(function(){
    // 검색 자동완성
    $("#inner-searchbar").autocomplete({  //오토 컴플릿트 시작
        source : tagSource, //source 는 자동완성의 대상
        select : function(event, ui) { // item 선택 시 이벤트
            console.log(ui.item);
        },
        focus : function(event, ui) { // 포커스 시 이벤트
            return false;
        },
        minLength : 0, // 최소 글자 수
        autoFocus : true, // true로 설정 시 메뉴가 표시 될 때, 첫 번째 항목에 자동으로 초점이 맞춰짐
        // classes : { // 위젯 요소에 추가 할 클래스를 지정
        //     'ui-autocomplete' : 'highlight'
        // },
        delay : 500, // 입력창에 글자가 써지고 나서 autocomplete 이벤트 발생될 떄 까지 지연 시간(ms)
        disable : false, // 해당 값 true 시, 자동완성 기능 꺼짐
        position : {
            of: $(".inner-searchbar"), // 부모
            my : 'left top', at : 'left bottom'}, // 제안 메뉴의 위치를 식별
        close : function(event) { // 자동완성 창 닫아질 때의 이벤트
            console.log(event);
        },
        // open: function (event,ui) {
        //     $(this).autocomplete("widget").css({
        //        display: inline-block;
        //     });
        // }
    });
});

let tagSource = [
    // 인원수
    '혼자하루보내기', '가족들과함께', '친구와함께', '아이와가기좋은',
    // 목적
    '추천데이트코스', '맛집탐방', '카페투어', '타지역친구가이드','디저트맛집',
    // 기타 테마
    '점심부터저녁까지', '힙스터성지', '요즘핫한전시', '놓치면안되는전시',
    // 지역
    '서울전시', '수도권전시', '부산전시', '제주전시'
]; // 배열