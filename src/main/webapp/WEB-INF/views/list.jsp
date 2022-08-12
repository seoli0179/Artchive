<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리스트 페이지</title>
<link href="<c:url value='/tools/reset.css' /> " rel="stylesheet" type="text/css">
<link href="<c:url value='/css/common.css' /> " rel="stylesheet" type="text/css">
<link href="<c:url value='/css/list.css' /> " rel="stylesheet" type="text/css">
<script src="<c:url value='/js/jquery-3.6.0.min.js' /> "></script>
<script src="<c:url value='/js/list.js' />"></script>
</head>

<body>
	<!-- top -->
	<div class="top">
	</div>
	<!-- .top -->
	
	<main id="list-wrap">
	<!-- title  -->
	<div class="tt">
	   <h1 class="title">현재 전시</h1>
	</div>
	<!-- .title -->

	<!-- 검색창 -->
	<div class="searchArea">
   		<div class="searchWrap">
      		<div class="searchInputArea">
         		<input type="type" id="searchText" name="searchText" class="input searchInput" title="검색어 입력" placeholder="작품명 또는 작가명 검색">
		        <button type="button" class="btn bg01 srchBtn">검색</button>
	        	<button type="button" class="btn bg01 srcdetail">상세검색</button>
     		</div>
		    <br>
		    <hr>
		<!-- 지역 -->
		<div class="location">
			<div class="subFixed">
            	<div class="tabList">
                     <ul id="exhbitionArea" class="banner-slide swiper-wrapper">
                        <li>
	                        <a href="전체사이트" class="careActive"> <i class="icon cateAll"/>
	                           <span>전체</span><span class="hide"></span>
	                        </a>
		                </li>
		                <li class="swiper-slide swiper-slide-active" style="margin-right: 10px;">
		                	<a href="전체사이트" class="careActive"> <i class="icon cateAll"></i>
		                           <span>수도권</span> <span class="hide"></span>
		                    </a>
		                </li>
		                <li class="swiper-slide swiper-slide-active" style="margin-right: 10px;">
	                        <a href="충청사이트" class="careActive"> <i class="icon cateAll"></i>
	                           <span>충청</span> <span class="hide"></span>
	                        </a>
	                  	</li>
	                 	<li class="swiper-slide swiper-slide-active" style="margin-right: 10px;">
	                        <a href="전라사이트" class="careActive"> <i class="icon cateAll"></i>
	                           <span>전라</span> <span class="hide"></span>
	                        </a>
	                  	</li>
                  <li class="swiper-slide swiper-slide-active"
                     style="margin-right: 10px;">
                     <ul id="exhbitionArea" class="banner-slide swiper-wrapper">
                        <a href="경상사이트" class="careActive"> <i class="icon cateAll"></i>
                           <span>경상</span> <span class="hide"></span>
                        </a>
                     </ul>
                  </li>
                  <li class="swiper-slide swiper-slide-active"
                     style="margin-right: 10px;">
                     <ul id="exhbitionArea" class="banner-slide swiper-wrapper">
                        <a href="강원" class="careActive"> <i class="icon cateAll"></i>
                           <span>강원</span> <span class="hide"></span>
                        </a>
                     </ul>
                  </li>

               </ul>



            </div>
         </div>
      </div>
   </div>

</div>
<button type="button" class="" onclick="fn_searchText();">현재전시</button>
<button type="button" class="" onclick="fn_searchText();">예정전시</button>
<button type="button" class="" onclick="fn_searchText();">지난전시</button>
<br>

<!-- 전시 리스트 -->
<div class="list con">
   <ul class="row">
      <li class="cell">
         <div class="img-box">
            <img
               src="http://cdn.monews.co.kr/news/photo/202004/209977_61736_1124.jpg"
               alt="">
         </div>
         <section>
            <div class="ex-place">대구미술관</div>
            <div class="ex-title">몸의 현재</div>
            <div class="ex-period">2022.08.11~ 2022.09.14</div>
         </section>
      </li>

      <li class="cell">
         <div class="img-box">
            <img
               src="https://artmuseum.daegu.go.kr/DATA/upload/images/201303040353117715.jpg"
               alt="">
         </div>
         <section>

            <div class="ex-place">대구미술관</div>
            <div class="ex-title">몸의 현재</div>
            <div class="ex-period">2022.07.14 ~ 2022.08.30 </div>
         </section>
      </li>
      <li class="cell">
         <div class="img-box">
            <img
               src="http://cdn.monews.co.kr/news/photo/202004/209977_61736_1124.jpg"
               alt="">
         </div>
         <section>
            <div class="ex-place">분당서울대병원</div>
            <div class="ex-title">바람</div>
            <div class="ex-period">2022.08.02 ~ 2022.08.20</div>
         </section>
      </li>
      <li class="cell">
         <div class="img-box">
            <img
               src="http://cdn.monews.co.kr/news/photo/202004/209977_61736_1124.jpg"
               alt="">
         </div>
         <section>
            <div class="ex-place">전시회</div>
            <div class="ex-title">제목</div>
            <div class="ex-period">기간</div>
         </section>
      </li>
      <li class="cell">
         <div class="img-box">
            <img
               src="http://www.mjeonbuk.com/news/photo/202203/16875_16629_519.jpg"
               alt="">
         </div>
         <section>
            <div class="ex-place">전주 우진문화공간</div>
            <div class="ex-title">신예작가전시회</div>
            <div class="ex-period">2022.07.30 ~ 2022.08.20</div>
         </section>
      </li>
      <li class="cell">
         <div class="img-box">
            <img
               src="https://www.ibabynews.com/news/photo/202008/88021_36985_2623.jpg"
               alt="">
         </div>
         <section>
            <div class="ex-place">서울어린이대공원</div>
            <div class="ex-title">동물원</div>
            <div class="ex-period">2022.08.02 ~ 2022.09.01</div>
         </section>
      </li>



   			</ul>
		</div>
	</main>
	<!-- .list-wrap -->
	
	<!-- footer -->
	<!-- .footer -->

</body>
</html>