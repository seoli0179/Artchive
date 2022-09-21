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
<script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
<link rel="stylesheet" href="<c:url value="/css/admin/adminModal.css"/>">
<script src="<c:url value='/js/admin/module/dialog.js'/>"></script>

<h1><a href="<c:url value="/admin/exhbn/view"/>">전시 관리</a></h1>

<section class="search-container">
  <select>
    <option selected>전체</option>
    <option>아이디</option>
    <option>이름</option>
    <option>메일</option>
  </select>
  <input type="text" placeholder="검색어를 입력하세요">
  <button class="searchBtn">검색</button>
</section>

<section class="table-container">
  <table class="resultTable">
    <thead>
    <tr>
        <th>아이디</th>
        <th>제목</th>
        <th>지역</th>
  <%--      <th>전시장</th>--%>
        <th>전시 시작일</th>
        <th>전시 종료일</th>
        <th>좋아요</th>
        <th>Type</th>
        <th>관리</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${exhbns}" var="exhbn" varStatus="status">
        <tr>
          <td>${exhbn.exhbnId}</td>
          <td><a href="<c:url value="/exhbn/detail/${exhbn.exhbnId}"/>" target="_blank">${exhbn.exhbnTitle}</a></td>
          <td>${exhbn.exhbnArea}</td>
    <%--      <td>${exhbn.exhbnPlace}</td>--%>
          <td><fmt:formatDate value="${exhbn.exhbnStartDate}" pattern="yy-MM-dd"/></td>
          <td><fmt:formatDate value="${exhbn.exhbnEndDate}" pattern="yy-MM-dd"/></td>
          <td>${exhbn.exhbnLike}</td>
          <td>${exhbn.exhbnType}</td>
          <td class="btnBox">
            <button id="editBtn_${status.index}" class="editBtn">수정</button>
          </td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
</section>

<div id="modal" class="modal">
  <div class="modal_body">
    <div style="display: flex; justify-content: right;">
      <button id="closeBtn">close</button>
    </div>
    <div id="iframe-box" class="iframe-box">
    </div>
  </div>
</div>

<section class="pageNumBox">
  <ul class="pageNumList">
    <li><<</li>
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