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

<h1>회원 관리</h1>

<section class="search-container">
  <select>
    <option selected>전체</option>
    <option>아이디</option>
    <option>이름</option>
    <option>메일</option>
  </select>
  <input type="text" placeholder="검색어를 입력하세요">
</section>

<table class="resultTable">
  <thead>
  <tr>
    <th>아이디</th>
    <th>이름</th>
    <th>이메일</th>
    <th>닉네임</th>
<%--    <th>성별</th>--%>
<%--    <th>생년월일</th>--%>
    <th>유저권한</th>
    <th>생성일</th>
<%--    <th>수정일</th>--%>
    <th>유저상태</th>
    <th>수정</th>
  </tr>
  </thead>
  <tbody>
<c:forEach items="${users}" var="user" varStatus="idx">
  <tr>
    <td>${user.userId}</td>
    <td>${user.userName}</td>
    <td>${user.userEmail}</td>
    <td>${user.userNickname}</td>
<%--    <td>${user.userGender}</td>--%>
<%--    <td>${user.userBirth}</td>--%>
    <td>
    <c:choose>
      <c:when test="${user.userRoll == 'USER'}">유저</c:when>
      <c:when test="${user.userRoll == 'ADMIN'}">관리자</c:when>
      <c:otherwise>유저</c:otherwise>
    </c:choose>
    </td>
    <td><fmt:formatDate value="${user.createdAt}" pattern="yy-MM-dd hh:mm"/></td>
<%--    <td>${user.updatedAt}</td>--%>
    <td class="userState">
      <c:choose>
        <c:when test="${user.userState == 1}">정상</c:when>
        <c:when test="${user.userState == 2}">삭제</c:when>
        <c:when test="${user.userState == 3}">초기화</c:when>
        <c:when test="${user.userState == 4}">차단</c:when>
        <c:otherwise>정상</c:otherwise>
      </c:choose>
    </td>
    <td class="btnBox">
      <button id="editBtn_${idx.index}" class="editBtn">수정</button>
      <button id="resetBtn_${idx.index}" class="resetBtn" style="display: none;">취소</button>
    </td>
  </tr>

  <tr class="displayBox" id="displayBox_${idx.index}">
    <td colspan="8">
      <h2>회원 정보 수정</h2>
      <input type="hidden" id="userId_${idx.index}" value="${user.userId}">
      <table class="editTable">
        <tr><th>아이디</th><td>${user.userId}</td></tr>
        <tr><th>이름</th><td>${user.userName}</td></tr>
        <tr><th>이메일</th><td><input id="userEmail_${idx.index}" type="text" value="${user.userEmail}"></td></tr>
        <tr><th>닉네임</th><td><input id="userNickname_${idx.index}" type="text" value="${user.userNickname}"></td></tr>
        <tr><th>성별</th><td>${user.userGender}</td></tr>
        <tr><th>생년월일</th><td><fmt:formatDate value="${user.userBirth}" pattern="yy-MM-dd hh:mm"/></td></tr>
        <tr><th>유저권한</th><td>
          <select id="userRoll_${idx.index}">
            <option value="USER" <c:if test="${user.userRoll == 'USER'}">selected</c:if>>유저</option>
            <option value="ADMIN" <c:if test="${user.userRoll == 'ADMIN'}">selected</c:if>>관리자</option>
          </select>
        <tr><th>생성일</th><td><fmt:formatDate value="${user.createdAt}" pattern="yy-MM-dd hh:mm"/></td></tr>
        <tr><th>수정일</th><td><fmt:formatDate value="${user.updatedAt}" pattern="yy-MM-dd hh:mm"/></td></tr>
        <tr><th>유저상태</th><td>
          <select id="userState_${idx.index}">
            <option value="1" <c:if test="${user.userState == 1}">selected</c:if>>정상</option>
            <option value="2" <c:if test="${user.userState == 2}">selected</c:if>>삭제</option>
            <option value="3" <c:if test="${user.userState == 3}">selected</c:if>>초기화</option>
            <option value="4" <c:if test="${user.userState == 4}">selected</c:if>>차단</option>
<%--            <c:forEach var="list" items="${result}">--%>
<%--              <option value="${list.userState}" <c:if test ="${user.userState eq list.userState}">selected="selected"</c:if>>${list.userState}</option>--%>
<%--            </c:forEach>--%>
          </select></td></tr>
        <tr><td colspan="2"><button id="saveBtnBox_${idx.index}" class="saveBtn">저장</button></td></tr>
      </table>
    </td>
  </tr>

</c:forEach>
  </tbody>
</table>

