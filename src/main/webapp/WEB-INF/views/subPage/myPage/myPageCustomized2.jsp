<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
		<title>마이페이지 - 개인정보 수정(맞춤 정보)2</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/tools/reset.css'/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/myPage/myPageCustomized2.css'/>"/>
		
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
						<a href="<c:url value='/subPage/myPage/myPageCustomized2'/>">맞춤 정보</a>
				</div><!-- titleBox -->
					<a class="interestMent">어떤 종류의 미술에 관심이 있나요?</a>
				
				<div class="intetestBox">
					
					<input id="checkboxidSeoul" type="checkbox" class="css-checkbox">
   					<label for="checkboxidSeoul" class="css-label"><span>디자인</span></label>
					
					<input id="checkboxKyungKi" type="checkbox" class="css-checkbox">
    				<label for="checkboxKyungKi" class="css-label"><span>한국화</span></label>
    				
    				<input id="checkboxDeoksugung" type="checkbox" class="css-checkbox">
    				<label for="checkboxDeoksugung" class="css-label"><span>조각</span></label>
					
					<input id="checkboxCheongju" type="checkbox" class="css-checkbox">
    				<label for="checkboxCheongju" class="css-label"><span>공예</span></label>
    				
    				<input id="checkboxCmcArt" type="checkbox" class="css-checkbox">
    				<label for="checkboxCmcArt" class="css-label"><span>건축</span></label>

    				
				</div> <!-- intetestBox -->
					
				<div class="intetestBox">	
					<input id="checkboxChild" type="checkbox" class="css-checkbox">
    				<label for="checkboxChild" class="css-label"><span>회화</span></label>
    				
    				<input id="checkboxTeen" type="checkbox" class="css-checkbox">
    				<label for="checkboxTeen" class="css-label"><span>드로잉/판화</span></label>
    				
    				<input id="checkboxAdult" type="checkbox" class="css-checkbox">
    				<label for="checkboxAdult" class="css-label"><span>사진전</span></label>
    				
    				<input id="checkboxChildArt" type="checkbox" class="css-checkbox">
    				<label for="checkboxChildArt" class="css-label"><span>서예</span></label>
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