<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
		<title>arTchive / 마이페이지 - 비밀번호 변경</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/tools/reset.css'/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/common.css'/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/myPage/pwChange.css'/>"/>
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
						<li><a href="<c:url value='/myPage/home/${sessionScope.sid}'/>"><i class="fa-solid fa-house"></i> 홈</a></li>
						<li><a href="<c:url value='/myPage/check'/>"><i class="fa-solid fa-gears"></i> 개인정보 수정</a></li>
						<li><a href="<c:url value='/myPage/pwChange'/>"><i class="fa-solid fa-unlock-keyhole"></i> 비밀번호 설정</a></li>
						<li><a href="<c:url value='/myPage/scrap'/>">	<i class="fa-solid fa-photo-film"></i> 내 전시</a></li>
						<li><a href="<c:url value='/myPage/actHistory'/>"><i class="fa-solid fa-pen"></i> 활동 내역</a></li>
						<li><a href="<c:url value='/myPage/recmd'/>"><i class="fa-solid fa-star"></i> 추천 콘텐츠</a></li>
						<li><a href="<c:url value='/myPage/withdraw'/>"><i class="fa-solid fa-right-from-bracket"></i> 회원 탈퇴</a></li>
					</ul>
				</nav>
			
			<div class="myPageBox">
		
				<h2>비밀번호 변경</h2>
				<p class="line">
				
				
				<form>
					<div class="tableBox">
						<div class="centerBox">
							<h2 class="h2"><a class="logo" href="<c:url value='/'/>">Artchive</a></h2>
							<span>주기적인 <span class="red">비밀번호 변경</span>을 통해<br>
							개인정보를 안전하게 보호하세요.
							
						</div> <!-- centerBox -->
							
						<div class="infoBox">
							<div class="inputBox"></div>	
						</div> <!-- infoBox -->
						
						<div class="newPwBox">
							<div class="pwBox">
								<input type="text" class="pwInput" name="userPw" placeholder="새 비밀번호">
							</div>
							<div class="red">영문, 숫자, 특수문자 8~12자로 입력해주세요</div>
							
							<div class="pwCfmBox">
								<input type="text" class="pwCfmInput" name="userPwCfm" placeholder="새 비밀번호 확인">
								<div class="explain">비밀번호는 8~12자 이내로 영문(대,소문자), 숫자, 특수문자 3가지 조합<br> 중 2가지 이상을 조합하셔서 만드시면 됩니다.</div>
							</div>	
						</div>
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