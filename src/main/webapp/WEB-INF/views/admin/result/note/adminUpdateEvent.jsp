<%--
  Created by IntelliJ IDEA.
  User: yeoub
  Date: 2022-08-17
  Time: 오후 5:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="<c:url value='/tools/reset.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/admin/adminNav.css'/>">
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/admin/adminMain.css'/>">
    <script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
    <script src="https://kit.fontawesome.com/8ab5776cfb.js" crossorigin="anonymous"></script>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/admin/adminBoard.css'/>">
    <script src="<c:url value='/js/admin/note/eventUpdate.js'/>"></script>
    <title>Artchive / 공지 수정 하기</title>
</head>
<body>
<div class="title">
    <h1><a href="<c:url value="/admin/event/updateview"/>">Update Event</a></h1>
</div>

<div class="write-box">
    <div class="column-box">
        <table CLASS="info-table">
            <input type="hidden" id="noteId" value="${note.noteId}">
            <tr>
                <th colspan="4" class="table-title">기본 정보</th>
            </tr>
            <tr>
                <th>게시판 번호</th>
                <td style="color: white;">${note.noteId}</td>
                <th>상태</th>
                <td>
                    <select id="pageViewState">
                        <option value="POST" <c:if test="${note.pageViewState == 'POST'}">selected</c:if>>개시</option>
                        <option value="BAN" <c:if test="${note.pageViewState == 'BAN'}">selected</c:if>>차단</option>
                        <option value="DELETE" <c:if test="${note.pageViewState == 'DELETE'}">selected</c:if>>삭제</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>이벤트 제목</th>
                <td colspan="3"><input type="text" id="noteTitle" placeholder="전시관 제목을 입력하세요." value="${note.noteTitle}"></td>
            </tr>
            <tr>
                <th colspan="4" class="table-title">날짜 정보</th>
            </tr>
            <tr>
                <th>시작일</th>
                <td><input type="date" id="eventStartDate" placeholder="제목 입력" value="<fmt:formatDate value="${note.eventStartDate}" pattern="yyyy-MM-dd"></fmt:formatDate>"></td>
                <th>종료일</th>
                <td><input type="date" id="eventEndDate" placeholder="제목 입력" value="<fmt:formatDate value="${note.eventEndDate}" pattern="yyyy-MM-dd"></fmt:formatDate>"></td>
            </tr>
            <tr>
                <th>작성일</th>
                <td><input type="date" id="noteCreatedDate" placeholder="제목 입력" value="<fmt:formatDate value="${note.noteCreatedDate}" pattern="yyyy-MM-dd"></fmt:formatDate>" readonly></td>
                <th>수정일</th>
                <td><input type="date" id="noteUpdatedDate" placeholder="제목 입력" value="<fmt:formatDate value="${note.noteUpdatedDate}" pattern="yyyy-MM-dd"></fmt:formatDate>" readonly></td>
            </tr>
            <tr>
                <td colspan="4" class="table-title"></td>
            </tr>
        </table>
    </div>
    <div class="table-title">이벤트에 대한 상세 설명을 적어주세요.</div>
    <div class="summernote-box">
        <div id="summernote">${note.note}</div>
    </div>
    <div class="btn-box">
        <input type="button" id="write" value="수정">
    </div>
</body>
</html>
