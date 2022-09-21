<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<nav id="sidebar">
    <div>
        <div id="logoBox">
            <a href="<c:url value='/admin/index'/>">Artchive</a>
            <span>Admin</span>
        </div>
        <ul class="menu-list">
            <li class="sub-title">회원</li>
            <li><a href="<c:url value="/admin/user/view"/> ">회원 관리</a></li>
            <li class="sub-title">데이터베이스</li>
            <li><a href="<c:url value="/admin/exhbn/write"/>">전시 작성</a></li>
            <li><a href="<c:url value="/admin/exhbn/view"/> ">전시 관리</a></li>
            <li class="sub-title" draggable="false">게시판</li>
            <li><a href="<c:url value="/admin/notice/write"/>">공지 작성</a></li>
            <li><a href="<c:url value="/admin/event/write"/>">이벤트 작성</a></li>
            <li><a href="<c:url value="/admin/note/view"/> ">게시글 관리</a></li>
        </ul>
    </div>
    <div>
        <ul class="menu-footer">
            <li><a href="<c:url value='/'/>">Artchive 이동</a></li>
            <li><a href="#">웹페이지 관리</a></li>
            <li><a href="#">로그아웃</a></li>
        </ul>
    </div>
</nav>