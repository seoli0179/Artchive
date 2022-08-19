<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
		<title>arTchive / 마이페이지 - 활동 내역</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/tools/reset.css'/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/myPage/myPageActive.css'/>"/>
		
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
				<h2>활동 내역</h2>
				<p class="line">
					
				<div class="myExhbn">
					<div class="titleBox">
						<a href="<c:url value='/myPage/myPageActive'/>">게시글</a>
						<a href="<c:url value='/myPage/myPageComment'/>">댓글</a>
					</div><!-- titleBox -->
				
				<div class="tableBox">
					<table>
						<thead>
							<tr>
								<th>구분</th>
								<th>제목</th>
								<th>등록 날짜</th>
								<th>상태</th>
							</tr>
							
						</thead>
						<tbody>
							<tr>
								<td>전시</td>
								<td>히토 슈타이얼 - 데이터의 바다</td>
								<td>2022.01.03</td>
								<td><button>삭제</button></td>
							</tr>
						</tbody>
					</table>
					</div><!--tableBox -->
				</div> <!-- myExhbn -->
			</div> <!-- myPageBox -->
		</section>
		 </div> <!-- wrapper -->
		 <c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>