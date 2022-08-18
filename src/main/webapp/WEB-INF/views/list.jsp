<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>리스트 페이지</title>
	<link rel="stylesheet" type="text/css" href="<c:url value='/tools/reset.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/common.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/list.css'/>">
	<script src="<c:url value='/tools/jquery-3.6.0.min.js' /> "></script>
	<%-- <script src="<c:url value='/js/list.js' />"></script>
     --%></head>

<body>
<!-- top -->
<c:import url="/WEB-INF/views/layout/top.jsp" />

<!-- 검색창 -->
<div id="searchMainTitle">
	<ul>
		<li>전시 검색</li>
	</ul>
	<div id="searchMainBox">
		<input type="text" id="searchTEXT" name="searchMessage" size="120"  placeholder="검색어를 입력하세요."/>
		<input type="button" id="SearchBtn" value="검색"/>
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
</div>

<!-- area -->
<div id="searchAreaBox">
	<div id="searchArea">
		<div id="allArea" class="AREA">
			<ul>
				<li>전체</li>
			</ul>
		</div>
		<div id="capitalArea" class="AREA">
			<ul>
				<li>수도권</li>
			</ul>
		</div>
		<div id="busanArea" class="AREA">
			<ul>
				<li>부산</li>
			</ul>
		</div>
		<div id="jejuArea" class="AREA">
			<ul>
				<li>제주</li>
			</ul>
		</div>
		<div id="kangwonArea" class="AREA">
			<ul>
				<li>강원</li>
			</ul>
		</div>
		<div id="jeonArea" class="AREA">
			<ul>
				<li>전라도</li>
			</ul>
		</div>

		<div id="kyeongArea" class="AREA">
			<ul>
				<li>경상도</li>
			</ul>
		</div>

		<div id="etcArea" class="AREA">
			<ul>
				<li>기타지역</li>
			</ul>
		</div>

	</div><!-- searchArea -->

	<div id="ExhibitionBOX">
		<input type="button" class="exhibitionABC" id="exhibitionA" value="현재전시"/>
		<input type="button" class="exhibitionABC" id="exhibitionB" value="예정전시"/>
		<input type="button" class="exhibitionABC" id="exhibitionC" value="지난전시"/>
	</div>
</div>

<!-- 전시 리스트 -->
<div class="list-con">
	<ul class="row">
		<c:forEach var="exhbn" items="${exhbnList}" varStatus="status">
			<li class="cell">
				<div class="img-box">
					<a href="/detail/${exhbn.exhbnId}"><img src="${exhbn.exhbnImgUrl}" alt=""></a>
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
<!-- .list-wrap -->

<!-- footer -->
<c:import url="/WEB-INF/views/layout/bottom.jsp" />
<!-- footer -->
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