<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>리스트 페이지</title>
<%-- <link href="<c:url value='/tools/reset.css' /> " rel="stylesheet" type="text/css">
<link href="<c:url value='/css/common.css' /> " rel="stylesheet" type="text/css">
<link href="<c:url value='/css/list.css' /> " rel="stylesheet" type="text/css">
<script src="<c:url value='/tools/jquery-3.6.0.min.js' /> "></script>
<script src="<c:url value='/js/list.js' />"></script> --%>

<link rel="stylesheet" type="text/css" href="<c:url value='/tools/reset.css'/>">
<script src="<c:url value='/tools/jquery-3.6.0.min.js' /> "></script>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/common.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/list.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/detail-search.css'/>">

<%-- <script src="<c:url value='/js/list.js' />"></script>
 --%></head>

<body>
	<!-- top -->
	<div class="top">
	</div>
	<!-- .top -->
	
	<main id="list-wrap">
	<!-- title  -->
	<div class="tt">
	   <h1 class="title">현재 전시</h1>
	</div>
	<!-- .title -->

	<!-- 검색창 -->
	<div class="searchArea">
   		<div class="searchWrap">
      		<div class="searchInputArea">
         		<input type="type" id="searchText" name="searchText" class="input searchInput" title="검색어 입력" placeholder="작품명 또는 작가명 검색">
		        <button type="button" class="black-btn">검색</button>
	       <!--  	<button type="button" onclick="location.href='./detailsearch.jsp' ">상세검색</button>
	        	<button type="button" class="white-btn">상세검색</button> -->
<!-- 팝업 시작 -->
	      <button id="show" class="white-btn">상세검색</button>
	<div class="background">
		<div class="window">
			<div class="popup">
				<button id="close" class="white-btn">검색 닫기</button>
				<div id="container-deatil-search">
					<!-- 상세 검색 라디오 버튼 -->
					<h2 id="hi">상세 검색</h2>
					<br>
					<br>

					<div class="exsearchcontainer1">
						<div class="exsearch item1">
							<form id="detail-search" class="">

								<fieldset id="extrip-day">
									<legend>언제 가실건가요?</legend>
									<!-- legned 쓰는게 나을라나 -->
									<br>
									<div class="area-label">
										<input type="radio" id="today" name="search-when"
											value="today"> <label for="today">오늘</label> <input
											type="radio" id="this-week" name="search-when"
											value="this-week"> <label for="this-week">이번주</label>
										<input type="radio" id="next-week" name="search-when"
											value="next-week"> <label for="next-week">다음주</label>
										<input type="radio" id="this-month" name="search-when"
											value="this-month"> <label for="this-month">이번달</label>
									</div>
								</fieldset>
							</form>
							<!-- 기간 설정 -->
							<br>
							<div>
							<fieldset id="exdate">
								
									<legend>기간 선택</legend>
									<input type="text" id="testDatepicker-start"> - 
									<input type="text" id="testDatepicker-end">
							</fieldset>
							</div>
							
						</div>
						<div class="exsearch item2">
							<form method="get" action="form-action.html">
								<fieldset>
									<legend>어떤 지역으로 가시나요?</legend>
									<br>
									<ul>
										<li><label><input type="checkbox" name="ex-place"
												value="ex-place1" checked> 지역1</label></li>
										<li><label><input type="checkbox" name="ex-place"
												value="ex-place2"> 지역2</label></li>
										<li><label><input type="checkbox" name="ex-place"
												value="ex-place3"> 지역3</label></li>
										<li><label><input type="checkbox" name="ex-place"
												value="ex-place4"> 지역4</label></li>
										<li><label><input type="checkbox" name="ex-place"
												value="ex-place5"> 지역5</label></li>
										<li><label><input type="checkbox" name="ex-place"
												value="ex-place6"> 지역6</label></li>
									</ul>
								</fieldset>
							</form>

						</div>
						<div class="exsearch item3">
							<fieldset>
								<legend>가격은 ?</legend>
								<input type="radio" id="price-free" name="ex-price"
									value="price-free" checked="checked"> <label
									for="price-free">무료</label> <input type="radio" id="price"
									name="ex-price" value="price"> <label for="price">유료</label>
								<input type="radio" id="idc" name="ex-price" value="idc">
								<label for="idc">전체</label>
							</fieldset>
						</div>

					</div>

					<!-- https://www.nextree.co.kr/p9887/ 참고 해서 날짜 위젯 작성하기 -->


					<!-- 기간 설정 끝-->

					<!-- 어떤 전시 가고 싶은지 확인하는 -->
					<div class="exsearchcontainer2">
						<fieldset id=" exfarite">
							<legend>어떤 전시에 가고 싶은가요?</legend>
							<div class="favorite-type">
								<button class="btn-exfavorite">전시분야</button>
								<button class="btn-exfavorite">전시분야</button>
								<button class="btn-exfavorite">전시분야</button>
								<button class="btn-exfavorite">전시분야</button>
								<button class="btn-exfavorite">전시분야</button>
								<button class="btn-exfavorite">전시분야</button>
								<button class="btn-exfavorite">전시분야</button>
								<button class="btn-exfavorite">전시분야</button>
							</div>
						</fieldset>
					</div>

					<!-- 토글 조건 -->
					<div class="exsearchcontainer3">
						<div class="extoggle">
							<input type="checkbox" id="toggle" hidden>
							<p>이전 전시도 보여 드릴까요?</p>
							<label for="toggle" class="toggleSwitch"> <span
								class="toggleButton"></span>
							</label>
							<p>예정 된 전시도 보여 드릴까요?</p>
							<label for="toggle" class="toggleSwitch"> <span
								class="toggleButton"></span>
							</label>
						</div>
						<div class="exsearchcontainer4">
							<fieldset class="exsearch item2">
								<p>
									<input type="submit" value="검색"> <input type="reset"
										value="초기화">
								</p>
							</fieldset>
						</div>
					</div>
					<!-- 제출 리셋 -->


				</div>
				<div>
					<div></div>
				</div>
			</div>
		</div>
		</div>
<!-- 팝업 끝 -->	        	
     		</div>
		    <br>
		    <hr>
		<!-- 지역 -->
		<div class="location">
			<div class="subFixed">
            	<div class="tabList">
                     <ul id="exhbitionArea" class="banner-slide swiper-wrapper">
                        <li>
	                        <a href="전체사이트" class="careActive"> <i class="icon cateAll"></i>
	                           <span>전체</span><span class="hide"></span>
	                        </a>
		                </li>
		                <li class="swiper-slide swiper-slide-active" style="margin-right: 10px;">
		                	<a href="전체사이트" class="careActive"> <i class="icon cateAll"></i>
		                           <span>수도권</span> <span class="hide"></span>
		                    </a>
		                </li>
		                <li class="swiper-slide swiper-slide-active" style="margin-right: 10px;">
	                        <a href="충청사이트" class="careActive"> <i class="icon cateAll"></i>
	                           <span>충청</span> <span class="hide"></span>
	                        </a>
	                  	</li>
	                 	<li class="swiper-slide swiper-slide-active" style="margin-right: 10px;">
	                        <a href="전라사이트" class="careActive"> <i class="icon cateAll"></i>
	                           <span>전라</span> <span class="hide"></span>
	                        </a>
	                  	</li>
		                <li class="swiper-slide swiper-slide-active" style="margin-right: 10px;">
		                     <a href="경상사이트" class="careActive"> <i class="icon cateAll"></i>
		                        <span>경상</span> <span class="hide"></span>
		                     </a>
		                </li>
		                <li class="swiper-slide swiper-slide-active" style="margin-right: 10px;">
		                      <a href="강원" class="careActive"> <i class="icon cateAll"></i>
		                         <span>강원</span> <span class="hide"></span>
		                      </a>
		                </li>
		             </ul>
           		</div>
           		<!-- .tabList -->
         	</div>
         	<!-- .subFixed -->
      </div>
      <!-- .location -->
		<!-- btn-container -->
		<div id="btn-container">
			<button type="button" class="" onclick="fn_searchText();">현재전시</button>
			<button type="button" class="" onclick="fn_searchText();">예정전시</button>
			<button type="button" class="" onclick="fn_searchText();">지난전시</button>
		</div>
		<!-- .btn-container -->

		<!-- 전시 리스트 -->
		<div class="list con">
		   <ul class="row">
			   <c:forEach var="exhbn" items="${exhbnList}" varStatus="status">
				   <li class="cell">
					   <div class="img-box">
						   <a href="/detail/${exhbn.exhbnId}"><img src="${exhbn.exhbnImgUrl}" alt=""></a>
					   </div>
					   <section>
						   <div class="ex-place">${exhbn.exhbnPlace}</div>
						   <div class="ex-title">${exhbn.exhbnTitle}</div>
						   <div class="ex-period"><fmt:formatDate value = "${exhbn.exhbnStartDate}" type ="date" pattern="yyyy.MM.dd"/> ~ <fmt:formatDate value = "${exhbn.exhbnEndDate}" type ="date" pattern="yyyy.MM.dd"/></div>
					   </section>
				   </li>
			   </c:forEach>
			</ul>
		</div>
		</div>
		</div>
	</main>
	

	<!-- .list-wrap -->
	
	<!-- footer -->
	<!-- .footer -->
<script>
$(function() {
	$("#testDatepicker-start").datepicker({
		changeMonㅌth : true,
		changeYear : true,
		nextText : '다음 달',
		prevText : '이전 달'
	});
});
$(function() {
	$("#testDatepicker-end").datepicker({
		changeMonth : true,
		changeYear : true,
		nextText : '다음 달',
		prevText : '이전 달'
	});
});

function show() {
	document.querySelector(".background").className = "background show";
}

function close() {
	document.querySelector(".background").className = "background";
}

document.querySelector("#show").addEventListener("click", show);
document.querySelector("#close").addEventListener("click", close);


</script>
</body>
</html>
