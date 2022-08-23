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
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/course/courseBoard.css'/>"/>
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/course/course.css'/>"/>
	<!-- icon kit -->
	<script src="https://kit.fontawesome.com/50d21a2bed.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/list.css'/>">

	<script src="<c:url value='/tools/jquery-3.6.0.min.js' /> "></script>
	<%-- <script src="<c:url value='/js/list.js' />"></script>
     --%></head>

<body>
<!-- top -->
<c:import url="/WEB-INF/views/layout/top.jsp" />

<!-- 검색창 -->
	<div id="course-box" class="course-box main-title-box">
                    <h1 class="h1">Search</h1>
                    <span>관심있는 전시를 검색해보세요.</span>
	                    <div class="courseboard-search-box">
	                        <div class="searchbar-box">
	                            <div class="searchbar-border tag-box" type="text">
	                                <ul id="tagList">
	                                    <input class="inner-searchbar" id="inner-searchbar" type="text" placeholder="검색어를 입력하세요.">
	                                </ul>
	                                <div id="filterList" style="position: relative;">
	
	                                </div>
	                            </div>
	                            <input class="black-btn courseBoard-searchBtn" type="button" value="검색">
	                            <input id="show" class="white-btn detailSearch courseBoard-searchBtn" type="button" value="상세검색">
	                        </div>
	                        <div id="tag-caution" class="vibration">태그는 3개까지만 선택할 수 있습니다.</div>
	                    </div>
                </div>
		<!-- 팝업 시작 -->
		<!-- <button id="show" class="white-btn">상세검색</button> -->
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
															  value="ex-place1" checked>전체</label></li>
											<li><label><input type="checkbox" name="ex-place"
															  value="ex-place2">수도권</label></li>
											<li><label><input type="checkbox" name="ex-place"
															  value="ex-place3">부산</label></li>
											<li><label><input type="checkbox" name="ex-place"
															  value="ex-place4">제주</label></li>
											<li><label><input type="checkbox" name="ex-place"
															  value="ex-place5">강원</label></li>
											<li><label><input type="checkbox" name="ex-place"
															  value="ex-place6">전라도</label></li>
											<li><label><input type="checkbox" name="ex-place"
															  value="ex-place6">경상도</label></li>
											<li><label><input type="checkbox" name="ex-place"
															  value="ex-place6">기타</label></li>
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
		<div id="allArea" class="AREA tabTag selected">
			<ul>
				<li><a href="#"><i class="fa-solid fa-border-all"></i>전체</a></li>
			</ul>
		</div>
		<div id="capitalArea" class="AREA tabTag">
			<ul>
				<li><a href="#"><i class="fa-solid fa-landmark"></i>박물관</a></li>
			</ul>
		</div>
		<div id="busanArea" class="AREA tabTag">
			<ul>
				<li><a href="#"><i class="fa-solid fa-panorama"></i>미술전시</a></li>
			</ul>
		</div>
		<div id="jejuArea" class="AREA tabTag">
			<ul>
				<li><a href="#"><i class="fa-solid fa-bullhorn"></i>축제</a></li>
			</ul>
		</div>
		<div id="kangwonArea" class="AREA tabTag">
			<ul>
				<li><a href="#"><i class="fa-solid fa-apple-whole"></i>교육·체험</a></li>
			</ul>
		</div>
		<div id="jeonArea" class="AREA tabTag">
			<ul>
				<li><a href="#"><i class="fa-solid fa-list-ul"></i>기타</a></li>
			</ul>
		</div>
	</div><!-- searchArea -->

	<%--	<div id="ExhibitionBOX">--%>
	<%--		<input type="button" class="exhibitionABC" id="exhibitionA" value="현재전시"/>--%>
	<%--		<input type="button" class="exhibitionABC" id="exhibitionB" value="예정전시"/>--%>
	<%--		<input type="button" class="exhibitionABC" id="exhibitionC" value="지난전시"/>--%>
	<%--	</div>--%>
</div>

<!-- 전시 리스트 -->
<div class="list-con">
	<ul class="row">
		<c:forEach var="exhbn" items="${exhbnList}" varStatus="status">
			<li class="cell">
				<div class="img-box">
					<a href="/exhbn/detail/${exhbn.exhbnId}"><img src="${exhbn.exhbnImgUrl}" alt=""></a>
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
			changeMonth : true,
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