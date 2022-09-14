/**
 * reviewList.js
 */
 
 $(document).ready(function () {
 
 
 $('#like').on('click', function () {
        if ($('#like').hasClass('like-active')) {
            $('#like').css('color', 'Black');
            $('#like').removeClass('like-active');
        } else {
            $('#like').css('color', 'Red');
            $('#like').addClass('like-active');
        }
    });

 
 
 $('#reviewNoteSearch').on('click', function(){
 		//alert($('#inner-searchbar').val());
 		var title = $('#inner-searchbar').val();
 		// 기본 기능 중단
 		//event.preventDefault();
 		$.ajax({
            type: "post",
            url: "/review/reviewNoteSearch",
            data: {
                "reviewNoteTitle": title
             
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
 		
 	}); // click
 	
 
 // 탭메뉴
 	$('#lateView').on('click', function(){
 	
		$('.AREA').removeClass('selected');
	 	$('#lateView').addClass('selected');
	
 		$.ajax({
            type: "post",
            url: "/review/reviewNoteNew",
            data: {
                "reviewNoteId": $('#reviewNoteId').val()
             
            },
            success: function (result) {

            $('#searchResultl').empty();
            $('#searchResultl').append(result);
            
			console.log(result);            },
            error: function () {
                alert('검색어를 확인하세요')
            },
        });
 		
 	}); // click
 	
 	
 	$('#likeView').on('click', function(){
 	
 		$('.AREA').removeClass('selected');
	 	$('#likeView').addClass('selected');

 		$.ajax({
            type: "post",
            url: "/review/reviewNotePopular",
            data: {
                "reviewNoteId": $('#reviewNoteId').val()
             
            },
            success: function (resultPopular) {
            // alert("검색 결과를 보여드릴게요");
            $('#searchResultl').empty();
            $('#searchResultl').append(resultPopular);
            
			console.log(resultPopular);            },
            error: function () {
                alert('검색어를 확인하세요')
            },
        });
 		
 	}); // click
 	
 	$('#mostView').on('click', function(){
 	
 		$('.AREA').removeClass('selected');
	 	$('#mostView').addClass('selected');

 		$.ajax({
            type: "post",
            url: "/review/reviewNoteComment",
            data: {
                "reviewNoteId": $('#reviewNoteId').val()
             
            },
            success: function (resultComment) {
            // alert("검색 결과를 보여드릴게요");
            $('#searchResultl').empty();
            $('#searchResultl').append(resultComment);
            
			console.log(resultComment);            },
            error: function () {
                alert('검색어를 확인하세요')
            },
        });
 		
 	}); // click
 	


 });
 