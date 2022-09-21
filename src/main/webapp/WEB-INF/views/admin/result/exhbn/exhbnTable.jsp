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
<script src="<c:url value='/js/admin/exhbn/search.js' />"></script>

<h1>전시 관리</h1>

<section class="search-container">
  <select id="searchType">
    <option value="전체" <c:if test="${searchType=='전체'}">selected</c:if>>전체</option>
    <option value="번호" <c:if test="${searchType=='번호'}">selected</c:if>>번호</option>
    <option value="제목" <c:if test="${searchType=='제목'}">selected</c:if>>제목</option>
    <option value="전체" <c:if test="${searchType=='타입'}">selected</c:if>>타입</option>
    <option value="전체" <c:if test="${searchType=='내용'}">selected</c:if>>내용</option>
  </select>
  <input id="searchValue" type="text" value="${searchValue}" placeholder="검색어를 입력하세요">
  <button id="searchButton" class="searchBtn">검색</button>
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
          <td>${exhbn.exhbnTitle}</td>
          <td>${exhbn.exhbnArea}</td>
    <%--      <td>${exhbn.exhbnPlace}</td>--%>
          <td><fmt:formatDate value="${exhbn.exhbnStartDate}" pattern="yy-MM-dd"/></td>
          <td><fmt:formatDate value="${exhbn.exhbnEndDate}" pattern="yy-MM-dd"/></td>
          <td>${exhbn.exhbnLike}</td>
          <td>${exhbn.exhbnType}</td>
          <td class="btnBox">
            <button id="editBtn_${status.index}" class="editBtn">수정</button>
            <button id="resetBtn_${status.index}" class="resetBtn" style="display: none;">취소</button>
          </td>
        </tr>
        <tr class="displayBox" id="displayBox_${status.index}">
          <td colspan="8">
            <h2>전시 정보 수정</h2>
            <table class="editTable">
              <tr><th>아이디</th><td><input type="text" value="${exhbn.exhbnId}" readonly></td></tr>
              <tr><th>제목</th><td><input type="text" value="${exhbn.exhbnTitle}"></td></tr>
              <tr><th>지역</th><td><input type="text" value="${exhbn.exhbnArea}"></td></tr>
              <tr><th>시작일</th><td><input type="date" value="<fmt:formatDate value="${exhbn.exhbnStartDate}" pattern="yyyy-MM-dd"/>"></td></tr>
              <tr><th>종료일</th><td><input type="date" value="<fmt:formatDate value="${exhbn.exhbnEndDate}" pattern="yyyy-MM-dd"/>"></td></tr>
<%--              <tr><th>좋아요</th><td><input type="text" value="${exhbn.exhbnLike}" readonly></td></tr>--%>
              <tr><th>Type</th><td>
                <select>
                  <option>${exhbn.exhbnType}</option>
                  <option>2</option>
                  <option>3</option>
                </select>
              <tr><td colspan="2"><button id="saveBtnBox_${status.index}" class="saveBtn">저장</button><button id="deleteBtn_${status.index}" class="deleteBtn">삭제</button></td></tr>
            </table>
          </td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
</section>

<section class="pageNumBox">
  <input type="hidden" id="maxCount" value="${maxCount}">
  <input type="hidden" id="currentPage" value="${currentPage}">
  <ul class="pageNumList">
    <li onclick="pagemove(1)"><<</li>
    <li><</li>
    <li class="pageOn" onclick="pagemove(1)">1</li>
    <li onclick="pagemove(2)">2</li>
    <li onclick="pagemove(3)">3</li>
    <li onclick="pagemove(2)">4</li>
    <li onclick="pagemove(5)">5</li>
    <li>></li>
    <li onclick="pagemove(${maxCount})">>></li>
  </ul>
</section>