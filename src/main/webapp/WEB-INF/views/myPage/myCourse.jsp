<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>arTchive / 마이페이지 - 내 전시 코스</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/tools/reset.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/common.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/myPage/myCourse.css'/>" />
<script src="https://kit.fontawesome.com/50d21a2bed.js"
	crossorigin="anonymous"></script>
<script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
<script src="<c:url value='/js/myPage/myCourse.js'/>"></script>
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
							<li><a href="<c:url value='/myPage/home'/>"><i
									class="fa-solid fa-house"></i> 홈</a></li>
							<li><a href="<c:url value='/myPage/myGallery'/>"><i
									class="fa-solid fa-photo-film"></i> 내 전시</a></li>
							<li><a href="<c:url value='/myPage/myCourse'/>"><i
									class="fa-solid fa-route"></i> 내 코스</a></li>
							<li><a href="<c:url value='/myPage/recmd'/>"> <i
									class="fa-solid fa-thumbs-up"></i> 추천 콘텐츠
							</a></li>
							<li><a href="<c:url value='/myPage/post'/>"><i
									class="fa-solid fa-pen"></i> 활동 내역</a></li>
							<li><a href="<c:url value='/myPage/review'/>"><i
									class="fa-solid fa-star"></i> 전시 리뷰</a></li>
							<li><a href="<c:url value='/myPage/check'/>"><i
									class="fa-solid fa-gears"></i> 개인정보 수정</a></li>
							<li><a href="<c:url value='/myPage/check2'/>"><i
									class="fa-solid fa-unlock-keyhole"></i> 비밀번호 설정</a></li>
							<li><a href="<c:url value='/myPage/withdraw'/>"><i
									class="fa-solid fa-right-from-bracket"></i> 회원 탈퇴</a></li>
						</ul>
					</nav>

					<div class="myPageBox">

						<h2>내 코스</h2>
						<p class="line">
						<div class="titleBox">
							<a href="<c:url value='/myPage/myCourse'/>">작성한 코스</a> <a
								href="<c:url value='/myPage/courseScrap'/>">스크랩</a> <a
								href="<c:url value='/myPage/courseComment'/>">댓글</a>
						</div>
						<!-- titleBox -->


						<c:choose>
							<c:when test="${empty courseList}">
								<div class="centerBox">
									<span>작성한 코스 내역이 없습니다.<br> <span class="red">나만의
											전시코스 </span>를 작성해보세요.
									</span> <br> <br>
									<div id="bannerText3" class="bannerText">
										<ul>
											<li>
												<a href="<c:url value='/course'/>">Make Your Course!</a>
											</li>
										</ul>
									</div>
								</div>

							</c:when>

							<c:otherwise>
								<div class="board-gallery-view">
									<c:forEach var="courseList" items="${courseList}"
										varStatus="statusNm">

										<div class="post-container" style="cursor: pointer;"
											onclick="location.href='/course/${courseList.courseId}';">
											<div class="post-img-box"
												style="background-image: url('${courseList.exhbnImgUrl}');">

											</div>
											<div class="post-title-box">
												<h2>${courseList.courseTitle}</h2>
											</div>
											<div class="post-content-box">
												<b>${courseList.exhbnTitle}</b>
											</div>
											<div class="post-tag-box">
												<c:forTokens var="taglist" items="${courseList.courseTag}"
													delims=";;">
													<span class="tooltip"> <span class="tooltip-text"><c:out
																value="${taglist}" /></span>
														<div class="post-tag">
															<c:out value="${taglist}" />
														</div>
													</span>

												</c:forTokens>
											</div>
											<div class="post-footer-box">
												<div class="post-writer-box">
													<fmt:formatDate pattern="yy-MM-dd"
														value="${courseList.createdAt }" />
												</div>
												<div class="post-react-box">
													<div class="post-like-box">
														<i class="fa-solid fa-heart" style="color: black;"></i> <span>${courseList.courseLike}</span>
													</div>
													<div class="post-comment-box">
														<i class="fa-solid fa-message" style="color: black;"></i>
														<span>${courseList.courseComment}</span>
													</div>
													<div class="post-view-box">
														<i class="fa-solid fa-eye" style="color: black;"></i> <span>${courseList.courseView}</span>
													</div>
												</div>
											</div>
										</div>

									</c:forEach>
								</div> <!--board-gallery-view  -->
							</c:otherwise>
						</c:choose>

					</div> <!-- myPageBox -->
				</div> <!-- course guide box -->
			</main>

		</section>
	</div>
	<!-- wrapper -->
	<c:import url="/WEB-INF/views/layout/bottom.jsp" />
</body>
</html>