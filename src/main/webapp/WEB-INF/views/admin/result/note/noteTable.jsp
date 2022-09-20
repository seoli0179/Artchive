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

<h1>게시글 관리</h1>

<section class="search-container">
  <select>
    <option selected>전체</option>
    <option>유저</option>
    <option>제목</option>
    <option>상태</option>
  </select>
  <input type="text" placeholder="검색어를 입력하세요">
  <button class="searchBtn">검색</button>
</section>

<section class="table-container">
  <table class="resultTable">
    <thead>
      <tr>
        <th>번호</th>
        <th>유저</th>
        <th>카테고리</th>
        <th>제목</th>
        <th>좋아요</th>
        <th>생성일</th>
    <%--    <th>수정일</th>--%>
<%--        <th>이벤트 시작일</th>--%>
<%--        <th>이벤트 종료일</th>--%>
        <th>상태</th>
      </tr>
    </thead>
  <c:forEach items="${notes}" var="note">
    <tr>
      <td>${note.exhbnId}</td>
      <td>${note.userId}</td>
      <td>${note.category}</td>
      <td>${note.noteTitle}</td>
      <td>${note.noteCommentNum}</td>
      <td>${note.noteCreatedDate}</td>
  <%--    <td>${note.noteUpdatedDate}</td>--%>
<%--      <td>${note.eventStartDate}</td>--%>
<%--      <td>${note.eventEndDate}</td>--%>
      <td>${note.pageViewState}</td>
    </tr>
  </c:forEach>
  </table>
</section>

<section class="pageNumBox">
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