<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
		<title>마이페이지 - 좋아요 </title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/reset.css'/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/myPageLike.css'/>"/>
		
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
	</head>
	<body>
		<div class="wrapper">
			 <c:import url="/WEB-INF/views/layout/top.jsp" />
		
		<section>
			<nav>
				<ul class="tabMenu">
					<li><a>마이페이지</a></li>
					<li><a href="<c:url value='/subPage/myPage'/>">홈</a></li>
					<li><a href="<c:url value='/subPage/myPageCheck'/>">개인정보 수정</a></li>
					<li><a href="<c:url value='/subPage/myPageRecommend'/>">추천 콘텐츠</a></li>
					<li><a href="<c:url value='/subPage/myPageLike'/>">스크랩 / 좋아요</a></li>
					<li><a href="<c:url value='/subPage/myPageCourse'/>">내 전시</a></li>
					<li><a href="<c:url value='/subPage/myPageActive'/>">활동 내역</a></li>
					<li><a href="<c:url value='/subPage/myPageReserv'/>">예매 내역</a></li>
				</ul>
			</nav>	
			
			<div class="myPageBox">
				<h2>마이 페이지</h2>
				<p class="line">
					<div class="userBox">
						<h2>UserName</h2>
						<a>userEmailAddress</a><br><br>
						<div class="buttonBox">
							<a class="ModifyInfo" href="<c:url value=''/>">개인정보 수정</a>
							<a class="withdraw" href="<c:url value='/subPage/myPageWithdraw'/>">회원탈퇴</a>
						</div> <!-- buttonBox -->
						
					</div> <!-- userBox -->
				<p class="line">
				<div class="myExhbn">
					<h2>내 전시</h2>
					<div class="titleBox">
						<a href="<c:url value='/subPage/myPage'/>">스크랩</a>
						<a href="<c:url value='/subPage/myPageLike'/>">좋아요</a>
						<a href="<c:url value='/subPage/myPageCourse'/>">코스</a>
					</div><!-- titleBox -->
				
				<div class="tableBox">
					<table>
						<thead>
							<tr>
								<th>구분</th>
								<th>제목</th>
								<th>등록날짜</th>
								<th>상태</th>
							</tr>
							
						</thead>
						<tbody>
							<tr>
								<td colspan="4">등록된 내역이 없습니다.</td>
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