<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>arTchive / 마이페이지 - 추천콘텐츠(전시)</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/tools/reset.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/common.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/myPage/recmd.css'/>" />
<script src="https://kit.fontawesome.com/50d21a2bed.js"
	crossorigin="anonymous"></script>
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
							<li><a href="<c:url value='/myPage/home'/>"><i class="fa-solid fa-house"></i> 홈</a></li>
							<li><a href="<c:url value='/myPage/myGallery'/>"><i class="fa-solid fa-photo-film"></i> 내 전시</a></li>
							<li><a href="<c:url value='/myPage/myCourse'/>"><i class="fa-solid fa-route"></i> 내 코스</a></li>
							<li><a href="<c:url value='/myPage/recmd'/>"> <i class="fa-solid fa-thumbs-up"></i> 추천 콘텐츠</a></li>
							<li><a href="<c:url value='/myPage/post'/>"><i class="fa-solid fa-pen"></i> 활동 내역</a></li>
							<li><a href="<c:url value='/myPage/reviewScrap'/>"><i class="fa-solid fa-star"></i> 게시판</a></li>
							<li><a href="<c:url value='/myPage/check'/>"><i class="fa-solid fa-gears"></i> 개인정보 수정</a></li>
							<li><a href="<c:url value='/myPage/check2'/>"><i class="fa-solid fa-unlock-keyhole"></i> 비밀번호 설정</a></li>
							<li><a href="<c:url value='/myPage/withdraw'/>"><i class="fa-solid fa-right-from-bracket"></i> 회원 탈퇴</a></li>
						</ul>
					</nav>

                <div class="myPageBox">
                    <div class="contentsBox">
                        <div class="contents">
                            <h2>추천 콘텐츠</h2>
                        </div>
                        <div class="setting">
                            <a class="white-btn" href="<c:url value='/myPage/custom'/>">설정</a>
                        </div>
                    </div>
                    <!-- contentsBox -->

                    <p class="line">
                    <div class="titleBox">
                        <a>${sessionScope.username}님에게 추천하는 전시</a>
                    </div>
                    <!-- titleBox -->


                    <div class="wholeExpbnBox">
                        <c:forEach items="${items}" var="item" varStatus="status">
                            <input type="hidden" id="exhbnId_${status.index}" value="${item.exhbnId}">
                            <div class="courseBox">
                                <div class="imageBox">
                                    <img style="cursor: pointer;" class="exhbnImgClick" src="${item.exhbnImgUrl}">
                                </div>
                                <!-- imageBox -->
                                <a>${item.exhbnArea}</a>
                                <a href="<c:url value="/exhbn/detail/${item.exhbnId}"/> ">${item.exhbnTitle}</a>
                                <a><fmt:formatDate value="${item.exhbnStartDate}" pattern="yyyy-MM-dd"></fmt:formatDate>
                                    ~ <fmt:formatDate value="${item.exhbnEndDate}"
                                                      pattern="yyyy-MM-dd"></fmt:formatDate></a>
                            </div>
                        </c:forEach>
                        <!-- courseBox -->
                    </div>
                    <!-- wholeExpbnBox -->


                </div>
                <!-- myPageBox -->
            </div>
        </main>

    </section>
</div>
<!-- wrapper -->
<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
</body>
</html>