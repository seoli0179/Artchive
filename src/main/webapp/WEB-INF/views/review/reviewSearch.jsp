<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
			<!-- jquery -->
	        <script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
	        <!-- jquery-ui -->
	        <script src="http://code.jquery.com/ui/1.13.2/jquery-ui.js" ></script>
	        <link href="http://code.jquery.com/ui/1.13.2/themes/smoothness/jquery-ui.css" rel="Stylesheet">
	        <!-- icon-kit -->
	        <script src="https://kit.fontawesome.com/50d21a2bed.js" crossorigin="anonymous"></script>
	        <script src="https://kit.fontawesome.com/8ab5776cfb.js" crossorigin="anonymous"></script><!-- 아이콘 -->
	
	        <!-- custom -->
	        <script src="<c:url value='/js/course/course.js'/>"></script>
	        <script src="<c:url value='/js/course/autocomplete.js'/>"></script>
	        
	        <!-- reviewList -->
	        <script src="<c:url value='/js/review/reviewList.js'/>"></script>
	
	        <link rel="stylesheet" type="text/css" href="<c:url value='/tools/reset.css'/>"/>
	        <link rel="stylesheet" type="text/css" href="<c:url value='/css/common.css'/>"/>
	        <link rel="stylesheet" type="text/css" href="<c:url value='/css/list.css'/>"/>
	        <link rel="stylesheet" type="text/css" href="<c:url value='/css/course/course.css'/>"/>
	        <link rel="stylesheet" type="text/css" href="<c:url value='/css/course/courseBoard.css'/>"/>
	        
	</head>
	<body>
		
		<div id="searchResultl">
                <div class="course-box board-gallery-view">
                    <c:forEach var="reviewNote" items="${reviewNoteList}">
                        <div class="post-container" style="cursor: pointer;" onclick="location.href='/review/reviewNote/${reviewNote.reviewNoteId}';">
                            <div class="post-img-box" style="background-image: url('${reviewNote.exhbnImgUrl}');">

                            </div>
                            <div class="post-title-box">
                                <h3>${reviewNote.reviewNoteTitle}</h3>
                            </div>
                            <div class="post-content-box">
                                    <b>${reviewNote.courseTitle}</b>에 대한 <b>${reviewNote.userNickname}</b>님의 리뷰
                            </div>
                            <div class="post-tag-box">
                                <c:forTokens var="taglist" items="${reviewNote.courseTag}" delims=";;">
                                    <div class="post-tag"><c:out value="${taglist}"/></div>
                                </c:forTokens>
                            </div>
                            <div class="post-footer-box">
                                <div class="post-writer-box">
                                    <span class="userName"> ${reviewNote.userNickname}</span>&nbsp;&nbsp;<fmt:formatDate pattern="MM-dd" value="${reviewNote.reviewNoteCreatedDate}"/>
                                </div>
                                <div class="post-react-box">
                                    <div class="post-view-box">
                                    <%-- <c:if test="${not empty sessionScope.sid}"> --%>
	                                    <c:if test="${reviewNote.reviewNoteLikeCheck}">
		                            		<i class="fa-solid fa-heart" style="color:red;"></i>
		                       			</c:if>
	                                    <c:if test="${not reviewNote.reviewNoteLikeCheck}">
	                                        <i class="fa-solid fa-heart" style="color:black;"></i>
	                                    </c:if>
	                                <%-- </c:if>
	                                <c:if test="${empty sessionScope.sid}">
	                        			<i class="fa-solid fa-heart" style="color:Black;"></i>
	                    			</c:if> --%>
                                        <span>${reviewNote.reviewNoteLike}</span>
                                    </div>
                                    <div class="post-like-box">
                                        <i class="fa-solid fa-message" style="color:black;"></i>
                                        <span>${reviewNote.reviewNoteCommentNum}</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <!-- .post-container -->
                </div>
                </div> <!-- searchResultl -->
		
	</body>
</html>