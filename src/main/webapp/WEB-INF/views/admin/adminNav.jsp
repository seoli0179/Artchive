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
            <li class="sub-title">작성</li>
            <li><a href="<c:url value="/admin/exhbn/write"/>">전시 작성</a></li>
            <li><a href="<c:url value="/admin/notice/write"/>">공지 작성</a></li>
            <li><a href="<c:url value="/admin/event/write"/>">이벤트 작성</a></li>
            <li class="sub-title" draggable="false">관리</li>
            <li><a href="<c:url value="/admin/exhbn/view"/> ">전시 관리</a></li>
            <li><a href="<c:url value="/admin/note/view"/> ">자유 관리</a></li>
            <li><a href="<c:url value="/admin/notice/view"/> ">공지 관리</a></li>
            <li><a href="<c:url value="/admin/event/view"/> ">이벤트 관리</a></li>
            <li><a href="<c:url value="/admin/review/view"/> ">리뷰 관리</a></li>
        </ul>
    </div>
    <div>
        <ul class="menu-footer">
            <li><a href="<c:url value='/'/>">Artchive 이동</a></li>
            <li><a href="<c:url value='/admin/logout'/>">로그아웃</a></li>
        </ul>
    </div>
</nav>