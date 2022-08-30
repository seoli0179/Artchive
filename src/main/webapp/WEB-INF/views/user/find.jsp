<%--
  Created by IntelliJ IDEA.
  User: yeoub
  Date: 2022-08-17
  Time: 오전 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/user/find.css'/>">
    <script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
    <script src="<c:url value='/js/user/find.js'/>"></script>
    <script src="https://kit.fontawesome.com/8ab5776cfb.js" crossorigin="anonymous"></script><!-- 아이콘 -->
    <title>arTchive / 로그인 - ID/PW 찾기</title>
</head>
<body>
<section class="login-form">
    <h1>ID/PW 찾기</h1>
    <br>
    <div class="tabs">
        <div class="tab-2">
            <label for="tab2-1" class="tab_id">ID</label>
            <input id="tab2-1" class="tab_id" name="tabs-two" type="radio" checked="checked">
            <div>
                <br>
                <div class="int-area id">
                    <input type="text" name="id" id="id" autocomplete="off">
                    <label for="id">이메일 주소 입력</label>
                    <div class="check"><i id="id_check" class="fa-solid fa-circle-check" style="color:Red"></i></div>
                </div>
                <div class="int-area email_check1">
                    <input type="number" name="email_check1" id="email_check1" autocomplete="off">
                    <label for="email_check1">인증번호</label>
                    <div id="id_check2" class="check"><i class="fa-solid fa-circle-check" style="color:Red"></i></div>
                </div>
                <div class="complete1" style="text-align:center; width:400px;"></div>
            </div>
        </div>
        <div class="tab-2">
            <label for="tab2-2" class="tab_pw">PW</label>
            <input id="tab2-2" class="tab_pw" name="tabs-two" type="radio">
            <div>
                <br>
                <div class="int-area pw">
                    <input type="email" name="pw" id="pw" autocomplete="off">
                    <label for="id">이메일 주소 입력</label>
                    <div class="check"><i id="pw_check" class="fa-solid fa-circle-check" style="color:Red"></i></div>
                </div>
                <div class="int-area email_check2">
                    <input type="number" name="email_check2" id="email_check2" autocomplete="off">
                    <label for="email_check2">인증번호</label>
                    <div class="check"><i id="pw_check2" class="fa-solid fa-circle-check" style="color:Red"></i></div>
                </div>
                <div class="complete2" style="text-align:center; width:400px;"></div>
            </div>
        </div>
    </div>
    <h6>ㅤ</h6>
    <form action="">

    </form>
    <div class="btn-area next">
        <input id="btn_login" type="button" value="LOGIN" onclick="location.href='/login'">
    </div>
    <div class="caption back">
        <a href="<c:url value="/"/>">Home</a>
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
