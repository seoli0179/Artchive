<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
		<title>arTchive / 마이페이지 - 비밀번호 확인</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/tools/reset.css'/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/common.css'/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/myPage/myPageCheck.css'/>"/>
		<script src="https://kit.fontawesome.com/50d21a2bed.js" crossorigin="anonymous"></script>
		<script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
		
	</head>
	<body>
		<div class="wrapper">
			 <c:import url="/WEB-INF/views/layout/top.jsp" />
		
		<section>
			
		 <main id="course-container">
            <div class="course-box main-title-box">
                <h1 class="h1">MyPage</h1>
               
            </div>
            <div class="course-box guide-box">
                <nav>
					<ul class="tabMenu">
						<li><a href="<c:url value='/myPage/myPageHome'/>"><i class="fa-solid fa-house"></i> 홈</a></li>
						<li><a href="<c:url value='/myPage/myPageCheck'/>"><i class="fa-solid fa-gears"></i> 개인정보 수정</a></li>
						<li><a href="<c:url value='/myPage/myPagePw'/>"><i class="fa-solid fa-unlock-keyhole"></i> 비밀번호 변경</a></li>
						<li><a href="<c:url value='/myPage/myPageScrap'/>">	<i class="fa-solid fa-photo-film"></i> 내 전시</a></li>
						<li><a href="<c:url value='/myPage/myPageAct'/>"><i class="fa-solid fa-pen"></i> 활동 내역</a></li>
						<li><a href="<c:url value='/myPage/myPageRecmd'/>"><i class="fa-solid fa-star"></i> 추천 콘텐츠</a></li>
						<li><a href="<c:url value='/myPage/myPageWithdraw'/>"><i class="fa-solid fa-right-from-bracket"></i> 회원 탈퇴</a></li>
					</ul>
				</nav>
			
			<div class="myPageBox">
		
				<h2>개인정보 확인</h2>
				<p class="line">
				
				
				<form>
					<div class="tableBox">
						<div class="centerBox">
							<h2 class="h2"><a class="logo" href="<c:url value='/'/>">Artchive</a></h2>
							<span>정보를 안전하게 보호하기 위해<br>
							<span class="red">비밀번호를 다시 한 번 확인</span>합니다.</span><br>
							<span class="caution">비밀번호가 타인에게 노출되지 않도록 항상 주의해주세요.</span>
						</div>
							
						<div class="infoBox">
							<div class="itemsBox"><span>아이디</span></div>
							<div class="inputBox">userId</div>	
						</div> <!-- infoBox -->
						
						<div class="infoBox">
							<div class="itemsBox"><span>비밀번호</span></div>
								<div class="inputBox"><input type="password" class="pwCfrmInput" required></div>
						</div> <!-- infoBox -->
						
						<div class="buttonBox"> 
							<input type="submit" class="black-btn" value="확인">
							<input type="reset" class="white-btn" value="취소">
						</div> <!-- buttonBox -->
					</div> <!-- tableBox -->
					</form>
			</div> <!-- myPageBox -->
            </div> <!-- course-box guide-box -->
        </main>
        
		</section>
		 </div> <!-- wrapper -->
		 <c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>