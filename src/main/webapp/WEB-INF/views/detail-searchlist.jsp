<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8">
<title>리스트 페이지</title>
	<script src="<c:url value='/js/list_Search.js' />"></script>
</head>
<body>
	<!-- 팝업 시작 -->
	<div class="background">
		<div class="window">
			<div class="popup">
				<div id="exhbnSearchFrm">

					<!-- <button id="close" class="close-btn"> -->
					<div class="searchTitleLine">
						<h1 id="subTitle-ex">Artchive 전시 상세 검색</h1>
						<img src="../image/close.png" alt="" class="close-btn" id="close">
					</div>

					<!-- Close icons created by ariefstudio - Flaticon -->

					<!-- 				</button>

<!--  -->

					<div id="container-deatil-search">
						<span class="subttitle">관심있는 전시를 검색해보세요.</span>
						<div class="courseboard-search-box">
							<div class="searchbar-box">
								<div class="searchbar-border tag-box" type="text">
									<ul id="tagList">
										<input class="inner-searchbar2" id="inner-searchbar2"
											type="text" placeholder="검색어를 입력하세요.">
									</ul>
									<div id="filterList" style="position: relative;"></div>
								</div>
							</div>
							<div id="tag-caution" class="vibration">태그는 3개까지만 선택할 수
								있습니다.</div>
						</div>
					
					<!-- 상세 검색 라디오 버튼 -->


					<div class="container-list">
						<div class="exsearchcontainer">
							<div class="exsearch item1">

								<!-- 												<fieldset id="extrip-day">
 -->
								<p class="subttitle">언제 가실건가요?</p>
								<br>
								<div class="list-radio">
									<input type="radio" id="today" onclick='getRadioText(event)'
										name="search-when" value="today"> <label for="today">오늘</label>
									<input type="radio" id="this-week"
										onclick='getRadioText(event)' name="search-when"
										value="this-week"> <label for="this-week">이번주</label>
									<input type="radio" id="next-week"
										onclick='getRadioText(event)' name="search-when"
										value="next-week"> <label for="next-week">다음주</label>
									<input type="radio" id="this-month"
										onclick='getRadioText(event)' name="search-when"
										value="this-month"> <label for="this-month">이번달</label>
									<br> <input type="radio" id="self-select"
										onclick='getRadioText(event)' name="search-when"
										value="self-select"> <label for="self-select">직접선택</label>
								</div>

								<p class="subttitle"></p>
								<br> <label for="from">From</label> <input type="text"
									id="fromex" name="from" class="hasDatepicker"> <label
									for="list-to"> To </label> <input type="text" id="toex"
									name="to" class="hasDatepicker">

							</div>
							<!-- 기간 설정 -->
							<br>
							<div class="exsearch item2">
									<fieldset>
										<p class="subttitle">어떤 지역으로 가시나요?</p>
										<div class="list-radio">
											<ul>
												<li class="where-ex"><label><input
														type="checkbox" name="ex-place"
														onclick='getCheckboxValue4()' value="서울"> 서울</label></li>
												<li class="where-ex"><label><input
														type="checkbox" name="ex-place"
														onclick='getCheckboxValue4()' value="경인"> 경인</label></li>
												<li class="where-ex"><label><input
														type="checkbox" name="ex-place"
														onclick='getCheckboxValue4()' value="부산"> 부산</label></li>
												<li class="where-ex"><label><input
														type="checkbox" name="ex-place"
														onclick='getCheckboxValue4()' value="제주"> 제주</label></li>
												<li class="where-ex"><label><input
														type="checkbox" name="ex-place"
														onclick='getCheckboxValue4()' value="강원"> 강원</label></li>
												<li class="where-ex"><label><input
														type="checkbox" name="ex-place"
														onclick='getCheckboxValue4()' value="전라"> 전라</label></li>
												<li class="where-ex"><label><input
														type="checkbox" name="ex-place"
														onclick='getCheckboxValue4()' value="경상"> 경상</label></li>
												<li class="where-ex"><label><input
														type="checkbox" name="ex-place"
														onclick='getCheckboxValue4()' value="기타지역"> 기타지역</label></li>
											</ul>
										</div>
									</fieldset>

							</div>
							<div class="exsearch item3">
								<fieldset>
									<p class="subttitle">가격은 ?</p>
									<div class="exprice">
										<input type="radio" id="price-free" class="price-ex"
											onclick='getRadioText2(event)' name="ex-price"
											value="price-free"> <label for="price-free">무료</label>
										<input type="radio" id="price" class="price-ex"
											onclick='getRadioText2(event)' name="ex-price" value="price">
										<label for="price">유료</label> <input type="radio" id="idc"
											class="price-ex" onclick='getRadioText2(event)'
											name="ex-price" value="idc"> <label for="idc">전체</label>
									</div>
								</fieldset>
							</div>


							<div class="exsearch item4">
								<fieldset>
									<p class="subttitle">전시 범위</p>


									<div class="exprice">
										<input type="radio" id="upcoming-ex" class="period-ex"
											onclick='getRadioText3(event)' name="abcd1"
											value="price-free""> <label for="upcoming-ex">예전
											전시</label> <input type="radio" id="pre-ex" class="period-ex"
											onclick='getRadioText3(event)' name="abcd1" value="price">
										<label for="pre-ex">예정된 전시</label>

									</div>
								</fieldset>
							</div>


						</div>

					</div>

					<div class="exsearchcontainer2">
						<div class="exsearch item5">
							<!-- <p> -->
							<p id="firstTxt">어떤 전시관람이 궁금하신가요?</p>
							<!-- </p> -->
							<ul class="barList" id="search-view">
								<li class="barlist-result">
									<div id='result5'></div>
								</li>
								<li class="barlist-result">
									<div id='result4'></div>
								</li>
								<li class="barlist-result">
									<div id='result2'></div>
								</li>
								<li class="barlist-result">
									<div id='result3'></div>
								</li>
							</ul>
							<br> <em>이런 조건을 찾으셨군요? 검색해 드릴게요!</em>

						</div>

						<div class="exsearch item6">
							<input class="black-btn courseBoard-searchBtn" type="button"
								id="exhbnSearchFrm-detail" value="검색">

							<input type="button" id="reset" class="white-btn" onClick="window.location.reload()" value="초기화">
						</div>
						<!-- 검색을 누르기 전 안 나오게 만들어야 함  -->
					
					</div> <!-- exsearchcontainer2 -->
					<div id="searchResultl2">
				        <input type="hidden" id="maxDataNum" value="${maxDataNum}">
				
						<div class="list-con">
							<ul class="row">
								<c:forEach var="exhbn" items="${exhbnSearch2}" varStatus="status">
									<li class="cell">
										<div class="img-box">
											<a href="/exhbn/detail/${exhbn.exhbnId}">
											<img src="${exhbn.exhbnImgUrl}" alt=""></a>
										</div>
										<section id="ex-all">
											<div class="ex-place">${exhbn.exhbnPlace}</div>
											<div class="ex-title">${exhbn.exhbnTitle}</div>
											<div class="ex-period"><fmt:formatDate value = "${exhbn.exhbnStartDate}" type ="date" pattern="yyyy.MM.dd"/> ~ <fmt:formatDate value = "${exhbn.exhbnEndDate}" type ="date" pattern="yyyy.MM.dd"/></div>
										</section>
									</li>
								</c:forEach>
							</ul>
						
						</div>
				</div><!-- searchResultl2 -->
				</div>
			</div>
				
			</div>
			<!-- 컨테이너 종료 -->
				
			
		</div>
		<!-- 리스트 종료 -->

		
	</div>
	<!-- 팝업 -->
	<!-- 제출 리셋 -->



	<!-- 팝업 끝 -->

	<script>
	function show() {
		document.querySelector(".background").className = "background show";
	}

	function close() {
		document.querySelector(".background").className = "background";
	}

	document.querySelector("#show").addEventListener("click", show);
	document.querySelector("#close").addEventListener("click", close);


</script>
	<script>
   //datepicker//
  $( function() {
    var dateFormat = "yy/mm/dd",
      from = $( "#fromex" ).datepicker({
          defaultDate: "+1w",
          changeMonth: true,
          numberOfMonths: 1
        })
        .on( "change", function() {
          to.datepicker( "option", "minDate", getDate( this ) );
        }),
      to = $( "#toex" ).datepicker({
        defaultDate: "+1w",
        changeMonth: true,
        numberOfMonths: 1
      })
      .on( "change", function() {
        from.datepicker( "option", "maxDate", getDate( this ) );
      });
 
    function getDate( element ) {
      var date;
      try {
        date = $.datepicker.parseDate( dateFormat, element.value );
      } catch( error ) {
        date = null;
      }
 
      return date;
    }
  } );
  </script>
	<script type="text/javascript">
  function getRadioText(event)  {
	  const radioId = event.target.id;
	  const query = 'label[for="'+ radioId + '"]'
	  const text = 
	        document.querySelector(query).innerText;
	  
	  document.getElementById('result5').innerText = text;
	}
  </script>
	<script type="text/javascript">
  function getRadioText2(event)  {
	  const radioId = event.target.id;
	  const query = 'label[for="'+ radioId + '"]'
	  const text = 
	        document.querySelector(query).innerText;
	  
	  document.getElementById('result2').innerText = text;
	}
  </script>



	<script type="text/javascript">
  function getRadioText3(event)  {
	  const radioId = event.target.id;
	  const query = 'label[for="'+ radioId + '"]'
	  const text = 
	        document.querySelector(query).innerText;
	  
	  document.getElementById('result3').innerText = text;
	}
  

  </script>


	<script type="text/javascript">
  function getCheckboxValue4()  {
	  // 선택된 목록 가져오기
	  const query = 'input[name="ex-place"]:checked';
	  const selectedEls = 
	      document.querySelectorAll(query);
	  
	  // 선택된 목록에서 value 찾기
	  let result = '';
	  selectedEls.forEach((el) => {
	    result += el.value + ' ';
	  });
	  
	  // 출력
	  document.getElementById('result4').innerText
	    = result;
	}
  </script>

</body>
</html>