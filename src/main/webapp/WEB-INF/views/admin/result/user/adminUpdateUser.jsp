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
    <script src="<c:url value='/js/admin/user/update.js'/>"></script>
    <title>Artchive / 유저 수정 하기</title>
</head>
<body>
<div class="title">
    <h1><a href="<c:url value="/admin/notice/updateview"/>">Update Notice</a></h1>
</div>

<div class="write-box">
    <div class="column-box">
        <table CLASS="info-table">
            <input type="hidden" id="userId" value="${user.userId}">
            <tr>
                <th colspan="4" class="table-title">상태</th>
            </tr>
            <tr>
                <th>유저 아이디</th>
                <td style="color: white;">${user.userId}</td>

            </tr>
            <tr>
                <th>권한</th>
                <td>
                    <select id="userRoll">
                        <option value="USER" <c:if test="${user.userRoll == 'USER'}">selected</c:if>>유저</option>
                        <option value="ADMIN" <c:if test="${user.userRoll == 'ADMIN'}">selected</c:if>>관리자</option>
                    </select>
                </td>
                <th>상태</th>
                <td>
                    <select id="userState">
                        <option value="1" <c:if test="${user.userState == 1}">selected</c:if>>정상</option>
                        <option value="2" <c:if test="${user.userState == 2}">selected</c:if>>삭제</option>
                        <option value="3" <c:if test="${user.userState == 3}">selected</c:if>>초기화</option>
                        <option value="4" <c:if test="${user.userState == 4}">selected</c:if>>차단</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th colspan="4" class="table-title">기본 정보</th>
            </tr>

            <tr>
                <th>이름</th>
                <td style="color: white;"><input id="userName" type="text" value="${user.userName}"></td>

            </tr>
            <tr>
                <th>닉네임</th>
                <td style="color: white;"><input id="userNickname" type="text" value="${user.userNickname}"></td>
            </tr>
            <tr>
                <th>이메일</th>
                <td colspan="3"><input type="text" id="userEmail" placeholder="전시관 제목을 입력하세요."
                                       value="${user.userEmail}"></td>
            </tr>

            <tr>
                <th colspan="4" class="table-title">날짜 정보</th>
            </tr>
            <tr>
                <th>성별</th>
                <td><input type="text" id="userGender" placeholder="전시관 제목을 입력하세요." value="${user.userGender}"></td>
                <th>생성일</th>
                <td><input type="date" id="createdAt" placeholder="제목 입력"
                           value="<fmt:formatDate value="${user.createdAt}" pattern="yyyy-MM-dd"></fmt:formatDate>"
                           readonly></td>
            </tr>
            <tr>
                <th>생년월일</th>
                <td><input type="date" id="userBirth" placeholder="전시관 제목을 입력하세요."
                           value="<fmt:formatDate value="${user.userBirth}" pattern="yyyy-MM-dd"></fmt:formatDate>"
                           readonly></td>

                <th>수정일</th>
                <td><input type="date" id="updateAt" placeholder="제목 입력"
                           value="<fmt:formatDate value="${user.updatedAt}" pattern="yyyy-MM-dd"></fmt:formatDate>"
                           readonly></td>
            </tr>
            <tr>
                <td colspan="4" class="table-title"></td>
            </tr>
        </table>
    </div>
    <div class="btn-box">
        <input type="button" id="write" value="수정">
    </div>
</body>
</html>
