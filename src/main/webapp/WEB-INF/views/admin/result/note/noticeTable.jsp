<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-09-20
  Time: 오후 4:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<link type="text/css" rel="stylesheet" href="<c:url value='/js/admin/module/userTable1.css'/>">
<script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
<script src="<c:url value='/js/admin/module/userTable1.js' />"></script>
<script src="<c:url value='/js/admin/note/noticeSearch.js' />"></script>

<h1>공지 게시글 관리</h1>

<section class="search-container">
  <select id="searchType">
    <option value="전체" <c:if test="${searchType=='전체'}">selected</c:if>>전체</option>
    <option value="번호" <c:if test="${searchType=='번호'}">selected</c:if>>번호</option>
    <option value="제목" <c:if test="${searchType=='제목'}">selected</c:if>>제목</option>
    <option value="유저" <c:if test="${searchType=='유저'}">selected</c:if>>유저</option>
    <option value="내용" <c:if test="${searchType=='내용'}">selected</c:if>>내용</option>
  </select>
  <input id="searchValue" value="${searchValue}" type="text" placeholder="검색어를 입력하세요">
  <button id="searchButton" class="searchBtn">검색</button>
</section>

<section class="table-container">
  <table class="resultTable">
    <thead>
      <tr>
        <th>번호</th>
        <th>유저</th>
        <th style="width: 50%;">제목</th>
<%--        <th>좋아요</th>--%>
        <th>생성일</th>
    <%--    <th>수정일</th>--%>
<%--        <th>이벤트 시작일</th>--%>
<%--        <th>이벤트 종료일</th>--%>
        <th>상태</th>
        <th>관리</th>
      </tr>
    </thead>
  <c:forEach items="${notes}" var="note" varStatus="status">
    <tr>
      <td>${note.noteId}</td>
      <td>${note.userId}</td>
      <td>${note.noteTitle}</td>
<%--      <td>${note.noteCommentNum}</td>--%>
      <td><fmt:formatDate value="${note.noteCreatedDate}" pattern="yy-MM-dd hh:mm"/></td>
  <%--    <td>${note.noteUpdatedDate}</td>--%>
<%--      <td>${note.eventStartDate}</td>--%>
<%--      <td>${note.eventEndDate}</td>--%>
      <td>${note.pageViewState}</td>
      <td class="btnBox">
        <button id="bannBtn_${status.index}" class="editBtn">차단</button>
      </td>
    </tr>
  </c:forEach>
  </table>
</section>

<section class="pageNumBox">
  <input type="hidden" id="maxCount" value="${maxCount}">
  <input type="hidden" id="currentPage" value="${currentPage}">
  <ul class="pageNumList">
    <li><<</li>
    <li><</li>
    <li><</li>
    <li class="pageOn">1</li>
    <li>2</li>
    <li>3</li>
    <li>4</li>
    <li>5</li>
    <li>></li>
    <li>>></li>
  </ul>
</section>