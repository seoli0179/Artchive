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
            
			            },
            error: function () {
                alert('검색어를 확인하세요')
            },
        });
 		
 	}); // submit 끝 

 /*	$('#exhbnSearchFrm-detail').on('click', function(){
 		//alert($('#inner-searchbar').val());
 		var title = $('#inner-searchbar').val();
 		// 기본 기능 중단
 		//event.preventDefault();
 		$.ajax({
            type: "post",
            url: "/exhbn/searchResult333",
            data: {
                "exhbnTitle": title
                
            },
            success: function (result) {
            // alert("검색 결과를 보여드릴게요");
            $('#searchResultl2').empty();
            $('#searchResultl2').append(result);
            
			            },
            error: function () {
                alert('검색어를 확인하세요')
            },
        });
 		
 	}); // submit 끝 */

	
	$('ul.tabs li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');
		
		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
		
	});


// 박물관 탭

 	$('#Museum').on('click', function(){
 		$('.AREA').removeClass('selected');
	 	$('#Museum').addClass('selected');
 		var type = $('#Museum').on('click').val();
 		$.ajax({
            type: "post",
            url: "/exhbn/tab_exhbnSearch",
           	dataType : "html",
            data: {
                "exhbnType": type
                
            },
           success: function (result_museum) {
            $('#searchResultl').html(result_museum);
            
			},
            error: function () {
            alert("오류");
            },
        });
        
        
 		
 	}); // submit 끝 
 

 	$('#Art_Exhbn').on('click', function(){
 		$('.AREA').removeClass('selected');
	 	$('#Art_Exhbn').addClass('selected');
 		var type = $('#Art_Exhbn').on('click').val();
 		$.ajax({
            type: "post",
            url: "/exhbn/tab_exhbnSearch2",
           	dataType : "html",
            data: {
                "exhbnType": type
                
            },
           success: function (result_Art_Exhbn) {
            $('#searchResultl').html(result_Art_Exhbn);
            
			
			},
            error: function () {
            alert("오류");
            },
        });
        
        
 		
 	}); // submit 끝 
$('#allArea').on('click', function(){
 		$('.AREA').removeClass('selected');
	 	$('#allArea').addClass('selected');
 		var type = $('#allArea').on('click').val();
 		$.ajax({
            type: "post",
            url: "/exhbn/tab_exhbnSearch0",
           	dataType : "html",
            data: {
                "exhbnType": type
                
            },
           success: function (result_Festival) {
            $('#searchResultl').html(result_Festival);
            
			},
            error: function () {
            alert("오류");
            },
        });
                
 		
 	}); // submit 끝  

 	$('#Festival').on('click', function(){
 		$('.AREA').removeClass('selected');
	 	$('#Festival').addClass('selected');
 		var type = $('#Festival').on('click').val();
 		$.ajax({
            type: "post",
            url: "/exhbn/tab_exhbnSearch3",
           	dataType : "html",
            data: {
                "exhbnType": type
                
            },
           success: function (result_Festival) {
            $('#searchResultl').html(result_Festival);
            
			},
            error: function () {
            alert("오류");
            },
        });
        
        
 		
 	}); // submit 끝 
 

 	$('#Edu_Ex').on('click', function(){
 		$('.AREA').removeClass('selected');
	 	$('#Edu_Ex').addClass('selected');
 		var type = $('#Edu_Ex').on('click').val();
 		$.ajax({
            type: "post",
            url: "/exhbn/tab_exhbnSearch4",
           	dataType : "html",
            data: {
                "exhbnType": type
                
            },
           success: function (result_Edu_Ex) {
            $('#searchResultl').html(result_Edu_Ex);
            
			},
            error: function () {
            alert("오류");
            },
        });
        
        
 		
 	}); // submit 끝 
 

 	$('#Etc_Ex').on('click', function(){
 		$('.AREA').removeClass('selected');
	 	$('#Etc_Ex').addClass('selected');
 		var type = $('#Etc_Ex').on('click').val();
 		
 		$.ajax({
            type: "post",
            url: "/exhbn/tab_exhbnSearch5",
           	dataType : "html",
            data: {
                "exhbnType": type
                
            },
           success: function (result_Edu_Ex) {
            $('#searchResultl').html(result_Edu_Ex);
            
			},
            error: function () {
            alert("오류");
            }
        });
 		
 	}); // submit 끝 

 	$('#exhbnSearchFrm-detail').on('click', function(){
 		// alert($('#inner-searchbar2').val();
 		// 검색어 받아지는 것 됨 
 		var title = $('#inner-searchbar2').val();
 		
 		var exWhere = $('#result4').text();
 		var exPrice = $('#result2').text();
 		var exDate = $('#result3').text();
 		var exWhen = $('#result5').text();
 		//var page = $('#page-box').text();
 		var page = $('#page-box1').text();
		// 기본 기능 중단
 		//event.preventDefault();
 		$.ajax({
            type: "post",
            url: "/exhbn/searchResult333",
            dataType:"HTML",
            data: {
                "exhbnTitle": title,
                "exhbnArea" : exWhere,
                "exhbnDate" : exDate,
                "exhbnPrice": exPrice,
                "exhbnWhen": exWhen,
                "expage" : page
                },
               
            success: function (result_detail) {
            // alert("검색 결과를 보여드릴게요");
            console.log(result_detail);
            $('#searchResultl2').empty();
            $('#searchResultl2').html(result_detail);
           // $('#searchResultl2').html(result_detail);
			            },
            error: function () {
                alert('aa1');
            }
        }); //ajax 마지막
 		
 		
 	}); // submit 끝 
 });  // ready 끝
 

 
 
 
  /* $(document).ready(function (){
    $('.arrayBtn').each(function (i) {
        $(this).click(function (e) {
            e.preventDefault();
            //alert(i + '번 버튼 ');
            $('.arrayBtn:not(' + i + ')').removeClass('arrayBtnActive');
            $('.arrayBtn:eq(' + i + ')').addClass('arrayBtnActive');
            alert($('.arrayBtn:eq(' + i + ')').data('type'))
        });
    });

    $('#check').on('click',function (){
        alert($('.arrayBtnActive').data('type'));
    });
}); */
 