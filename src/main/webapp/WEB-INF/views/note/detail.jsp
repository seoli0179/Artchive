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
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="<c:url value='/tools/reset.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/common.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/note/detail.css'/>">
    <script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
    <script src="<c:url value='/js/note/detail.js'/>"></script>
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
                <input id="write_btn" class="write_btn" type="button" value="수정">
            </div>
        </div>
        <div class="content">
            <div class="scrap">
                <div class="like"><i id="like" class="fa-solid fa-heart"></i>${note.noteLike}</div>
                <div><i class="fa-solid fa-message"></i>${note.noteCommentNum}</div>
            </div>
            <div class="summary">
                <div class="title">
                    ${note.noteTitle}
                </div>
                <div class="info">
                    by&nbsp;<div class="username">${note.userNickname}</div>&nbsp;&middot;&nbsp;<div class="createdAt"><fmt:formatDate pattern="MM-dd" value="${note.noteCreatedDate }" /></div>
                </div>
                <div class="content-body">
                    <article class="content-text" itemprop="articleBody">
                        ${note.note}
                    </article>
                </div>
                <div class="comment-write">
                  <textarea id="story" name="story"
                            rows="5" cols="33" placeholder="Leave a Comment..."></textarea>
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
                                고생하셨습니다~!^^
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
                                재미난 프로젝트군요!! 화이팅입니다 :)
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<c:import url="/WEB-INF/views/layout/bottom.jsp"></c:import>
</body>
</html>
