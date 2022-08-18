<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
		<title>마이페이지 - 개인정보 수정 확인</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/tools/reset.css'/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/myPage/myPageCheck.css'/>"/>
		
		<script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
	</head>
	<body>
		<div class="wrapper">
			 <c:import url="/WEB-INF/views/layout/top.jsp" />
		
		<section>
			<nav>
				<ul class="tabMenu">
					<li><a>마이페이지</a></li>
					<li><a href="<c:url value='/subPage/myPage/myPageHome'/>">홈</a></li>
					<li><a href="<c:url value='/subPage/myPage/myPageCheck'/>">개인정보 수정</a></li>
					<li><a href="<c:url value='/subPage/myPage/myPageRecommend'/>">추천 콘텐츠</a></li>
					<li><a href="<c:url value='/subPage/myPage/myPageLike'/>">스크랩 / 좋아요</a></li>
					<li><a href="<c:url value='/subPage/myPage/myPageCourse'/>">내 전시</a></li>
					<li><a href="<c:url value='/subPage/myPage/myPageActive'/>">활동 내역</a></li>
					<li><a href="<c:url value='/subPage/myPage/myPageReserv'/>">예매 내역</a></li>
				</ul>
			</nav>	
			
			<div class="myPageBox">
				<h2>개인정보 확인</h2>
				
				<div class="myExhbn">
				<p class="line">
					
					<form>
					<h1><a href="<c:url value='/'/>">arTchive</a> </h1>
						<input type="text" required placeholder="이메일을 입력해주세요.">
						<input type="password" required><br><br>
						<input type="checkbox">아이디 저장<br><br>
						<input type="submit" value="로그인"><br><br>
						<div class="searchBox">
							<a href="<c:url value=''/>">아이디 찾기 | </a>
							<a href="<c:url value=''/>">비밀번호 찾기 | </a>
							<a href="<c:url value=''/>">회원가입</a>
						</div> <!--  searchBox -->
					</form>	
					
				<%-- <form class="loginForm" id="loginForm" name="loginForm">
					<div class="input">
						<div class="inpuEventBox">
							<input type="text" id="userId" class="idInput" name="id" value="${userId}" autocomplete="off" required>
							<label for="idInput" class="eventLabel"><span>아이디</span></label>
						</div> <!-- inpuEventBox -->
						<div class="inpuEventBox">
							<input type="password" class="pwInput" id="userPw" name="pwd" autocomplete="off" required>
							<label for="pwInput" class="eventLabel"><span>비밀번호</span></label>
						</div>	<!-- inpuEventBox -->
					</div> <!-- input -->					
				</form> --%>
					
					<p class="line">
				</div> <!-- myExhbn -->
				
			</div> <!-- myPageBox -->
		</section>
		 </div> <!-- wrapper -->
		 <c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>