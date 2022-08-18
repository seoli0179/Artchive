<%--
  Created by IntelliJ IDEA.
  User: yeoub
  Date: 2022-08-17
  Time: 오전 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/user/join.css'/>">
    <script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
    <script src="<c:url value='/js/user/join.js'/>"></script>
    <script src="https://kit.fontawesome.com/8ab5776cfb.js" crossorigin="anonymous"></script><!-- 아이콘 -->
    <title>arTchive / 회원가입</title>
</head>
<body>
<section class="login-form">
    <h1>회원가입</h1>
    <div class="container">
        <ul class="progressbar">
            <li class="active">Id/Pw</li>
            <li>Nickname</li>
            <li>Birth</li>
            <li>Complete</li>
        </ul>
    </div>
    <h6>ㅤ</h6>
    <form action="">
        <div class="int-area id">
            <input type="text" name="id" id="id" autocomplete="off" required>
            <label for="id">아이디 입력 (6~20자)</label>
            <div class="check"><i id="id_check" class="fa-solid fa-circle-check" style="color:Red"></i></div>
        </div>
        <div class="int-area pw">
            <input type="password" name="password" id="pw" autocomplete="off" required>
            <label for="pw">비밀번호 입력 (문자, 숫자, 특수문자 포함 8~20자)</label>
            <div class="show"><i class="fa-solid fa-eye"></i><i class="fa-solid fa-eye-slash"></i></div>
        </div>
        <div class="int-area email">
            <input type="email" name="email" id="email" autocomplete="off" required>
            <label for="email">이메일 주소 입력</label>
            <div class="check sendmessage"><i class="fa-solid fa-circle-check" style="color:Red"></i></div>
        </div>
        <div class="int-area email_check">
            <input type="number" name="email_check" id="email_check" autocomplete="off" required>
            <label for="email_check">인증번호</label>
            <div class="check"><i class="fa-solid fa-circle-check" style="color:Red"></i></div>
        </div>
        <div class="int-area nickname">
            <input type="text" name="nickname" id="nickname" autocomplete="off" required>
            <label for="nickname">닉네임 입력</label>
            <div class="check"><i class="fa-solid fa-circle-check" style="color:Red"></i></div>
        </div>
        <div class="int-area gender">
            <label style="top:5px;">성별</label>
        </div>
        <div class="gender" style="padding-top:17px;padding-left:12px;">
            <label><input type="radio" name="gender" value="M" checked>남</label>&nbsp;&nbsp;&nbsp;&nbsp;
            <label><input type="radio" name="gender" value="F">여</label>
        </div>
        <br>
        <div class="int-area birth">
            <label style="top:5px;">생년월일</label>
        </div>
        <div class="int-area birth">
            <input id="birth" type="date" required aria-required="true">
        </div>
        <div class="complete">
            <div class="line">
                <br>
                <h3>회원가입이 완료되었습니다</h3>
            </div>
        </div>
        <div class="btn-area next">
            <input id="btn_next" type="button">
        </div>
    </form>
    <div class="caption back">
        <a id="btn_back">Home</a>
    </div>
    <br>
    <hr>
    <div class="sns"><img
            src="https://w7.pngwing.com/pngs/367/789/png-transparent-social-media-youtube-facebook-f8-social-network-social-media-text-trademark-logo.png"
            height="45" alt=""></div>
    <div class="caption">
        Already a user?
        <a href="<c:url value="/login"/> "> Login</a>
    </div>
</section>
</body>
</html>
