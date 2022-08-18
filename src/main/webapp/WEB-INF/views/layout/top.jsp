<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/header2.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/search2.css'/>">
		<script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/header.js'/>"></script>
		<script src="<c:url value='/js/search.js'/>"></script>
		<script type="text/javascript"></script>
	</head>
	<body>
		<header>
			<div id="mainMenu">
    
       		<div id="logoBox"><a href="<c:url value='/'/>">arTchive</a></div><!-- ✚ -->
        	
        	<div id="headerBox">
        		<nav>
        				<ul>
        					<li><a href="<c:url value='/list'/>">전시검색</a></li>
        					<li><a href="#">menu2</a></li>
        					<li><a href="#">menu3</a></li>
        					<li><a href="#">menu4</a></li>
        					<li><a href="#">menu5</a></li>
        				</ul>		
        		</nav>
        	</div> <!-- headerBox -->
        	
        	<div id="loginBox">
        		<ul>
        			<li><a href="#"><img src="<c:url value='/image/searchBlack.png'/>" id="searchImg"></a></li>
        			<li><a href="/join">JOIN</a></li>
        			<li><a href="/login">LOGIN</a></li>
        		</ul>
        	</div> <!-- loginBox -->
        	
        	<div id="searchBox">
				<form>
					<input type="text" id="searchMessage" name="searchMessage" size="120"  placeholder="검색어를 입력하세요."/>
					<input type="submit" id="searchBtn" value="검색">
					<img src="<c:url value='/image/x.png'/>">
				</form>
			</div><!-- searchBox -->
        	
        	</div> <!-- mainMenu -->
        	
            </header>
	</body>
</html>