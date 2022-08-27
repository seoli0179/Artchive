<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
		<title>arTchive / 마이페이지 - 맞춤정보 수정</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/tools/reset.css'/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/common.css'/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/myPage/myPageEdit.css'/>"/>
		<script src="https://kit.fontawesome.com/50d21a2bed.js" crossorigin="anonymous"></script>
		<script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/myPage/myPageEdit.js'/>"></script>
		
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
		
				<h2>개인정보 수정</h2>
					<p class="line">
				<div class="titleBox">
					<a href="<c:url value='/myPage/myPageEdit'/>">기본 정보</a>
					<a href="<c:url value='/myPage/myPageCustom'/>">맞춤 정보</a>
				</div><!-- titleBox -->
					<form>
					<div class="tableBox">
						<div class="centerBox">
							<h2 class="h2"><a class="logo" href="<c:url value='/'/>">Artchive</a></h2>
						</div>
							
						<div class="infoBox">
							<div class="itemsBox"><span>아이디</span></div>
							<div class="inputBox">userId</div>
							
						</div> <!-- infoBox -->
						
						<!-- 이름 -->
						<div class="infoBox">
							<div class="itemsBox"><span>이름</span></div>
							<div class="inputBox">userName</div>	
							<input type="button" class="nameBtn white-btn edit" value="수정">
						</div> <!-- infoBox -->
						
						<div class="nameBox">
							<div class="explain">개명하신 경우 본인인증하시면 이름이 변경됩니다.</div>
							<input type="text" class="nameInput" placeholder="이름 입력">
							<div class="explain">
							<i class="fa-solid fa-circle-info"></i> 이동통신사 및 신용평가기관 모두 변경된 이름으로 등록되어 있는지 확인 후 진행해주세요.</div>
						</div>
						
						<!-- 휴대폰 번호 -->
						<div class="infoBox">
							<div class="itemsBox"><span>휴대폰 번호</span></div>
							<div class="inputBox">userNum</div>	
							<input type="button" class="numberBtn white-btn edit" value="수정">
						</div> <!-- infoBox -->
						
						<div class="numberBox">
							<div class="explain">휴대폰번호 변경을 위해 인증이 필요합니다.</div>
							<input type="text" class="numberInput" placeholder="변경 휴대폰 번호(-없이 입력)">
							<div class="warning">휴대폰번호를 입력해주세요. (-없이 입력)</div>
						</div>
						
						<!-- 닉네임  -->
						<div class="infoBox">
							<div class="itemsBox"><span>닉네임</span></div>
							<div class="inputBox">userNickName</div>	
							<input type="button" class="nicknameBtn white-btn edit" value="수정">
						</div> <!-- infoBox -->
						
						<div class="nicknameBox">
							<div class="explain">한글 1~10자, 영문 대소문자 2~20자, 숫자를 사용할 수 있습니다.(혼용가능)</div>
							<input type="text" class="nameInput" placeholder="닉네임 입력">
							<div class="warning">중복되지 않은 별명으로 변경해주세요.</div>
						</div>
						
						<!-- 이메일 -->
						<div class="infoBox">
							<div class="itemsBox"><span>이메일</span></div>
							<div class="inputBox">userEmail</div>
							<input type="button" class="emailBtn white-btn edit" value="수정">
						</div> <!-- infoBox -->
						
						<div class="emailBox">
							<div class="explain">이메일 변경을 위해 인증이 필요합니다.</div>
							<input type="text" class="emailInput" placeholder="변경 이메일">
							<select class="emailAddress">
								<option value="1" selected>선택하세요</option>
								<option value="2">naver.com</option>
								<option value="3">daum.net</option>
								<option value="4">nate.com</option>
								<option value="5">gmail.com</option>
								<option value="6">hanmail.net</option>
							</select>
							<div class="warning">이메일을 입력해주세요.</div>
						</div>
						
						<div class="infoBox">
							<div class="itemsBox"><span>생년월일</span></div>
							<div class="inputBox">userBirth</div>	
						</div> <!-- infoBox -->
						
						<div class="infoBox">
							<div class="itemsBox"><span>성별</span></div>
							<div class="inputBox">
								<div class="radioStyle">
									<input type="radio" name="gender" value="men" class="men" checked>
									<label for="men">남</label>
									
								</div> <!-- radioStyle -->
								
								<div class="woman">
									<input type="radio" name="gender" class="women" value="women" >
									<label for="women">여</label>
								</div>
								
							</div>	
						</div> <!-- infoBox -->
						
						<div class="buttonBox"> 
							<input type="submit" class="black-btn" value="확인">
							<input type="reset" class="white-btn" value="취소">
						</div> <!-- buttonBox -->
					</div> <!-- tableBox -->
						
					</form>
			</div> <!-- myPageBox -->
            </div>
        </main>
        
		</section>
		 </div> <!-- wrapper -->
		 <c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>