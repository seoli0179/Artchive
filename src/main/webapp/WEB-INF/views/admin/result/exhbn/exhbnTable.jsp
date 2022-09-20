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

<h1>전시 관리</h1>

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
    <%--    <th>좋아요</th>--%>
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
      <%--    <td>${exhbn.exhbnLike}</td>--%>
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
              <tr><th>시작일</th><td><input type="date" value="<fmt:formatDate value="${exhbn.exhbnStartDate}" pattern="yy-MM-dd"/>"></td></tr>
              <tr><th>종료일</th><td><input type="date" value="<fmt:formatDate value="${exhbn.exhbnEndDate}" pattern="yy-MM-dd"/>"></td></tr>
              <tr><th>좋아요</th><td><input type="text" value="${exhbn.exhbnLike}" readonly></td></tr>
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