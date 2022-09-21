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
    <script src="<c:url value='/js/admin/exhbn/update.js'/>"></script>
    <title>Artchive / 공지 수정 하기</title>
</head>
<body>
<div class="title">
    <h1><a href="<c:url value="/admin/notice/updateview"/>">Update Notice</a></h1>
</div>

<div class="write-box">
    <div class="column-box">
        <table CLASS="info-table">
            <input type="hidden" id="noteId" value="${exhbn.exhbnId}">
            <tr>
                <th colspan="4" class="table-title">기본 정보</th>
            </tr>
            <tr>
                <th>상태</th>
                <td>
                    <select id="viewState">
                        <option value="POST" <c:if test="${exhbn.viewState == 'POST'}">selected</c:if>>개시</option>
                        <option value="DELETE" <c:if test="${exhbn.viewState == 'DELETE'}">selected</c:if>>삭제</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>전시 아이디</th>
                <td style="color: white;">${exhbn.exhbnId}</td>
                <th>전시관분류</th>
                <td>
                    <select id="exhbnType">
                        <option value="박물관" <c:if test="${exhbn.exhbnType == '박물관'}">selected</c:if>>박물관</option>
                        <option value="축제" <c:if test="${exhbn.exhbnType == '축제'}">selected</c:if>>축제</option>
                        <option value="미술전시" <c:if test="${exhbn.exhbnType == '미술전시'}">selected</c:if>>미술전시</option>
                        <option value="교육" <c:if test="${exhbn.exhbnType == '교육'}">selected</c:if>>교육</option>
                        <option value="기타" <c:if test="${exhbn.exhbnType == '기타'}">selected</c:if>>기타</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>전시 제목</th>
                <td colspan="3"><input type="text" id="exhbnTitle" placeholder="전시관 제목을 입력하세요." value="${exhbn.exhbnTitle}"></td>
            </tr>
            <tr>
                <th colspan="4" class="table-title">이미지 주소</th>
            </tr>
            <tr>
                <th>포스터 url</th>
                <td colspan="3"><input type="text" id="exhbnImgUrl" placeholder="포스터 이미지 url 입력하세요." value="${exhbn.exhbnImgUrl}"></td>
            </tr>
            <tr>
                <th><a style="color: #03DAC6; cursor: pointer;" onclick="window.open('${exhbn.exhbnUrl}')">전시 url</a></th>
                <td colspan="3"><input type="text" id="exhbnUrl" placeholder="전시 상세정보 url 입력하세요." value="${exhbn.exhbnUrl}" ></td>
            </tr>
            <tr>
                <th>전시관 url</th>
                <td colspan="3"><input type="text" id="exhbnPlaceUrl" placeholder="전시관 웹페이지 url 입력하세요." value="${exhbn.exhbnPlaceUrl}" >
                </td>
            </tr>
            <tr>
                <th colspan="4" class="table-title">전시 정보</th>
            </tr>
            <tr>
                <th>시작일</th>
                <td><input type="date" id="exhbnStartDate" placeholder="제목 입력" value="<fmt:formatDate value="${exhbn.exhbnStartDate}" pattern="yyyy-MM-dd"></fmt:formatDate>"></td>
                <th>종료일</th>
                <td><input type="date" id="exhbnEndDate" placeholder="제목 입력" value="<fmt:formatDate value="${exhbn.exhbnEndDate}" pattern="yyyy-MM-dd"></fmt:formatDate>">></td>
            </tr>
            <tr>
                <th>가격(설명)</th>
                <td><input type="text" id="exhbnPrice" placeholder="제목 입력" value="${exhbn.exhbnPrice}"></td>
                <th>가격(원)</th>
                <td><input type="text" id="exhbnPrice1" placeholder="제목 입력" value="${exhbn.exhbnPrice1}"></td>
            </tr>
            <tr>
                <th colspan="4" class="table-title">지역 정보</th>
            </tr>
            <tr>
                <th>전시 지역</th>
                <td><input type="text" id="exhbnArea" placeholder="제목 입력" value="${exhbn.exhbnArea}"></td>
                <th>주소</th>
                <td><input type="text" id="exhbnPlaceAddr" placeholder="제목 입력" value="${exhbn.exhbnPlaceAddr}"></td>
            </tr>
            <tr>
                <th>전시관</th>
                <td><input type="text" id="exhbnPlace" placeholder="제목 입력" value="${exhbn.exhbnPlace}"></td>
                <th>연락처</th>
                <td><input type="text" id="exhbnPhone" placeholder="제목 입력" value="${exhbn.exhbnPhone}"></td>
            </tr>
            <tr>
                <th>gps X좌표</th>
                <td><input type="text" id="gpsX" placeholder="제목 입력" value="${exhbn.gpsX}"></td>
                <th>gps Y좌표</th>
                <td><input type="text" id="gpsY" placeholder="제목 입력" value="${exhbn.gpsY}"></td>
            </tr>
            <tr>
                <td colspan="4" class="table-title"></td>
            </tr>
        </table>
    </div>
    <div class="table-title">전시에 대한 상세 설명을 적어주세요.</div>
    <div class="summernote-box">
        <div id="summernote">${exhbn.exhbnDetail}</div>
    </div>
    <div class="btn-box">
        <input type="button" id="write" value="등록">
        <input type="button" id="delete" value="삭제">
    </div>
</body>
</html>
