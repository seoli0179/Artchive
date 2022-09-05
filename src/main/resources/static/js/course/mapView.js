/*
** kakao.map api
*/
$(document).ready(function () {
	
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
		        center: new kakao.maps.LatLng(37.576,126.9736), //지도의 중심좌표.
		        level: 6, // 지도의 확대 레벨
		        mapTypeId : kakao.maps.MapTypeId.ROADMAP // 지도종류
		    }; 
		
		
		// 지도를 생성한다 
		var map = new kakao.maps.Map(mapContainer, mapOption); 
		
		// 지도 타입 변경 컨트롤을 생성한다
		var mapTypeControl = new kakao.maps.MapTypeControl();

		// 지도의 상단 우측에 지도 타입 변경 컨트롤을 추가한다
		map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);	

		// 지도에 확대 축소 컨트롤을 생성한다
		var zoomControl = new kakao.maps.ZoomControl();

		// 지도의 우측에 확대 축소 컨트롤을 추가한다
		map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
		
		
		// 지도를 클릭한 위치에 표출할 마커입니다
		var marker = new kakao.maps.Marker({ 
		// 지도 중심좌표에 마커를 생성합니다 
		    position: map.getCenter() 
		}); 
		
		// 지도 클릭 이벤트를 등록한다 (좌클릭 : click, 우클릭 : rightclick, 더블클릭 : dblclick)
		kakao.maps.event.addListener(map, 'click', function (mouseEvent) {
		
		// 클릭한 위도, 경도 정보를 가져옵니다 
	    var latlng = mouseEvent.latLng; 
	    
	    // 마커 위치를 클릭한 위치로 옮깁니다
	    marker.setPosition(latlng);
	    
	    var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
	    message += '경도는 ' + latlng.getLng() + ' 입니다';
	    
		console.log('지도에서 클릭한 위치의 좌표는 ' + mouseEvent.latLng.toString() + ' 입니다.');
		});	 // add
		
		// 지도에 마커를 표시합니다
		marker.setMap(map);
		
		// 마커 여러개
		var positions = [
		    {
		        title: '그랑핸드 서촌', 
		        latlng: new kakao.maps.LatLng(37.5776, 126.9679)
		    },
		    {
		        title: '이태리총각', 
		        latlng: new kakao.maps.LatLng(37.5795, 126.9706)
		    },
		    {
		        title: '그라운드시소 서촌', 
		        latlng: new kakao.maps.LatLng(37.5781, 126.9731)
		    },
		    {
		        title: '스태픽스',
		        latlng: new kakao.maps.LatLng(37.5776, 126.9679)
		    }
		];

	// 마커 이미지의 이미지 주소입니다
	var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
	    
	for (var i = 0; i < positions.length; i ++) {
    
    // 마커 이미지의 이미지 크기 입니다
    var imageSize = new kakao.maps.Size(24, 35); 
    
    // 마커 이미지를 생성합니다    
    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
    
    // 마커를 생성합니다
    var markers = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng, // 마커를 표시할 위치
        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
        image : markerImage // 마커 이미지 
    });
    
} // for문
	
	// 지도 가운데 이동
	$('#centerMove').on('click', function setCenter(){
	    
	    // 이동할 위도 경도 위치를 생성합니다 
	    var moveLatLon = new kakao.maps.LatLng(37.576,126.9736);
	    
	    // 지도 중심을 이동 시킵니다
	    map.setCenter(moveLatLon);
	}); 
	
	// 배열에 추가된 마커들을 지도에 표시하거나 삭제하는 함수입니다
	function setMarkers(map) {
    for (var i = 0; i < markers.length; i++) {
        markers[i].setMap(map);
    }            
}

// "마커 감추기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에서 삭제하는 함수입니다
	$('#hide').on('click', function hideMarkers(){
	 	alert("Rud고");
	 	setMarkers(null); 
	}); 
	

// "마커 보이기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에 표시하는 함수입니다
	$('#show').on('click', function showMarkers() {
    	 alert("Rud3231고");
    	setMarkers(map);    
	});
	
	// var geocoder = new kakao.maps.services.Geocoder();


		
}); // document.ready

/* *********************************************************************** */

	

