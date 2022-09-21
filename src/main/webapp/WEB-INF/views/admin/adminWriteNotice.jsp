<%--
  Created by IntelliJ IDEA.
  User: yeoub
  Date: 2022-08-17
  Time: 오후 5:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <script src="<c:url value='/js/admin/note/noticeWrite.js'/>"></script>
    <title>Artchive / 새 공지 작성하기</title>
</head>
<body>
    <header>

    </header>
    <section id="mainSection">
        <!-- nav 삽입 -->
        <c:import url="adminNav.jsp"/>
        <!-- nav 삽입완료 -->
        <main>
            <div class="wrapper">
                <div class="filter_box">
                    <div class="back">
                        <i id="back" class="fa-solid fa-arrow-left fa-2xl"></i>
                    </div>
                </div>

                <div class="title">
                    <h1>New notice</h1>
                </div>

                <div class="write-box">
                    <div class="column-box">
                        <table CLASS="info-table">
                            <tr><th>공지 제목</th><td colspan="3"><input type="text" id="title" placeholder="공지사항 제목을 입력하세요."></td></tr>
                        </table>
                    </div>
                    <div class="table-title">공지 내용에 대한 상세 설명을 적어주세요.</div>
                    <div class="summernote-box">
                        <div id="summernote"></div>
                    </div>
                    <div class="btn-box">
                        <input type="button" id="write" value="등록">
                    </div>
                </div>
            </div>
        </main>
    </section>
    <footer style="height: 50px">
    </footer>
</body>
</html>
