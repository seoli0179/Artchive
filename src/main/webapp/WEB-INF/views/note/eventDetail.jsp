<%--
  Created by IntelliJ IDEA.
  User: yeoub
  Date: 2022-08-17
  Time: 오후 5:56
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
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/note/detail.css'/>">

    <script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
    <script src="<c:url value='/js/note/detail.js'/>"></script>
    <script src="<c:url value='/js/note/like.js'/>"></script>
    <script src="<c:url value='/js/comment/create.js'/>"></script>
    <script src="<c:url value='/js/comment/delete.js'/>"></script>
    <script src="<c:url value='/js/comment/like.js'/>"></script>
    <script src="https://kit.fontawesome.com/8ab5776cfb.js" crossorigin="anonymous"></script><!-- 아이콘 -->
    <title>arTchive / ${note.noteTitle}</title>
</head>
<body>
<c:import url="/WEB-INF/views/layout/top.jsp"></c:import>
<div class="wrapper">

    <section>
        <input type="hidden" id="noteId" value="${note.noteId}">
        <div class="filter_box">
            <div class="back">
                <i id="back" class="fa-solid fa-arrow-left fa-2xl"></i>
            </div>
            <div class="write_box">
                <c:if test="${sessionScope.sid == note.userId}">
                    <input id="write_btn" class="write_btn" type="button" value="수정">
                </c:if>
                <c:if test="${sessionScope.sid != note.userId}">
                    <input id="write_btn" class="write_btn" type="button" value="수정" disabled>
                </c:if>
            </div>
        </div>
        <div class="content">
            <div class="scrap">
                <div class="like">
                    <c:if test="${not empty sessionScope.sid}">
                        <c:if test="${note.noteLikeCheck}">
                            <i id="like" class="fa-solid fa-heart" style="color:Red;"></i>
                        </c:if>
                        <c:if test="${not note.noteLikeCheck}">
                            <i id="like" class="fa-solid fa-heart" style="color:Black;"></i>
                        </c:if>
                    </c:if>
                    <c:if test="${empty sessionScope.sid}">
                        <i class="fa-solid fa-heart" style="color:Black;"></i>
                    </c:if>
                    <span id="likeNum">${note.noteLike}</span>
                </div>
                <div><i class="fa-solid fa-message" style="margin-right: 4px;"></i><span id="commentNumMain">${note.noteCommentNum}</span></div>
            </div>
            <div class="summary">
                <div class="title">
                    <div style="width: 70%;">
                        <div class="tags" style="display: inline-block; margin-left: 3px;">
                            <div class="head-tag" style="height: 20px; line-height: 20px;
                        float:none; margin:5px auto; background-color: #E5E7EB; padding: 5px 15px; width: fit-content; border-radius: 70px; font-size: 0.9rem; display: inline-block">
                                <fmt:formatDate value="${note.eventEndDate}" pattern="yyyy-MM-dd" var="endDate" />
                                <c:if test="${endDate >= today}"> <!-- 진행 전 이벤트일 경우 -->
                                    <span id="head-tag" style="font-weight: bold">진행중</span>
                                </c:if>
                                <c:if test="${endDate < today}"> <!-- 진행 후 이벤트일 경우 -->
                                    <span id="head-tag">종료</span>
                                </c:if>
                            </div>
                        </div>
                        <div style="display: inline-block; line-height: 2.0rem;">
                            ${note.noteTitle}
                        </div>
                    </div>
                    <div style="font-size:1.0rem; font-weight: normal; background-color: #E5E7EB; padding: 5px 15px; border-radius: 70px; height: 20px; line-height: 20px;">
                        <fmt:formatDate pattern="yy. MM. dd" value="${note.eventStartDate }"/> ~
                        <fmt:formatDate pattern="yy. MM. dd" value="${note.eventEndDate }"/>
                    </div>
                </div>
                <div class="info">
                    <br><div class="username"> ${note.userNickname}</div>&nbsp;&nbsp;<div class="createdAt">
                    <fmt:formatDate pattern="yy. MM. dd" value="${note.noteCreatedDate }"/></div>
                </div>
                <div class="content-body">
                    <article class="content-text" itemprop="articleBody">
                        ${note.note}
                    </article>
                    <div class="event-btn-box">
                        <c:if test="${not empty sessionScope.sid}">
                            <fmt:formatDate value="${note.eventEndDate}" pattern="yyyy-MM-dd" var="endDate" />
                            <c:if test="${endDate >= today}"> <!-- 진행 전 이벤트일 경우 -->
                                <button class="white-btn-big" style="border-radius: 70px;">이벤트 참여하기</button>
                            </c:if>
                            <c:if test="${endDate < today}"> <!-- 진행 후 이벤트일 경우 -->
                                <button class="black-btn-big" style="border-radius: 70px;" disabled>종료된 이벤트입니다</button>
                            </c:if>
                        </c:if>
                        <c:if test="${empty sessionScope.sid}">
                            로그인 후 이벤트에 참여하실 수 있습니다.
                        </c:if>
                    </div>
                </div>
                <c:if test="${not empty sessionScope.sid}">
                    <div class="comment-write">
                        <textarea id="comment" name="story"
                                  rows="5" cols="33" placeholder="Leave a Comment..."></textarea>
                        <input id="commentPost" class="post" type="button" value="Post">
                    </div>
                </c:if>
                <div class="comment-box" id="comment-box">
                    <div class="comment-num">${commentList.size()} comments</div>
                    <div class="comment-list">
                        <c:forEach var="comment" items="${commentList}">
                            <div class="comment">
                                <input type="hidden" id="commentId${comment.commentId}" value="${commentId}">
                                <div class="comment-scrap">
                                    <div class="like">
                                        <c:if test="${not empty sessionScope.sid}">
                                            <c:if test="${comment.commentLikeCheck}">
                                                <i id="commentLike${comment.commentId}" class="fa-solid fa-heart"
                                                   onclick="commentLikeClick(${comment.commentId})" style="color:red;"></i>
                                            </c:if>
                                            <c:if test="${not comment.commentLikeCheck}">
                                                <i id="commentLike${comment.commentId}" class="fa-solid fa-heart"
                                                   onclick="commentLikeClick(${comment.commentId})" style="color:black;"></i>
                                            </c:if>
                                            <span id="commentNum${comment.commentId}">${comment.commentLike}</span>
                                        </c:if>
                                        <c:if test="${empty sessionScope.sid}">
                                            <i class="fa-solid fa-heart"
                                               style="color:black"></i>
                                            <span>${comment.commentLike}</span>
                                        </c:if>
                                    </div>
                                </div>
                                <div class="comment-summary">
                                
                                    <div class="infoBox">
                                    	<div class="info">
                                        	<div class="username">${comment.userNickname}</div>&nbsp;&nbsp;
                                        	<div class="createdAt"><fmt:formatDate pattern="MM-dd"
                                                                               value="${comment.commentCreatedDate }"/></div>
                                        </div>

                                        <div class="deleteComment">
                                            <c:if test="${sessionScope.sid == comment.userId}">
                                                <input type="button" class="deleteBtn black-btn"
                                                       onclick="deleteComment(${comment.commentId})"
                                                       value="삭제">
                                            </c:if>
                                        </div>
                                    </div>
                                    <div class="comment-body" style="white-space: pre-line;"><c:out
                                            value="${comment.comment}" escapeXml="false"></c:out></div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<c:import url="/WEB-INF/views/layout/bottom.jsp"></c:import>
</body>
</html>
