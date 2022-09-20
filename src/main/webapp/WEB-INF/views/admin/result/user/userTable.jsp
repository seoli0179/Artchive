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
<table>
  <tr>
    <th>아이디</th>
    <th>이름</th>
    <th>이메일</th>
    <th>닉네임</th>
    <th>성별</th>
    <th>생년월일</th>
    <th>유저권한</th>
    <th>생성일</th>
    <th>수정일</th>
    <th>유저상태</th>
  </tr>
<c:forEach items="${users}" var="user">
  <tr>
    <td>${user.userId}</td>
    <td>${user.userName}</td>
    <td>${user.userEmail}</td>
    <td>${user.userNickname}</td>
    <td>${user.userGender}</td>
    <td>${user.userBirth}</td>
    <td>${user.userRoll}</td>
    <td>${user.createdAt}</td>
    <td>${user.updatedAt}</td>
    <td>${user.userState}</td>
  </tr>
</c:forEach>
</table>
