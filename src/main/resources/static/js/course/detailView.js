/**
 *  detailView
 */
 
window.onload = function(){
	
	var container = document.getElementById('courseMap'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new kakao.maps.LatLng(37.503376,127.049776), //지도의 중심좌표.
	level: 3 //지도의 레벨(확대, 축소 정도)
}; // options

	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

	// 지도를 클릭한 위치에 표출할 마커입니다
	var marker = new kakao.maps.Marker({ 
    // 지도 중심좌표에 마커를 생성합니다 
    position: map.getCenter() 
	}); // marker
	 
	// 지도에 마커를 표시합니다
	marker.setMap(map);

	// 지도에 클릭 이벤트를 등록합니다
	// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
	kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
    
    // 클릭한 위도, 경도 정보를 가져옵니다 
    var latlng = mouseEvent.latLng; 
    
    // 마커 위치를 클릭한 위치로 옮깁니다
    marker.setPosition(latlng);
    
	}); // addListener
	
	
} // window.onload

	function setCenter() { 
	
	
	var container = document.getElementById('courseMap'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new kakao.maps.LatLng(37.503376,127.049776), //지도의 중심좌표.
	level: 3 //지도의 레벨(확대, 축소 정도)
}; // options
	
	var map = new kakao.maps.Map(container, options); 
	
	// 이동할 위도 경도 위치를 생성합니다 
    var moveLatLon = new kakao.maps.LatLng(37.503376,127.049776);
		    
    // 지도 중심을 이동 시킵니다
    map.setCenter(moveLatLon);
    
    // 지도를 클릭한 위치에 표출할 마커입니다
	var marker = new kakao.maps.Marker({ 
    // 지도 중심좌표에 마커를 생성합니다 
    position: map.getCenter() 
	}); // marker
	 
	// 지도에 마커를 표시합니다
	marker.setMap(map);

	// 지도에 클릭 이벤트를 등록합니다
	// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
	kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
    
    // 클릭한 위도, 경도 정보를 가져옵니다 
    var latlng = mouseEvent.latLng; 
    
    // 마커 위치를 클릭한 위치로 옮깁니다
    marker.setPosition(latlng);
    
	}); // addListener
    
}
			
	
    
	

