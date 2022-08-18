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
<script src="<c:url value='/js/list.js' />"></script>
</head>

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
				<input type="button" id="detailSearchBtn" value="상세검색"/>
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

</body>
</html>