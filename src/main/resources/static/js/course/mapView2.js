document.write('<script type=\"text/javascript\" src=\"timelineEdit.js\"><\/script>');
document.write('<script type=\"text/javascript\" src=\"dialog.js\"><\/script>');

// 코스에 저장된 장소 마커를 담을 배열입니다.
var courseMarkers = [];
// 검색 결과 마커를 담을 배열입니다
var markers = [];

$(document).ready(function () {
    var mapContainer = document.getElementById('courseMap'), // 지도를 표시할 div
        mapOption = {
            center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
            level: 5 // 지도의 확대 레벨
        };
    // 지도를 생성합니다
    map = new kakao.maps.Map(mapContainer, mapOption);

    // 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
    var mapTypeControl = new kakao.maps.MapTypeControl();

    // 지도에 컨트롤을 추가해야 지도위에 표시됩니다
    // kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
    map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

    // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
    var zoomControl = new kakao.maps.ZoomControl();
    map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

    // 지도 중앙에 맞추기
    panTo(positions[0].y, positions[0].x);

}); // document.ready

function panTo(y,x) {
    // 이동할 위도 경도 위치를 생성합니다
    var moveLatLon = new kakao.maps.LatLng(y, x);

    // 지도 중심을 부드럽게 이동시킵니다
    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
    map.panTo(moveLatLon);
}

/** y좌표값, x좌표값, 인덱스 입력시 마크 그리기 */
function addCourseMarker2(y,x, idx, title) {
    var imageSrc = '/image/map/map_markers_black.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
        imageSize = new kakao.maps.Size(37, 37),  // 마커 이미지의 크기
        imgOptions =  {
            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
            spriteOrigin : new kakao.maps.Point(0, (idx*46)), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
        },
        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions);
    var marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: new kakao.maps.LatLng(y, x), // 마커를 표시할 위치
        // title : positions[idx].place_name, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
        image : markerImage // 마커 이미지
    });

    marker.setMap(map); // 지도 위에 마커를 표출합니다
    courseMarkers.push(marker);  // 배열에 생성된 마커를 추가합니다

    return marker;
}

function addCourseItem(data, idx) {
    console.log(JSON.stringify(data[idx]));
    if(confirm("코스에 추가하시겠습니까?")) {
        var temp = {
            place_name: data[idx].place_name,
            category_group_name : data[idx].category_group_name,
            phone :data[idx].phone,
            address_name :data[idx].address_name,
            road_address_name :data[idx].road_address_name,
            x : data[idx].x,
            y : data[idx].y,
            place_url : data[idx].place_url,
            place_memo : "",
        }

        positions.push(temp);

        let li = document.getElementsByClassName("route-row");
        $(".courseItem").remove();

        createList();
        let newMarker = new kakao.maps.LatLng(positions[positions.length-1].y, positions[positions.length-1].x)
        addCourseMarker(newMarker, positions.length-1);
    }
}

function pan() {

}