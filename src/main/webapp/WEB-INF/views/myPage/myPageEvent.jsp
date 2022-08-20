<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
		<title>arTchive / 마이페이지 - 이벤트 </title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/tools/reset.css'/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/myPage/myPageEvent.css'/>"/>
		
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
	</head>
	<body>
		<div class="wrapper">
			 <c:import url="/WEB-INF/views/layout/top.jsp" />
		
		<section>
			<nav>
				<ul class="tabMenu">
					<li><a>마이페이지</a></li>
					<li><a href="<c:url value='/myPage/myPageHome'/>">홈</a></li>
					<li><a href="<c:url value='/myPage/myPageCheck'/>">개인정보 수정</a></li>
					<li><a href="<c:url value='/myPage/myPageRecommend'/>">추천 콘텐츠</a></li>
					<li><a href="<c:url value='/myPage/myPageScrap'/>">내 전시</a></li>
					<li><a href="<c:url value='/myPage/myPageActive'/>">활동 내역</a></li>
					<li><a href="<c:url value='/myPage/myPageReserv'/>">예매 내역</a></li>
				</ul>
			</nav>	
			
			<div class="myPageBox">
				<div class="myExhbn">
					<div class="contentsBox">
						<div class="contents"><h2>추천 콘텐츠</h2></div>
						<div class="setting"><a href="<c:url value='/myPage/myPageCustomized'/>">설정</a></div>
					</div> <!-- contentsBox -->
					<p class="line">
					
					<div class="titleBox">
						<a href="<c:url value='/myPage/myPageRecommend'/>">전시</a>
						<a href="<c:url value='/myPage/myPageEvent'/>">이벤트</a>
					</div><!-- titleBox -->
					
					<div class="area">
						<a href="<c:url value=''/>">전체</a>
						<a href="<c:url value=''/>">진행중</a>
						<a href="<c:url value=''/>">진행완료</a>
					</div>
					
					<div class="wholeExpbnBox">
						<div class="courseBox">
							<div class="imageBox">
								<img src="<c:url value='/image/banner.jpg'/>">
							</div> <!-- imageBox -->
							<a>서울</a>
							<a>히토 슈타이얼 - 데이터의 바다</a>
							<a>2022-08-14</a> 	
						</div> <!-- courseBox -->
						
						<div class="courseBox">
							<div class="imageBox">
								<img src="<c:url value='/image/banner.jpg'/>">
							</div> <!-- imageBox -->
							<a>서울</a>
							<a>히토 슈타이얼 - 데이터의 바다</a>
							<a>2022-08-14</a> 	
						</div> <!-- courseBox -->
						
					</div> <!-- wholeExpbnBox -->
					
				</div> <!-- myExhbn -->
			</div> <!-- myPageBox -->
		</section>
		 </div> <!-- wrapper -->
		 <c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>