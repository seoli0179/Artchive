<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Artchive</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/tools/reset.css'/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/header.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/common.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/banner.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/exhibition.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/recommended.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/chatbot.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/search.css'/>">
    <script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
    <script src="<c:url value='/js/chatbotShow.js'/>"></script>
    <script src="<c:url value='/js/chatbot2.js'/>"></script>
    <script src="<c:url value='/js/module/dropdown.js'/>"></script>
    <script src="<c:url value='/js/search.js'/>"></script>
    <script src="<c:url value='/js/aitems/aitemsExhbn.js'/>"></script>
    <script src="<c:url value='/js/index/imgBox.js'/>"></script> <!-- main image -->
    <!-- icon kit -->
    <script src="https://kit.fontawesome.com/50d21a2bed.js" crossorigin="anonymous"></script>
    <script type="text/javascript"></script>
</head>
<body>
<div id="wrap">

    <header>
    
    <!-- top으로 이동 -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />


        <div id="visual">
            <div id="visual-img">
<%--                <img src="<c:url value='https://ifh.cc/g/QzlnKA.png'/>">--%>
                <div id="visual-img-box">
                    <div id="img-top-right1"><img id="hands" src="<c:url value="/image/hands/hands_1.png"/>"></div>
                    <div id="img-top-right2"><img id="eyes" src="<c:url value="/image/eyes/eyes_1.png"/>"></div>
                    <div id="img-center-left1"><img id="flower" src="<c:url value="/image/flower/flower_1.png"/>"></div></div>
                </div>
            </div>
        </div>
    </header>


    <div id="banner">

        <div id="bannerText1" class="bannerText">
            <ul>
                <!-- <li>코스 짜러가기</li> -->
            </ul>
        </div>
        <div id="bannerText2" class="bannerText">
            <ul>
                <%--						<li>코스 만들기</li>--%>
            </ul>
        </div>

        <div id=" ">
            <div id="bannerText3" class="bannerText">
                <ul>
                    <li><a href="<c:url value='/course'/>">Make Your Course!</a></li>
                </ul>
            </div>
        </div>

    </div><!-- banner -->

    <div id="exhibitionAll">

        <div id="exhibition">
            <div class="exMaintext">
                <ul>
                    <li class="MainText">지금 하고 있는 전시</li>
                    <li class="exhibitionMore"><a href="<c:url value='/exhbn/list'/>">더보기 ></a></li>
                </ul>
            </div>


            <div class="exhbnBox">
                <c:forEach var="exhbn" items="${exhbnList}" varStatus="status" begin="1" end="4">
                    <a href="/exhbn/detail/${exhbn.exhbnId}">
                        <div id="exhibitionBox1" class="exhibitionBox" style="cursor:pointer;">
                            <div id="exhibitionImg1" class="exhibitionImg">
                                <ul>
                                    <li>
                                        <img src="${exhbn.exhbnImgUrl}">
                                    </li>
                                </ul>
                            </div><!-- exhibitionImg -->
                            <div class="exhibitionText">
                                <ul>
                                    <li class="exName"><a href="#">${exhbn.exhbnTitle}</a></li>
                                    <li class="exPeriod">
                                        <a href="#">
                                            <fmt:formatDate value="${exhbn.exhbnStartDate}" type="date"
                                                            pattern="yyyy.MM.dd"/> - <fmt:formatDate
                                                value="${exhbn.exhbnEndDate}" type="date" pattern="yyyy.MM.dd"/>
                                        </a></li>
                                </ul>
                            </div><!-- exhibitionText -->
                        </div> <!-- exhibitionBox -->
                    </a>
                </c:forEach>
            </div>

        </div><!-- exhibition -->

        <c:if test="${empty sessionScope.sid }">
            <div id="exhibition2">
                <div class="exMaintext">
                    <ul>
                        <li class="MainText">추천하는 전시</li>
                        <li class="exhibitionMore"><a href="#">더보기 ></a></li>
                    </ul>
                </div>

                <div class="exhbnBox" id="exhbnRecommendBox">

                </div>


            </div>
            <!-- exhibition2 -->
        </c:if>

        <c:if test="${not empty sessionScope.sid }">
            <div id="exhibition2">
                <div class="exMaintext">
                    <ul>
                        <li class="exUserName">${sessionScope.username}</li>
                        <li class="MainText">님에게 추천하는 전시</li>
                        <li class="exhibitionMore"><a href="#">더보기 ></a></li>
                    </ul>
                </div>

                <div class="exhbnBox">
                    <c:forEach var="exhbn" items="${exhbnList}" varStatus="status" begin="5" end="9" step="1">
                        <a href="/exhbn/detail/${exhbn.exhbnId}">
                            <div id="exhibitionBox1" class="exhibitionBox" style="cursor:pointer;">
                                <div id="exhibitionImg1" class="exhibitionImg">
                                    <ul>
                                        <li>
                                            <img src="${exhbn.exhbnImgUrl}">
                                        </li>
                                    </ul>
                                </div><!-- exhibitionImg -->
                                <div class="exhibitionText">
                                    <ul>
                                        <li class="exName"><a href="#">${exhbn.exhbnTitle}</a></li>
                                        <li class="exPeriod">
                                            <a href="#">
                                                <fmt:formatDate value="${exhbn.exhbnStartDate}" type="date"
                                                                pattern="yyyy.MM.dd"/> - <fmt:formatDate
                                                    value="${exhbn.exhbnEndDate}" type="date" pattern="yyyy.MM.dd"/>
                                            </a></li>
                                    </ul>
                                </div><!-- exhibitionText -->
                            </div> <!-- exhibitionBox -->
                        </a>
                    </c:forEach>
                </div>

                    <%-- <div id="exhibitionBox3" class="exhibitionBox">
                    <div id="exhibitionImg1" class="exhibitionImg">
                     <ul>
                         <li>
                             <img src="<c:url value='/image/testImage.jpg'/>">
                         </li>
                     </ul>
                     </div><!-- exhibitionImg -->
                     <div class= "exhibitionText">
                         <ul>
                            <li class="exName"><a href="#">전시회명1</a></li>
                            <li class="exPeriod"><a href="#">2022.00.00-2022.00.00</a></li>
                         </ul>
                     </div><!-- exhibitionText -->
                     </div> <!-- exhibitionBox -->

                    <div id="exhibitionBox" class="exhibitionBox">
                    <div id="exhibitionImg1" class="exhibitionImg">
                     <ul>
                         <li>
                             <img src="<c:url value='/image/testImage.jpg'/>">
                         </li>
                     </ul>
                     </div><!-- exhibitionImg -->
                     <div class= "exhibitionText">
                         <ul>
                            <li class="exName"><a href="#">전시회명1</a></li>
                            <li class="exPeriod"><a href="#">2022.00.00-2022.00.00</a></li>
                         </ul>
                     </div><!-- exhibitionText -->
                     </div> <!-- exhibitionBox --> --%>

            </div>
            <!-- exhibition2 -->
        </c:if>

    </div><!-- exhibitionAll -->

    <div id="recommended">
    
        <div id="recommended1" onclick="location.href='<c:url value='/review/reviewNote/8'/>';">
            <ul>
                <li>
                    <img src="<c:url value='http://grynaszstudio.com/content/1.projects/027.ekspozycja_CMIELOW/008_Cmielow_LRes.jpg'/>">
                </li>
            </ul>
            <div id="description1" class="description">
                <ul>
                    <li><a>@user</a></li>
                    <li>포개어 자라는 숲</li>
                    <li>에디터픽 추천 코스</li>
                </ul>
            </div>
        </div>

        <div id="recommended2" onclick="location.href='<c:url value='/review/reviewNote/9'/>';">
            <ul>
                <li>
                    <img src="<c:url value='http://grynaszstudio.com/content/1.projects/027.ekspozycja_CMIELOW/007_Cmielow_LRes.jpg'/>">
                </li>
            </ul>
            <div id="description2" class="description">
                <ul>
                    <li><a>@user</a></li>
                    <li>이지원 : DRAWER</li>
                    <li>에디터픽 추천 코스</li>
                </ul>
            </div>
        </div>

        <div id="recommended3" onclick="location.href='<c:url value='/review/reviewNote/10'/>';">
            <ul>
                <li>
                    <img src="<c:url value='http://grynaszstudio.com/content/1.projects/027.ekspozycja_CMIELOW/005_Cmielow_LRes.jpg'/>">
                </li>
            </ul>
            <div id="description3" class="description">
                <ul>
                    <li><a>@user</a></li>
                    <li>한국문화센터 연합회 작품전</li>
                    <li>에디터픽 추천 코스</li>
                </ul>
            </div>
        </div>

    </div><!-- Recommended-->

    <!-- 챗봇 -->
    <div id=chatbotTest>
        <!-- Header -->
        <div id="chatHeader">
            <span>Artchive Bot</span>
            <button id="btnClose">X</button>
        </div>

        <!-- 채팅 내용 출력 영역  -->
        <div id="chatBox">	
        	<div id="chatbotIntro">
        		<ul>
        			<div id="chatbotIntroImg"><img src="<c:url value='https://cdn-icons-png.flaticon.com/512/5076/5076265.png'/>"></div>
        			<li id="chatbotIntro1" class="chatbotIntro">챗봇에 문의하기</li>
        			<li id="chatbotIntro2" class="chatbotIntro">특별한 하루를 만들기 위한<br>코스를 만들어보시는 것은 어떤가요?</li>
        		</ul>
        	</div>
        </div>
        
		<div id="chatbotBlank"></div>
		
        <div>
            <form id="chatForm" name="chatForm">
                <input type="text" id="message" name="message" size="30" placeholder="질문을 입력하세요"/>
                <input type="image" src="<c:url value='/image/send.png'/>" id="submitBtn" value="submit">
            </form>
        </div>
    </div><!-- 챗봇 끝 -->

    <div id="chatImage">
<%--        <img src="<c:url value='/image/chatbot.png'/>">--%>
        <div id="chatbotImg">
            <img src="<c:url value='https://cdn-icons-png.flaticon.com/512/5076/5076265.png'/>">
        </div>
    </div>

    <!-- bottom 이동 -->
    <c:import url="/WEB-INF/views/layout/bottom.jsp"/>

</div> <!-- wrap -->
</body>
</html>