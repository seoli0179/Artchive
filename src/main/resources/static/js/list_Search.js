 $(document).ready(function(){

 	$('#exhbnSearchFrm').on('click', function(){
 		//alert($('#inner-searchbar').val());
 		var title = $('#inner-searchbar').val();
 		// 기본 기능 중단
 		//event.preventDefault();
 		$.ajax({
            type: "post",
            url: "/exhbn/searchResult222",
            data: {
                "exhbnTitle": title
                
            },
            success: function (result) {
            // alert("검색 결과를 보여드릴게요");
            $('#searchResultl').empty();
            $('#searchResultl').append(result);
            
			console.log(result);            },
            error: function () {
                alert('검색어를 확인하세요')
            },
        });
 		
 	}); // submit 끝 
 });  // ready 끝
 

	 $(document).ready(function(){
	
	$('ul.tabs li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');
		
		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
		
	})

})
// 박물관 탭
 $(document).ready(function(){

 	$('#Museum').on('click', function(){
 	
 		//alert($('#inner-searchbar').val());
 		var type = $('#Museum').on('click').val();
 		// 기본 기능 중단
 		//event.preventDefault();
 		$.ajax({
            type: "post",
            url: "/exhbn/tab_exhbnSearch",
            dataType : "html",
            data: {
                "exhbnType": type
                
            },
          
            success: function (result_museum) {
           // $('#searchResultl').empty();
           alert("aaaa");
            $('#searchResultl').html(result_museum);
            
			console.log(result_museum);
			},
            error: function () {
            alert("bbb");
            },
        });
 		
 	}); // submit 끝 
 });  // ready 끝
 