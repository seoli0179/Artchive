<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
		<title>arTchive / 마이페이지 - 예매 내역</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/tools/reset.css'/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/myPage/myPageReserv.css'/>"/>
		
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
				<h2>예매 내역</h2>
				<p class="line">
					
				<div class="myExhbn">
					<div class="titleBox">
						<a>예매내역 확인 / 취소</a>
						<div class="more"><a href="<c:url value=''/>">더보기 +</a></div> <!-- more -->
						
					</div><!-- titleBox -->
					
					
					<a class="explain"><span>Name</span>님의 지난 일주일간의 티켓 예매내역입니다.</a>
					<div class="reservConfirmBox">
						<a>조회 기간 선택 | </a>
						<div class="periodSearch">
							<a href="<c:url value=''/>">7일</a>
							<a href="<c:url value=''/>">15일</a>
							<a href="<c:url value=''/>">1개월</a>
							<a href="<c:url value=''/>">2개월</a>
							<a href="<c:url value=''/>">3개월</a>
						</div> <!-- "periodSearch" -->
						
						<a>주문 일자 |</a>
						<div class="orderDateBox">
							<select id="컬럼명" name="컬럼명" class="form-control">
							  <option value="">년</option>
							  <c:forEach var="i" begin="2020" end="2030">
							    <option value="${i}">${i}</option>
							  </c:forEach>
							</select>
							  
							<select id="컬럼명" name="컬럼명" class="form-control">
							  <option value="">월</option>
							  <c:forEach var="i" begin="1" end="12">
							  <c:choose>
							      <c:when test="${i lt 10 }">
							          <option value="0${i}">0${i}</option>
							      </c:when>
							      <c:otherwise>
							          <option value="${i}">${i}</option>
							      </c:otherwise>
							  </c:choose>
							  </c:forEach>
							</select>
							<input type="submit" value="검색">							
						</div> <!-- orderDateBox -->
					</div> <!-- reservConfirmBox -->
				
				<div class="tableBox">
					<div class="comboBox">
						예매 상태별 조회 |
						<input type="radio" name="reserv" value="전체" checked> 전체
						<input type="radio" name="reserv" value="예매"> 예매
						<input type="radio" name="reserv" value="취소"> 취소
					</div> <!-- comboBox -->
					<table>
						<thead>
							<tr>
								<th>예매일</th>
								<th>예약번호</th>
								<th>제목</th>
								<th>수량</th>
								<th>취소 가능일</th>
								<th>상태</th>
							</tr>
							
						</thead>
						<tbody>
							<tr>
								<td colspan="6">설정된 기간에 맞는 Name님의 예매 내역이 없습니다.</td>
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