<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<nav id="sidebar">
  <div id="logoBox">
    <a href="<c:url value='/adminMain'/>">Artchive</a>
    <span>Admin</span>
  </div>
  <ul>
    <li><a href="#">회원관리</a></li>
    <li><a href="#">전시관리</a></li>
    <li><a href="#">게시글관리</a></li>
  </ul>
</nav>