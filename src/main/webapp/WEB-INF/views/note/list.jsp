<%--
  Created by IntelliJ IDEA.
  User: yeoub
  Date: 2022-08-17
  Time: 오후 5:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="<c:url value='/tools/reset.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/common.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/note/list.css'/>">
    <script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
    <script src="<c:url value='/js/note/list.js'/>"></script>
    <script src="https://kit.fontawesome.com/8ab5776cfb.js" crossorigin="anonymous"></script><!-- 아이콘 -->
    <title>arTchive / 게시판</title>
</head>
<body>
<c:import url="/WEB-INF/views/layout/top.jsp"></c:import>
<div class="wrapper">
    <article id="slideShow">
        <!-- 슬라이드 쇼  -->
        <div id="slideShowBox">
            <div id="slidePanel">
                <img src="https://img.freepik.com/free-vector/modern-bright-yellow-halftone-design-dark-banner-template-vector_1055-12746.jpg?t=st=1660718656~exp=1660719256~hmac=749a4a0b807a4ee1fb1a5a8dfc09d3af4f0533f4a854563d8766716fd3530260"
                     class="slideImage">
                <img src="https://img.freepik.com/free-vector/abstract-decorative-modern-banner-design_1055-8551.jpg?w=1380&t=st=1660718847~exp=1660719447~hmac=35c330d09b062f731a127622cc0141ecd971cbc772a362ea9e8725dbe652ed2a"
                     class="slideImage">
                <img src="https://img.freepik.com/free-vector/abstract-decorative-modern-banner_1055-9889.jpg?w=1380&t=st=1660718839~exp=1660719439~hmac=8da679bd2017e63c807a09c244c2a135a6f321b072a73746a93267a1ff5e6150"
                     class="slideImage">
                <img src="https://img.freepik.com/free-vector/abstract-modern-gray-color-geometric-trendy-banner-design_1055-14659.jpg?w=1380&t=st=1660718856~exp=1660719456~hmac=a83a1a99aa96341a2cf57a7d7377e4b1a56f968810d4547a30f025ece7f6c524"
                     class="slideImage">
                <img src="https://img.freepik.com/free-vector/abstract-stylish-blue-wavy-design-banner-template-vector_1055-12566.jpg?w=1380&t=st=1660718867~exp=1660719467~hmac=88748af804c3ba4d6234be6c0f2ea6beb8ecc584ef224bdd1ab587606d733293"
                     class="slideImage">
            </div>
        </div>
    </article>
    <section>
        <div class="search_box">
            <input class="search_bar" id="search" type="search">
            <i class="fa-solid fa-magnifying-glass search_btn"></i>
        </div>
        <div class="filter_box">
            <ul>
                <li class="filter-active">New</li>
                <li>Popular</li>
            </ul>
            <div class="write_box">
                <input id="write_btn" class="write_btn" type="button" value="작성">
            </div>
        </div>
        <div class="list_box">
            <hr>
            <div class="content">
                <div class="scrap">
                    <div class="like"><i class="fa-solid fa-heart"></i>7</div>
                    <div><i class="fa-solid fa-message"></i>5</div>
                </div>
                <div class="summary">
                    <div class="title">
                        ${title}
                    </div>
                    <div class="preview">
                        ${preview}
                    </div>
                    <div class="info">
                        by&nbsp;<div class="userName">username</div>&nbsp;&middot;&nbsp;<div class="createdAt">08-17
                    </div>
                    </div>
                </div>
            </div>
            <hr>
            <div class="content">
                <div class="scrap">
                    <div class="like"><i id="like" class="fa-solid fa-heart"></i>7</div>
                    <div><i class="fa-solid fa-message"></i>5</div>
                </div>
                <div class="summary">
                    <div class="title">
                        <a href="#">SpringBoot에서 비동기 Multi-thread 개발</a>
                    </div>
                    <div class="preview">
                        일반적으로 클라이언트와 통신하는 어플리케이션 서버에서 스레드(thread)를 사용하는 건 흔한 일입니다

                        접속한 여러개의 각 클라이언트가 요청하는 Request에 대하여 각각 스레드를 생성하여 비동기로 처리하여 시스템 자원 활용을 높이고 빠른 응답처리를 해야하기 때문입니다
                    </div>
                    <div class="info">
                        by&nbsp;<div class="username">username</div>&nbsp;&middot;&nbsp;<div class="createdAt">08-17
                    </div>
                    </div>
                </div>
            </div>
            <hr>
        </div>
        <div class="nav">
            <div class="nav_btn"><</div>
            <div class="nav_btn nav_active">1</div>
            <div class="nav_btn">2</div>
            <div class="nav_btn">3</div>
            <div class="nav_btn">4</div>
            <div class="nav_btn">5</div>
            <div class="nav_btn">></div>
        </div>
    </section>
</div>
<c:import url="/WEB-INF/views/layout/bottom.jsp"></c:import>
</body>
</html>
