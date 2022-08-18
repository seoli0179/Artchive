<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
		<title>마이페이지 - 개인정보 수정(맞춤 정보)3</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/tools/reset.css'/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/myPage/myPageCustomized3.css'/>"/>
		
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
				<h2>개인정보 수정</h2>
					<p class="line">
				<div class="titleBox">
						<a href="<c:url value='/subPage/myPage/myPageModifying'/>">기본 정보</a>
						<a href="<c:url value='/subPage/myPage/myPageCustomized3'/>">맞춤 정보</a>
				</div><!-- titleBox -->
					<a class="interestMent">관심있는 주제가 있으신가요?</a>
				
				<div class="intetestBox">
					
					<input id="checkboxidSeoul" type="checkbox" class="css-checkbox">
   					<label for="checkboxidSeoul" class="css-label"><span>VR</span></label>
					
					<input id="checkboxKyungKi" type="checkbox" class="css-checkbox">
    				<label for="checkboxKyungKi" class="css-label"><span>공연</span></label>
    				
    				<input id="checkboxDeoksugung" type="checkbox" class="css-checkbox">
    				<label for="checkboxDeoksugung" class="css-label"><span>퍼포먼스</span></label>
					
					<input id="checkboxCheongju" type="checkbox" class="css-checkbox">
    				<label for="checkboxCheongju" class="css-label"><span>현대미술</span></label>
    				
    				<input id="checkboxCmcArt" type="checkbox" class="css-checkbox">
    				<label for="checkboxCmcArt" class="css-label"><span>음성해설</span></label>

    				
				</div> <!-- intetestBox -->
					
				<div class="intetestBox">	
					<input id="checkboxChild" type="checkbox" class="css-checkbox">
    				<label for="checkboxChild" class="css-label"><span>보존과학</span></label>
    				
    				<input id="checkboxTeen" type="checkbox" class="css-checkbox">
    				<label for="checkboxTeen" class="css-label"><span>소장품</span></label>
    				
    				<input id="checkboxAdult" type="checkbox" class="css-checkbox">
    				<label for="checkboxAdult" class="css-label"><span>다원예술</span></label>
    				
    				<input id="checkboxChildArt" type="checkbox" class="css-checkbox">
    				<label for="checkboxChildArt" class="css-label"><span>작품감상</span></label>
    				
				    <input id="checkboxMenu" type="checkbox" class="css-checkbox">
    				<label for="checkboxMenu" class="css-label"><span>항목</span></label>
    			</div> <!-- intetestBox -->
    			
    			
    			<div class="intetestBox">	
				
				    <input id="checkboxMenu" type="checkbox" class="css-checkbox">
    				<label for="checkboxMenu" class="css-label"><span>항목</span></label>
    				
    				<input id="checkboxMenu1" type="checkbox" class="css-checkbox">
    				<label for="checkboxMenu1" class="css-label"><span>항목1</span></label>
    				
    				<input id="checkboxMenu2" type="checkbox" class="css-checkbox">
    				<label for="checkboxMenu2" class="css-label"><span>항목2</span></label>
    				
    				<input id="checkboxMenu3" type="checkbox" class="css-checkbox">
    				<label for="checkboxMenu3" class="css-label"><span>항목3</span></label>
    				
    				<input id="checkboxMenu4" type="checkbox" class="css-checkbox">
    				<label for="checkboxMenu4" class="css-label"><span>항목4</span></label>
    				
    				
    			</div> <!-- intetestBox -->
    				
				<p class="line"><p class="line gray"> 
					<form>
						<div class="buttonBox">
							<input type="button" value="이전" class="prvBtn">
							<input type="button" value="다음" class="nextBtn">
						</div><!-- buttonBox -->
					</form>
			</div> <!-- myPageBox -->
		</section>
		 </div> <!-- wrapper -->
		 <c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>