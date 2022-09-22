<%--
  Created by IntelliJ IDEA.
  User: newp
  Date: 2022/09/20
  Time: 3:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Artchive :: ADMIN LOGIN</title>

    <link type="text/css" rel="stylesheet" href="<c:url value='/tools/reset.css'/>">
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/admin/adminMain.css'/>">
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/admin/adminLogin.css'/>">
    <script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
    <script src="<c:url value='/js/admin/login.js'/>"></script>
</head>
<body>
<div id="login-container">
    <header id="login-header">
        <a href="<c:url value='/admin'/>">Artchive</a><br>
        <span>Admin</span>
    </header>
    <section class="input-box">
        아이디 <input id="id" type="text">
        비밀번호 <input id="pw" type="password">
        <button id="btn">로그인</button>
    </section>
    <footer>

    </footer>
</div>
</body>
</html>
