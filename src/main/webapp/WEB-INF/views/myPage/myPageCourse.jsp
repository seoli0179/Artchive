<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
		<title>arTchive / 마이페이지 - 코스 </title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/tools/reset.css'/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/common.css'/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/myPage/myPageCourse.css'/>"/>
		
		<script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
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
					<h2>내 전시</h2>
					<p class="line">
					<div class="titleBox">
						<a href="<c:url value='/myPage/myPageScrap'/>">스크랩</a>
						<a href="<c:url value='/myPage/myPageLike'/>">좋아요</a>
						<a href="<c:url value='/myPage/myPageCourse'/>">코스</a>
					</div><!-- titleBox -->
				
				<div class="tableBox">
					<table>
						<thead>
							<tr>
								<th>구분</th>
								<th>제목</th>
								<th>등록 날짜</th>
								<th>수정일</th>
								<th>상태</th>
							</tr>
							
						</thead>
						<tbody>
							<tr>
								<td>전시</td>
								<td>성수 전시회 코스</td>
								<td>2022.01.03</td>
								<td>2022.01.05</td>
								<td>
									<button class="white-btn">수정</button>
									<button class="white-btn">삭제</button>
								</td>
							</tr>
						</tbody>
					</table>
					</div><!--tableBox -->
					
					<div class="courseBox">
						<div class="imageBox">
							<img src="<c:url value='/image/banner.jpg'/>">
						</div> <!-- imageBox -->
						<a>서울</a>
						<a>히토 슈타이얼 - 데이터의 바다</a>
						<a>2022-08-14</a> 	
					</div> <!-- courseBox -->
				</div> <!-- myExhbn -->
			</div> <!-- myPageBox -->
		</section>
		 </div> <!-- wrapper -->
		 <c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>