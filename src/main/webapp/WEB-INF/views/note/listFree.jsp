<%--
  Created by IntelliJ IDEA.
  User: yeoub
  Date: 2022-08-17
  Time: 오후 5:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate var="today" value="${now}" pattern="yyyy-MM-dd"/>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="<c:url value='/tools/reset.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/common.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/note/list.css'/>">

    <script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
    <script src="<c:url value='/js/note/list.js'/>"></script>
    <script src="<c:url value='/js/note/search.js'/>"></script>
    <script src="https://kit.fontawesome.com/8ab5776cfb.js" crossorigin="anonymous"></script><!-- 아이콘 -->
    <title>Artchive / 자유게시판</title>
</head>
<body>
<c:import url="/WEB-INF/views/layout/top.jsp"></c:import>

<article id="slideShow">
    <!-- 슬라이드 쇼  -->
    <div id="slideShowBox">
        <div id="slidePanel">
            <div id="slideImage-box1" class="slideImage-box" style="background-color: #AEA2E4;">
                <img src="<c:url value="/image/banners/banner_ex0.png"/>" class="slideImage">
            </div>
            <div id="slideImage-box2" class="slideImage-box">
                <img src="<c:url value="/image/banners/banner_ex1.png"/>" class="slideImage">
            </div>
            <div id="slideImage-box3" class="slideImage-box">
                <img src="<c:url value="/image/banners/banner_ex2.png"/>" class="slideImage">
            </div>
        </div>
    </div>
</article>

<div class="wrapper">
    <section>
        <input type="hidden" id="maxDataNum" value="${maxDataNum}">
        <!--  <input class="search_bar" id="search" type="search">
         <i class="fa-solid fa-magnifying-glass search_btn"></i> -->
        <div id="searchMainBox">
            <input type="text" id="searchTEXT" name="searchMessage" size="120" placeholder="검색어를 입력하세요."/>
            <input type="button" class="black-btn" id="searchBtn2" value="검색"/>
        </div>
        <div class="filter_box">
            <ul id="filter_innerbox">
            </ul>
            <div class="write_box">
                <c:if test="${not empty sessionScope.sid}">
                    <input id="write_btn" class="white-btn" type="button" value="작성">
                </c:if>
                <c:if test="${empty sessionScope.sid}">
                    <input id="no_write_btn" class="white-btn" type="button" value="작성" onclick="alert('로그인이 필요한 기능입니다.');">
                </c:if>
            </div>
        </div>
        <div class="list_box">
            <c:forEach var="notice" items="${noticeList}">
                <div class="notice-container">
                    <div class="scrap">
                        <div class="head-tag" style="float:none; margin:0 auto">
                            <span id="head-tag">공지</span>
                        </div>
                    </div>
                    <div class="summary notice-box">
                        <div class="title-notice">
                            <a href="<c:url value="/note/detail/${notice.noteId}"/>">${notice.noteTitle}</a>
                        </div>
                        <div class="createdAt"><fmt:formatDate pattern="yyyy-MM-dd" value="${notice.noteCreatedDate }"/>
                        </div>
                    </div>
                </div>
            </c:forEach>
            <c:forEach var="event" items="${eventList}">
                <div class="event-container">
                    <div class="scrap">
                        <div class="head-tag" style="float:none; margin:0 auto">
                            <fmt:formatDate value="${event.eventEndDate}" pattern="yyyy-MM-dd" var="endDate" />
                            <c:if test="${endDate >= today}"> <!-- 진행 전 이벤트일 경우 -->
                                <span id="head-tag" style="font-weight: bold">진행중</span>
                            </c:if>
                            <c:if test="${endDate < today}"> <!-- 진행 후 이벤트일 경우 -->
                                <span id="head-tag">종료</span>
                            </c:if>
                        </div>
                    </div>
                    <div class="summary event-box">
                        <div class="title-event">
                            <a href="<c:url value="/note/detail/${event.noteId}"/>">${event.noteTitle}</a>
                        </div>
                        <div class="event-box">
                            <div class="createdAt">
                                <fmt:formatDate pattern="MM-dd" value="${event.eventStartDate }"/> ~
                                <fmt:formatDate pattern="MM-dd" value="${event.eventEndDate }"/>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="list_box">
            <c:forEach var="note" items="${list}">
                <div class="content">
                    <div class="scrap">
                        <c:if test="${note.noteLikeCheck}">
                            <div class="like"><i class="fa-solid fa-heart" style="color:red;"></i>${note.noteLike}</div>
                        </c:if>
                        <c:if test="${not note.noteLikeCheck}">
                            <div class="like"><i class="fa-solid fa-heart" style="color:black;"></i>${note.noteLike}
                            </div>
                        </c:if>
                        <div><i class="fa-solid fa-message"></i>${note.noteCommentNum}</div>
                    </div>
                    <div class="summary">
                        <div class="title">
                            <a href="<c:url value="/note/detail/${note.noteId}"/>">${note.noteTitle}</a>
                        </div>
                        <div class="preview">
                                ${note.note}
                        </div>
                        <div class="info">
                            <br><div class="userName">${note.userNickname}</div>&nbsp;&nbsp;<div
                                class="createdAt"><fmt:formatDate pattern="MM-dd" value="${note.noteCreatedDate }"/>
                        </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="nav" id="page-box">
        </div>
    </section>
</div>
<c:import url="/WEB-INF/views/layout/bottom.jsp"></c:import>
</body>
</html>
