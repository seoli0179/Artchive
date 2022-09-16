<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>arTchive</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/tools/reset.css'/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/common.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/chatbot.css'/>">
		<script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/chatbotShow.js'/>"></script>
		<%-- <script src="<c:url value='/js/chatbot.js'/>"></script> --%>
		<%-- <script src="<c:url value='/js/chatbot.js'/>"></script> --%>
		<script type="text/javascript"></script>
	</head>
		<!-- top으로 이동 -->
		<c:import url="/WEB-INF/views/layout/top.jsp" /> 
		 	
		 	<div id="testWrapper">
		 	
		 	  	<!-- 챗봇 -->
           	<div id=chatbotTest>
			<!-- Header -->
			<div id="chatHeader">
				<span>챗봇</span>
				<button id="btnClose">X</button>
			</div>
			
			 <!-- 채팅 내용 출력 영역  -->
			<div id="chatBox"></div>
			
			<div>
				<form id="chatForm" name="chatForm">
					<input type="text" id="message" name="message" size="30"  placeholder="질문을 입력하세요"/>
					<input type="image" src = "<c:url value='/image/send.png'/>" id="submitBtn" value="submit">
				</form>
			</div>
			</div><!-- 챗봇 끝 -->
			
			<div id="chatImage">
			<img src="<c:url value='/image/chatbot.png'/>">
			</div>
		 
		 	</div>
		 	
	  	 <!-- bottom 이동 -->
         <c:import url="/WEB-INF/views/layout/bottom.jsp" />

	</body>
</html>