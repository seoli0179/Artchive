<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>arTchive / {코스 제목(글제목)}</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/tools/reset.css'/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/common.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/chatbot.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/course/courseDetail.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/toggle.css'/>">
		<script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
		<script type="text/javascript"></script>
	</head>
	<body>
		<!-- top으로 이동 -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		
		<main id="courseDetail-wrap">
			<!-- headerTextBox -->
			<section id="courseHeader" class="courseHeaderImg">
				<div id="headerTextBox" style="background-image : url('https://cdn.imweb.me/thumbnail/20220405/fb85ea780e919.jpeg');">
					<div id="header-exhbnTitle" class="headerText">
						<ul><li>{전시회 이름}</li></ul>
					</div>
					<div id="header-postTitle" class="headerText">
						<h1>{코스 제목(글제목)}<h1>
					</div>
					<div id="header-postDate" class="headerText">
						<ul><li>{날짜}</li></ul>
					</div>
           		</div><!-- .headerTextBox -->
			</section><!-- .courseHeader -->

			<!-- courseMain -->
			<section id="courseMenu">
				<div></div>
           		<div id="courseMainText">
						<input type="button" id="editCourseBtn"  class="white-btn" value="수정">
           		</div><!-- courseMainText -->
			</section><!-- courseMenu -->

			<!-- courseMain -->
			<article id="courseMain">
				<section class="tag-box-view">
					<h3>관련 태그</h3>
					<ul>
						<li>혼자 보러가기 좋은 전시</li>
						<li>혼밥하기 좋은 곳</li>
						<li>조용한 카페</li>
					</ul>
				</section> <!-- editCourseBtn -->
	           		<div id="course">
	           			<div id="courseLine"></div>
	           			<div id="courseIcon">
	           				<div id="courseStart"></div>
	           				<div id="number1"><ul><li>1</li></ul></div>
	           				<div id="number2"><ul><li>2</li></ul></div>
	           				<div id="number3"><ul><li>3</li></ul></div>
	           				<div id="courseEnd"></div>
	           			</div>
	           			
	           			<div id="courseText">
	           				<div id="StartText">
	           					<ul>
	           						<li>일정시작</li>
	           					</ul>
	           				</div><!-- StartText -->
	           				
	           				<div id="exhibitionName">
	           					<ul>
		           					<li id="exhibitionText">전시명</li>
		           					<li>서울시 00구 00동</li>
	           					</ul>
	           				</div><!-- exhibitionName -->
	           				
	           				<div id="restaurantName">
	           					<ul>
		           					<li id="restaurantText">식당명</li>
		           					<li>서울시 00구 00동</li>
	           					</ul>
	           				</div><!-- restaurantName -->
	           				
	           				<div id="cafeName">
	           					<ul>
		           					<li id="cafeText">카페명</li>
		           					<li>서울시 00구 00동</li>
	           					</ul>
	           				</div><!-- cafeName -->
	           				
	           				<div id="EndText">
	           					<ul>
	           						<li>일정끝</li>
	           					</ul>
	           				</div><!-- EndText -->
	           			</div><!-- courseText -->
	           			
	           			<div id="courseDelete">
		           			<div id="deleteEx">
		           				<img src="<c:url value='/image/minus.png'/>">
		           			</div>
		           			<div id="deleteRes">
		           				<img src="<c:url value='/image/minus.png'/>">
		           			</div>
		           			<div id="deleteCafe">
		           				<img src="<c:url value='/image/minus.png'/>">
		           			</div>
	           			</div>
	           		</div><!-- Course -->
	           		
					<div id="courseMap">
					 
					 </div><!-- courseMap -->
					 
				</article><!-- courseMain -->
				
				<div id="searchCourse">
					<ul>
						<li>Search.</li>
					</ul>
					<input type="text" id="courseSearch" name="searchMessage" size="120"  placeholder="검색어를 입력하세요."/>
					<input type="button" id="CourseSearchBtn" value="검색">
				</div>
				
				<div id = "recommendCourse">
				 <div class="courseAdd">
				 	<div class="courseAddBtn">
				 		<input type="button" class="white-btn" id="courseAddBtn1" value="장소 추가">
				 	</div>
				 </div>
				 
				  <div class="courseAdd">
				 	<div class="courseAddBtn">
				 		<input type="button" class="white-btn" id="courseAddBtn1" value="장소 추가">
				 	</div>
				 </div>
				 
				  <div class="courseAdd">
				 	<div class="courseAddBtn">
				 		<input type="button" class="white-btn" id="courseAddBtn1" value="장소 추가">
				 	</div>
				 </div>
				 
				  <div class="courseAdd">
				 	<div class="courseAddBtn">
				 		<input type="button" class="white-btn" id="courseAddBtn1" value="장소 추가">
				 	</div>
				 </div>
				</div><!-- recommendCourse -->
           		
		</main><!-- wrapper -->

		 <!-- bottom 이동 -->
         <c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>