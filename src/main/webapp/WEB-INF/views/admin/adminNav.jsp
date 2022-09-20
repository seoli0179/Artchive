<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<nav id="sidebar">
  <div>
    <div id="logoBox">
      <a href="<c:url value='/adminMain'/>">Artchive</a>
      <span>Admin</span>
    </div>
    <ul class="menu-list">
      <li class="sub-title">회원</li>
      <li><a href="<c:url value="/admin/user/view"/> ">회원 관리</a></li>
      <li class="sub-title">데이터베이스</li>
      <li><a href="<c:url value="/admin/exhbn/view"/> ">전시 등록</a></li>
      <li><a href="<c:url value="/admin/exhbn/view"/> ">전시 관리</a></li>
      <li class="sub-title" draggable="false">게시판</li>
      <li><a href="#">공지 등록</a></li>
      <li><a href="#">이벤트 등록</a></li>
      <li><a href="/admin/exhbn/view">게시글 관리</a></li>
    </ul>
  </div>
  <div>
    <ul class="menu-footer">
      <li><a href="#">Artchive 이동</a></li>
      <li><a href="#">웹페이지 관리</a></li>
      <li><a href="#">로그아웃</a></li>
    </ul>
  </div>
</nav>