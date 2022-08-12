<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>전시명</title>
		<script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/detail.js'/>"></script>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/reset.css'/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/common.css'/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/detail.css'/>"/>
	</head>
	<body>
		<!-- top -->
		<div class="top">
		</div>
		
		<!-- detail main -->
		<main id="detail-wrap">
			<div id="cover-container" class="cover-img" style="background-image : url('https://images.unsplash.com/photo-1579783902614-a3fb3927b6a5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=890&q=80');
			">
				<div class="cover-heading">
					<div class="cover-text">
						<div class="upper-cover">
							<a href="#">
									<span class="upper-cover-text">분류</span>
							</a>
						</div>
						<div class="cover-header">
							<header>전시</header>
						</div>
						<div class="cover-date">
							<span>0000. 00. 00 ~ 0000. 00. 00</span>
						</div>
					</div>
					<!-- .cover-text -->
				</div>
				<!-- .cover-heading -->
			</div>
			<!-- .detail-img-container -->
			
			<div id="contents-container">
				<div id="summary-container">
					<p>
					현대카드 스토리지에서는 뉴욕 MoMA (The Museum of Modern Art, New York)의 미디어 & 퍼포먼스 소장품 전시, ＜Pervasive Light: Works from MoMA’s Media and Performance Collection (스며드는 빛: 뉴욕 MoMA 미디어 & 퍼포먼스 컬렉션)＞가 진행 중이다.
					 2006년부터 현대카드와 파트너십을 맺어왔던 MoMA와 긴밀한 협력을 통해 기획된 이번 전시는 미술관의 신규 소장품 가운데 기술적 혁신과 더불어 이에 대한 비판적 성찰이 담긴 현대미술 작품들을 선별하여 보여준다.
					 본 전시는 3세대에 걸친 다양한 연령대의 작가들의 작품으로 구성되어 있는데, 그 중에서 독일의 영화감독이자 미디어아티스트인 하룬 파로키(Harun Farocki, 1944-2014)는 사회문화 전반에 걸친 현상들의 배후를 치밀하게 조사하여, 그 이면의 모습을 새롭게 비판적으로 바라보게 하는 작업들을 선보여 왔다.
					 이번 전시에 출품된 ＜Eye/Machine＞ 시리즈를 통해 그의 작품 세계를 만나보자.
					</p>
					<div id="poster-container">
						<div class="poster-box">
							<img class="poster" src="https://images.unsplash.com/photo-1579783902614-a3fb3927b6a5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=890&q=80">
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
								<span>2022년 6월 10일(금)<br/>~ 2022년 9월 25일(일)</span>
							</div>
						</div>
						<div id="pay" class="context-box">
							<div class="context-title">
								<span>관람료</span>
							</div>
							<div class="context-content">
								<span>일반 5,000원, 중고생 4,000원<br/>* 현대 카드 결제 시 20% 즉시 할인<br/>* M포인트 100% 사용가능(할인 및 포인트 사용 중복 적용 불가)</span>
							</div>
						</div>
						<div id="reservation" class="context-box">
							<div class="context-title">
								<span>예약방법</span>
							</div>
							<div class="context-content">
								<span>DIVE 앱 및 멜론 티켓 사이트<br/>* DIVE 앱 통해 예매 시, 현대카드만 결제 가능<br/>* 예약자 포함 최대 2인까지 예약 가능</span>
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
								<span>현대카드 스토리지<br/>서울시 서울구 서울동 00-00</span>
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
								<span>00 - 0000 - 0000</span>
							</div>
						</div>
					</div>
					<!-- .line2 -->
					
				</div>
				<!-- .context-container -->
				<div id="button-box">
					<button class="white-btn" onclick="location.href='#'">자세히 보기</button>
					<button class="black-btn" onclick="location.href='#'">관심전시추가</button>
				</div>
				<div id="map-box">
					<div class="map">
					</div>
				</div>
				<div id="tag-box">
					<span class="tag-label">Tag. </span>
					<span><a href="#">태그1</a>
					<a href="#">태그1</a>
					<a href="#">태그1</a></span>
				</div>
				<!-- .tag-box -->
			</div>
			<!-- .contents-container -->
			<div id="review-container">
				<h2>Reviews.</h2>
				<article class="review-box">
					<div class="review" style="background-image: url();">
					</div>
					<div class="post-meta">
					</div>
				</article>
				<article class="review-box">
					<div class="review" style="background-image: url();">
					</div>
					<div class="post-meta">
					</div>
				</article>
				<article class="review-box">
					<div class="review" style="background-image: url();">
					</div>
					<div class="post-meta">
					</div>
				</article>
				<article class="review-box">
					<div class="review" style="background-image: url();">
					</div>
					<div class="post-meta">
					</div>
				</article>
				<article class="review-box">
					<div class="review" style="background-image: url();">
					</div>
					<div class="post-meta">
					</div>
				</article>
				<article class="review-box">
					<div class="review" style="background-image: url();">
					</div>
					<div class="post-meta">
					</div>
				</article>
				<article class="review-box">
					<div class="review" style="background-image: url();">
					</div>
					<div class="post-meta">
					</div>
				</article>
				<article class="review-box">
					<div class="review" style="background-image: url();">
					</div>
					<div class="post-meta">
					</div>
				</article>
				<article class="review-box">
					<div class="review" style="background-image: url();">
					</div>
					<div class="post-meta">
					</div>
				</article>
				<article class="review-box">
					<div class="review" style="background-image: url();">
					</div>
					<div class="post-meta">
					</div>
				</article>
			</div>
		</main>
		
		<!-- bottom -->
	</body>
</html>