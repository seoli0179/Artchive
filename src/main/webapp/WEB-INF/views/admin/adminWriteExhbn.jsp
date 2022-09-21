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
    <script src="<c:url value='/js/admin/exhbn/write.js'/>"></script>
    <title>Artchive / 새 전시 작성하기</title>
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
                <h1>New exhibition</h1>
            </div>

            <div class="write-box">
                <div class="column-box">
                    <table CLASS="info-table">
                        <tr>
                            <th colspan="4" class="table-title">기본 정보</th>
                        </tr>
                        <tr>
                            <th>전시 아이디</th>
                            <td><input type="text" id="exhbnId" placeholder="전시아이디를 입력하세요."></td>
                            <th>전시관분류</th>
                            <td>
                                <select id="exhbnType">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                </select></td>
                        </tr>
                        <tr>
                            <th>전시 제목</th>
                            <td colspan="3"><input type="text" id="exhbnTitle" placeholder="전시관 제목을 입력하세요."></td>
                        </tr>
                        <tr>
                            <th colspan="4" class="table-title">이미지 주소</th>
                        </tr>
                        <tr>
                            <th>포스터 url</th>
                            <td colspan="3"><input type="text" id="exhbnImgUrl" placeholder="포스터 이미지 url 입력하세요."></td>
                        </tr>
                        <tr>
                            <th>전시 url</th>
                            <td colspan="3"><input type="text" id="exhbnUrl" placeholder="전시 상세정보 url 입력하세요."></td>
                        </tr>
                        <tr>
                            <th>전시관 url</th>
                            <td colspan="3"><input type="text" id="exhbnPlaceUrl" placeholder="전시관 웹페이지 url 입력하세요.">
                            </td>
                        </tr>
                        <tr>
                            <th colspan="4" class="table-title">전시 정보</th>
                        </tr>
                        <tr>
                            <th>시작일</th>
                            <td><input type="date" id="exhbnStartDate" placeholder="제목 입력"></td>
                            <th>종료일</th>
                            <td><input type="date" id="exhbnEndDate" placeholder="제목 입력"></td>
                        </tr>
                        <tr>
                            <th>가격(설명)</th>
                            <td><input type="text" id="exhbnPrice" placeholder="제목 입력"></td>
                            <th>가격(원)</th>
                            <td><input type="text" id="exhbnPrice1" placeholder="제목 입력"></td>
                        </tr>
                        <tr>
                            <th colspan="4" class="table-title">지역 정보</th>
                        </tr>
                        <tr>
                            <th>전시 지역</th>
                            <td><input type="text" id="exhbnArea" placeholder="제목 입력"></td>
                            <th>주소</th>
                            <td><input type="text" id="exhbnPlaceAddr" placeholder="제목 입력"></td>
                        </tr>
                        <tr>
                            <th>전시관</th>
                            <td><input type="text" id="exhbnPlace" placeholder="제목 입력"></td>
                            <th>연락처</th>
                            <td><input type="text" id="exhbnPhone" placeholder="제목 입력"></td>
                        </tr>
                        <tr>
                            <th>gps X좌표</th>
                            <td><input type="text" id="gpsX" placeholder="제목 입력"></td>
                            <th>gps Y좌표</th>
                            <td><input type="text" id="gpsY" placeholder="제목 입력"></td>
                        </tr>
                        <tr>
                            <td colspan="4" class="table-title"></td>
                        </tr>
                    </table>
                </div>
                <div class="table-title">전시에 대한 상세 설명을 적어주세요.</div>
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
