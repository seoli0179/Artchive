<%--
  Created by IntelliJ IDEA.
  User: newp
  Date: 2022/09/20
  Time: 3:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Artchive :: ADMIN EXHBN</title>
    <link type="text/css" rel="stylesheet" href="<c:url value='/tools/reset.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/admin/adminNav.css'/>">
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/admin/adminMain.css'/>">
    <script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
    <script src="<c:url value='/js/admin/exhbn/exhbnController.js'/>"></script>
</head>
<body>
    <header>

    </header>
    <section id="mainSection">
        <!-- nav 삽입 -->
        <c:import url="adminNav.jsp"/>
        <!-- nav 삽입완료 -->
        <main>
            <div id="exhbnResult"></div>
        </main>
    </section>
    <footer>

    </footer>
</body>
</html>
