<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>arTchive / ${exhbn.exhbnTitle}</title>
		<script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/exhbn/detail.js'/>"></script>
		<script src="<c:url value='/js/note/detail.js'/>"></script>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f62ace4deff6b141114cc8499d76cb47&libraries=services"></script> <!-- 지도 -->
		<script src="<c:url value='/js/exhbn/map.js'/>"></script> <!-- 지도 커스텀 -->
		<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script> <!-- sns 공유 -->
		<script src="<c:url value='/js/exhbn/shareSNS.js'/>"></script> <!-- SNS 공유 -->
		<!-- icon-kit -->
		<script src="https://kit.fontawesome.com/50d21a2bed.js" crossorigin="anonymous"></script>
		<link rel="stylesheet" type="text/css" href="<c:url value='/tools/reset.css'/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/common.css'/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/exhbn/detail.css'/>"/>
	</head>
	<body>
		<!-- top으로 이동 -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		
		<!-- detail main -->
		<main id="detail-wrap">
			<div id="cover-container" class="cover-img" style="background-image : url('${exhbn.exhbnImgUrl}');
			">
				<div class="cover-heading">
					<div class="cover-text">
						<div class="upper-cover">
							<a href="#">
									<span class="upper-cover-text">${exhbn.exhbnType} · ${exhbn.exhbnArea}</span>
							</a>
						</div>
						<div class="cover-header">
							<h1 id="exhbnTitle">${exhbn.exhbnTitle}</h1>
						</div>
						<div class="cover-date">
							<span><fmt:formatDate value = "${exhbn.exhbnStartDate}" type ="date" pattern="yyyy. MM. dd"/> ~ <fmt:formatDate value = "${exhbn.exhbnEndDate}" type ="date" pattern="yyyy. MM. dd"/></span>
						</div>
					</div>
					<!-- .cover-text -->
				</div>
				<!-- .cover-heading -->
			</div>
			<!-- .detail-img-container -->
			
			<div id="contents-container">
				<div class="back" onclick="goBack();">
					<i id="back" class="fa-solid fa-arrow-left fa-2xl"></i>
				</div>
				<div id="summary-container">
					<p>
					${exhbn.exhbnDetail}
					</p>
					<div id="poster-container">
						<div class="poster-box">
							<img class="poster" src="${exhbn.exhbnImgUrl}">
						</div>
					</div>
				</div>
				<div id="context-container">
					<div id="line1">
						<div id="period" class="context-box">
							<div class="context-title">
								<span>기간</span>
							</div>
							<div class="context-content">
								<span><fmt:formatDate value = "${exhbn.exhbnStartDate}" type ="date" pattern="yyyy년 MM월 dd일(E)"/><br/>~ <fmt:formatDate value = "${exhbn.exhbnEndDate}" type ="date" pattern="yyyy년 MM월 dd일(E)"/></span>
							</div>
						</div>
						<div id="pay" class="context-box">
							<div class="context-title">
								<span>관람료</span>
							</div>
							<div class="context-content">
								<span>${exhbn.exhbnPrice}</span>
							</div>
						</div>
						<div id="reservation" class="context-box">
							<div class="context-title">
								<span>예약방법</span>
							</div>
							<div class="context-content">
								<button class="black-btn" onclick="alert('준비중인 기능입니다.')">예약하기</button>
							</div>
						</div>
					</div>
					<!-- .line1 -->
					<div id="line2">
						<div id="location" class="context-box">
							<div class="context-title">
								<span>장소</span>
							</div>
							<div class="context-content">
								<span id="exhbn_place">${exhbn.exhbnPlace}</span><br/>
								<span id="exhbn_addr">${exhbn.exhbnPlaceAddr}</span>
							</div>
						</div>
						<div id="time" class="context-box">
							<div class="context-title">
								<span>이용시간</span>
							</div>
							<div class="context-content">
								<span>화요일 - 토요일 12:00 ~ 21:00<br/>일요일ᆞ공휴일 12:00 ~ 18:00<br/>매주 월요일 휴관</span>
							</div>
						</div>
						<div id="call" class="context-box">
							<div class="context-title">
								<span>문의</span>
							</div>
							<div class="context-content">
								<span>${exhbn.exhbnPhone}</span>
							</div>
						</div>
					</div>
					<!-- .line2 -->
					
				</div>
				<!-- .context-container -->
				<div id="map-box">
					<div id="map" class="map">
					</div>
				</div>
				<!-- tag -->
				<div class="tag-box">
					<a id="btnTwitter" class="link-icon twitter" href="javascript:shareTwitter();">
						<img src="https://cdn.icon-icons.com/icons2/2428/PNG/512/twitter_black_logo_icon_147062.png" style="width: 30px;">
					</a>
					&nbsp;
					<a id="btnFacebook" class="link-icon facebook" href="javascript:shareFacebook();">
						<img src="https://cdn.icon-icons.com/icons2/2428/PNG/512/facebook_black_logo_icon_147136.png" style="width: 30px;">
					</a>
					&nbsp;
					<a id="btnKakao" class="link-icon kakao" href="javascript:shareKakao();">
						<img src="https://cdn.icon-icons.com/icons2/2973/PNG/512/kakaotalk_logo_icon_186920.png" style="width: 30px">
					</a>
					&nbsp;
					<a id="clipBtn" class="link-icon kakao" href="javascript:clip();">
						<img src="https://cdn.icon-icons.com/icons2/1233/PNG/512/1492718748-share_83604.png" style="width: 30px;">
					</a>
				</div>
				<div id="button-box">
					<div>
						<button class="white-btn-big" onclick="window.open('${exhbn.exhbnUrl}')">자세히 보기</button>
					</div>
					<div>
						<form method="post" action="<c:url value='/insertBookMark' /> ">
							<!-- <button class="white-btn-big" onclick="location.href='#'">관심전시추가</button> -->
							<input type="submit" id="insertBookMark" class="white-btn-big" value="관심전시추가">
							<input type="hidden" id="exhbnId" name="exhbnId" value=${exhbn.exhbnId} hidden>
							<input type="hidden" id="exhbnImgUrl" value="${exhbn.exhbnImgUrl}" hidden>
						</form>
					</div>
					<div>
						<c:if test="${not empty sessionScope.sid}">
							<div><a href="<c:url value='/course/newPost/${exhbn.exhbnId}'/>"><button type="submit" class="black-btn-big">코스 작성하기</button></a></div>
						</c:if>
						<c:if test="${empty sessionScope.sid}">
							<div><button type="submit" class="black-btn-big notLogin" onclick="alert('로그인이 필요한 기능입니다.');">코스 작성하기</button></div>
						</c:if>
					</div>
				</div>
			</div>
			<!-- .contents-container -->
			<div class="sub-title">
				<i class="fa-solid fa-chevron-left" id="prevBtn"></i>
				<h2>Reviews</h2>
				<i class="fa-solid fa-chevron-right" id="nextBtn"></i>
				<br>
			</div>
			<div id="review-container">
				<c:if test="${reviewList.size() == 0}">
					<div class="no_review_message">
						관련 리뷰가 없습니다.<br>
						첫 리뷰를 작성해주세요!<br>
					</div>
				</c:if>
				<c:if test="${reviewList.size() != 0}">
					<div class="sliding-box animate">
						<c:forEach items="${reviewList}" var="rv" end="9">
							<article class="review-box">
								<div class="review" style="background-image: url('${rv.exhbnImgUrl}');">
								</div>
								<div class="post-meta">
								</div>
							</article>
						</c:forEach>
					</div>
				</c:if>
			</div>
		</main>

		<!-- bottom 이동 -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>