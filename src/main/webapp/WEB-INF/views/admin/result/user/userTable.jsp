<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-09-20
  Time: 오후 4:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<link type="text/css" rel="stylesheet" href="<c:url value='/js/admin/module/userTable1.css'/>">
<link type="text/css" rel="stylesheet" href="<c:url value='/css/admin/adminModal.css'/>">
<script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
<script src="<c:url value='/js/admin/user/dialog.js' />"></script>
<script src="<c:url value='/js/admin/user/search.js' />"></script>


<h1>회원 관리</h1>

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
                    <button data-id="${user.userId}" id="editBtn_${idx.index}" class="editBtn">수정</button>
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