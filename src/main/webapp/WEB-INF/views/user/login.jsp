<%--
  Created by IntelliJ IDEA.
  User: yeoub
  Date: 2022-08-17
  Time: 오전 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/user/login.css'/>">
    <script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
    <script src="<c:url value='/js/user/login.js'/>"></script>
    <title>Login</title>
</head>
<body>
<section class="login-form">
    <h1>로그인</h1>
    <form action="">
        <div class="int-area">
            <input type="text" name="id" id="id" autocomplete="off" required>
            <label for="id">USER NAME</label>
        </div>
        <div class="int-area">
            <input type="password" name="password" id="pw" autocomplete="off" required>
            <label for="pw">PASSWORD</label>
        </div>
        <div class="btn-area">
            <input id="btn" type="button" value="LOGIN">
        </div>
    </form>
    <div class="caption">
        <span><a href="">ID/PW 찾기</a></span><span> | </span>
        <span><a href="/join">회원가입</a></span>
    </div>
    <br>
    <hr>
    <div class="sns"><img
            src="https://w7.pngwing.com/pngs/367/789/png-transparent-social-media-youtube-facebook-f8-social-network-social-media-text-trademark-logo.png"
            height="45" alt=""></div>
</section>
</body>
</html>
