<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>ArtChive - 티켓 등록 </title>
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1" >
		<link rel="stylesheet" type="text/css" href="<c:url value='/tools/reset.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/common.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/myPage/uploadTicket.css'/>">
		<script src="<c:url value='/tools/jquery-3.6.0.min.js' />"></script>
		<script src="<c:url value='/js/myPage/uploadTicket.js' />"></script>
	</head>
	<body>
		<!-- 파일 업로드 -->
		<div class="uplaodBox">
			<h3>EVENT : 티켓 업로드하기</h3><br><br>
			<span>티켓 업로드 버튼을 눌러 캡쳐 이미지를 업로드해주세요.</span><br><br>
			<span>이미지 업로드가 완료되면 쿠폰 받기 버튼을 눌러주세요.</span><br><br>
			<span class="caution">* 이미지 인식이 불가능한 저화질의 스크린샷이나 정상적인 스크린 샷이 아닌 경우 적립되지 않습니다.</span>
			<form id="ocrForm" method="post" enctype="multipart/form-data">
				<div id="ticketBox" style="cursor:pointer">
					<span id="explain">이벤트 페이지의 <br><br>티켓을 업로드 해주세요.</span>
					<img id="peviewImg">
				</div>
				<input type="file" id="uploadFile" name="uploadFile" style="display:none">
				<input type="submit" class="white-btn uploadBtn" value="티켓 업로드">
			</form>
			
			<br><br>
			
			<!-- 결과 출력 -->	
			<h3>티켓 정보</h3>
			<ul class="ticketInfo">
				<li id="resultBoxTitle"></li>
				<li id="resultBoxPlace"></li>
				<li id="resultBoxNumber"></li>
				<li id="resultBoxDate"></li>
			</ul>
			
			<br><br>	
			<div id="imageBox">
				
			</div>
			<br><br>		
			
			<input type="button" id="submitBtn" class="white-btn ticketBtn" value="쿠폰 받기">
		</div> <!-- uplaodBox -->
	</body>
</html>
