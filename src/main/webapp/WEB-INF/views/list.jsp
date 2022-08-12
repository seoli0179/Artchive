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
		        <button type="button" class="black-btn">검색</button>
	        	<button type="button" class="white-btn">상세검색</button>
     		</div>
		    <br>
		    <hr>
		<!-- 지역 -->
		<div class="location">
			<div class="subFixed">
            	<div class="tabList">
                     <ul id="exhbitionArea" class="banner-slide swiper-wrapper">
                        <li>
	                        <a href="전체사이트" class="careActive"> <i class="icon cateAll"></i>
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
		                <li class="swiper-slide swiper-slide-active" style="margin-right: 10px;">
		                     <a href="경상사이트" class="careActive"> <i class="icon cateAll"></i>
		                        <span>경상</span> <span class="hide"></span>
		                     </a>
		                </li>
		                <li class="swiper-slide swiper-slide-active" style="margin-right: 10px;">
		                      <a href="강원" class="careActive"> <i class="icon cateAll"></i>
		                         <span>강원</span> <span class="hide"></span>
		                      </a>
		                </li>
		             </ul>
           		</div>
           		<!-- .tabList -->
         	</div>
         	<!-- .subFixed -->
      </div>
      <!-- .location -->
		<!-- btn-container -->
		<div id="btn-container">
			<button type="button" class="" onclick="fn_searchText();">현재전시</button>
			<button type="button" class="" onclick="fn_searchText();">예정전시</button>
			<button type="button" class="" onclick="fn_searchText();">지난전시</button>
		</div>
		<!-- .btn-container -->

		<!-- 전시 리스트 -->
		<div class="list con">
		   <ul class="row">
			   <c:forEach var="exhbn" items="${exhbnList}" varStatus="status">
				   <li class="cell">
					   <div class="img-box">
						   <a href="/detail/${exhbn.exhbnId}"><img src="${exhbn.exhbnImgUrl}" alt=""></a>
					   </div>
					   <section>
						   <div class="ex-place">${exhbn.exhbnPlace}</div>
						   <div class="ex-title">${exhbn.exhbnTitle}</div>
						   <div class="ex-period"><fmt:formatDate value = "${exhbn.exhbnStartDate}" type ="date" pattern="yyyy.MM.dd"/> ~ <fmt:formatDate value = "${exhbn.exhbnEndDate}" type ="date" pattern="yyyy.MM.dd"/></div>
					   </section>
				   </li>
			   </c:forEach>
			</ul>
		</div>
	</main>
	<!-- .list-wrap -->
	
	<!-- footer -->
	<!-- .footer -->

</body>
</html>