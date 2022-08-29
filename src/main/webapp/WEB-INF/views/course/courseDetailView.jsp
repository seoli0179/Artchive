<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>arTchive / {코스 제목(글제목)}</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/tools/reset.css'/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/common.css'/>">
		<!-- icon-kit -->
		<script src="https://kit.fontawesome.com/50d21a2bed.js" crossorigin="anonymous"></script>

		<link rel="stylesheet" type="text/css" href="<c:url value='/css/course/courseDetail.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/toggle.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/note/detail.css'/>">
		<script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f62ace4deff6b141114cc8499d76cb47"></script>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f62ace4deff6b141114cc8499d76cb47&libraries=services"></script>
		
		<script src="<c:url value='/js/note/detail.js'/>"></script>
		<script src="<c:url value='/js/course/detailView.js'/>"></script>
		<script type="text/javascript"></script>
	</head>
	<body>
		<!-- top으로 이동 -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		
		<main id="courseDetail-wrap">
			<!-- headerTextBox -->
			<section id="courseHeader" class="courseHeaderImg">
				<div class="headerTextBox" style="background-image : url('${course.exhbnImgUrl}');">
					<div id="header-exhbnTitle" class="headerText">
						<ul><li>${course.exhbnTitle}</li></ul>
					</div>
					<div id="header-postTitle" class="headerText">
						<h1>${course.courseTitle}<h1>
					</div>
					<div id="header-postDate" class="headerText">
						<ul><li><fmt:formatDate value="${course.createdAt}" pattern="yyyy. MM. dd. E"></fmt:formatDate></li></ul>
					</div>
           		</div><!-- .headerTextBox -->
			</section><!-- .courseHeader -->

			<!-- courseMain -->
			<section id="courseMenu">
				<div class="back goleft" onclick="goBack();">
					<i id="back" class="fa-solid fa-arrow-left fa-2xl"></i>
				</div>
           		<div id="courseMainBtn-Box">
					<input type="button" id="editCourseBtn"  class="white-btn" value="수정" onclick="location.href='<c:url value="/course/${course.courseId}/edit"/>'">
					<input type="button" id="like-btn"  class="white-btn" value="좋아요">
					<input type="button" id="scrap-btn"  class="black-btn" value="스크랩">
           		</div><!-- courseMainText -->
			</section><!-- courseMenu -->

			<!-- courseMain -->
			<article id="courseMain">
				<section class="tag-box-view">
					<h3>관련 태그</h3>
					<ul id="tagList">
						<c:forTokens var="taglist" items="${course.courseTag}" delims=";;">
							<li><c:out value="${taglist}"/></li>
						</c:forTokens>
					</ul>
				</section> <!-- editCourseBtn -->
				<section id="course">
					<section id="timeline-container">
						<div class="timeline-course-container">
							<div class="route-row" id="startPoint">
								<div class="left-side">
									<div class="line down"></div>
									<div class="left">
										<div class="dot"></div>
									</div>
									<div class="content explain">Start ...</div>
								</div>
							</div>
							<c:forEach var="site" items="${siteName}" varStatus="status">
								<div class="route-row">
									<div class="left-side">
										<div class="line"></div>
										<div class="left">
											<div class="mainCourse-dot">${status.count}</div>
										</div>
										<div class="content">
											<div class="where">
												<h3 class="where-title">${site}</h3>
												<div class="address">${siteAddress[status.index]}</div>
											</div>
										</div>
									</div>
									<div class="memo-box">
										<span class="small-text">${siteMemo[status.index]}</span>
									</div>
								</div>
							</c:forEach>
							<div class="route-row" id="endPoint">
								<div class="left-side">
									<div class="line up"></div>
									<div class="left">
										<div class="dot"></div>
									</div>
									<div class="content explain">End ...</div>
								</div>
							</div>
							<div class="memo-box">
								<span class="small-text">
									<fmt:formatDate value="${course.updatedAt}" pattern="yyyy. MM. dd. E"/>요일에 마지막으로 수정되었습니다.
								</span>
							</div>
						</div>
					</section>
					<section id="courseMapBox">
						<div id="courseMap"></div>
	   						<button onclick="setCenter()">지도 중심좌표 이동시키기</button>
  							<button onclick="hideMarkers()">마커 감추기</button>
	   						<button onclick="showMarkers()">마커 보이기</button>
					</section><!-- courseMap -->
					 	
					</section><!-- Course -->
			
				
			</article><!-- courseMain -->
			<section class="share">
				<i class="fa-solid fa-envelope fa-xl"></i>
				<i class="fa-brands fa-twitter fa-xl"></i>
				<i class="fa-brands fa-facebook fa-xl"></i>
				<i class="fa-solid fa-share-nodes fa-xl"></i>
			</section>

			<section id="comment">
				<div class="comment-write">
                  <textarea id="story" name="story" rows="5" cols="33" placeholder="Leave a Comment">
				  </textarea>
					<input class="post" type="button" value="Post">
				</div>
				<div class="comment-num">2 comments</div>
				<div class="comment-list">
					<div class="comment">
						<div class="comment-scrap">
							<div class="like"><i class="fa-solid fa-heart" style="color:Red"></i>7</div>
						</div>
						<div class="comment-summary">
							<div class="info">
								<div class="username">username</div>&nbsp;&middot;&nbsp;
								<div class="createdAt">08-17</div>
							</div>
							<div class="comment-body">
								코멘트 내용
							</div>
						</div>
					</div>
					<div class="comment">
						<div class="comment-scrap">
							<div class="like"><i class="fa-solid fa-heart" style="color:Black"></i>7</div>
						</div>
						<div class="comment-summary">
							<div class="info">
								<div class="username">username</div>&nbsp;&middot;&nbsp;
								<div class="createdAt">08-17</div>
							</div>
							<div class="comment-body">
								코멘트 내용
							</div>
						</div>
					</div>
				</div>
			</section>
		</main>

		 <!-- bottom 이동 -->
         <c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>