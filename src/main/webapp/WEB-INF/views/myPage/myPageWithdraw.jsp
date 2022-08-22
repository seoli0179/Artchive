<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
		<title>arTchive / 마이페이지</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/tools/reset.css'/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/myPage/myPageWithdraw.css'/>"/>
		
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
				<h2>회원 탈퇴</h2>
				<p class="line">
					<div class="userBox">
						<h2>회원 탈퇴시 아래 내용을 먼저 확인해주세요.</h2>
						<span>* 회원 탈퇴는 신청하시는 즉시 처리됩니다.</span><br><br>
						<span>* 로그인이 필요한 서비스 이용은 더 이상 이용하실 수 없게 됩니다. (예 : 이벤트 참여, 게시판 작성 등)</span>
					</div> <!-- userBox -->
				<p class="line">
				<div class="myExhbn">
					<h2>본인 확인을 위하여 아래 정보를 입력해주세요.</h2>
				
				<form>
					<div class="tableBox">
						
						<div class="infoBox">
							<div class="itemsBox"><span>아이디</span></div>
							<div class="inputBox"><input type="text" class="emailInput" placeholder="email@address.com" readonly ></div>	
						</div> <!-- infoBox -->
						
						<div class="infoBox">
							<div class="itemsBox"><span>이름</span></div>
							<div class="inputBox"><input type="text" class="nameInput" placeholder="이름" readonly ></div>	
						</div> <!-- infoBox -->
						
						<div class="infoBox">
							<div class="itemsBox"><span>비밀번호 확인</span></div>
							<div class="inputBox"><input type="password" class="pwConfirmInput" placeholder="비밀번호를 다시 한 번 입력하세요." ></div>	
						</div> <!-- infoBox -->
							
							
						<div class="infoBox">
							<div class="itemsBox"><span>탈퇴 사유</span></div>
							<div class="inputBox"> 
								<select class="reason" required>
								   	<option value="1">ID변경</option>
										<option value="2">서비스 이용 불편</option>
										<option value="3">개인정보 누출 우려</option>
										<option value="4">시스템 장애</option>
										<option value="5">기타</option>
								  </select>
							</div>	
						</div> <!-- infoBox -->
							
					</div> <!-- tableBox -->
				
						<div class="buttonBox"> 
							<input type="submit" class="submitBtn" value="탈퇴 신청">
							<input type="reset" class="resetBtn" value="취소">
						</div> <!-- buttonBox -->
					</form>
				
				</div> <!-- myExhbn -->
			</div> <!-- myPageBox -->
		</section>
		 </div> <!-- wrapper -->
		 <c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>