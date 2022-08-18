<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
    <head>
        <title>전시 코스 게시판</title>
        <script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
        <%--    <script src="<c:url value='/js/course.js'/>"></script>--%>
        <script src="https://kit.fontawesome.com/50d21a2bed.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="<c:url value='/tools/reset.css'/>"/>
        <link rel="stylesheet" type="text/css" href="<c:url value='/css/common.css'/>"/>
        <link rel="stylesheet" type="text/css" href="<c:url value='/css/course/course.css'/>"/>
        <link rel="stylesheet" type="text/css" href="<c:url value='/css/list.css'/>"/>
        <link rel="stylesheet" type="text/css" href="<c:url value='/css/course/courseBoard.css'/>"/>
    </head>
    <body>
        <div id="course-wrap">
            <!-- top으로 이동 -->
            <c:import url="/WEB-INF/views/layout/top.jsp" />

            <main id="course-container">
                <div class="course-box main-title-box">
                    <h1 class="h1">관람 코스 모아보기</h1>
                    <span>다른 사람들이 기획한 관람 코스들을 모아봅니다.</span>
                </div>
                <!-- area -->
                <div id="searchAreaBox">
                    <div id="searchArea">
                        <div id="allArea" class="AREA">
                            <ul>
                                <li>전체</li>
                            </ul>
                        </div>
                        <div id="capitalArea" class="AREA">
                            <ul>
                                <li>수도권</li>
                            </ul>
                        </div>
                        <div id="busanArea" class="AREA">
                            <ul>
                                <li>부산</li>
                            </ul>
                        </div>
                        <div id="jejuArea" class="AREA">
                            <ul>
                                <li>제주</li>
                            </ul>
                        </div>
                        <div id="kangwonArea" class="AREA">
                            <ul>
                                <li>강원</li>
                            </ul>
                        </div>
                        <div id="jeonArea" class="AREA">
                            <ul>
                                <li>전라도</li>
                            </ul>
                        </div>

                        <div id="kyeongArea" class="AREA">
                            <ul>
                                <li>경상도</li>
                            </ul>
                        </div>

                        <div id="etcArea" class="AREA">
                            <ul>
                                <li>기타지역</li>
                            </ul>
                        </div>

                    </div><!-- searchArea -->
                    <!-- .tablist -->
                    <div class="searchbar-box courseboard-search-box">
                        <input class="big-searchbar courseboard-searchbar" type="text" placeholder="원하는 주제로 검색해 보세요.">
                    </div>
                </div>
                <!--  -->
            </main>

            <!-- bottom 이동 -->
            <c:import url="/WEB-INF/views/layout/bottom.jsp" />
        </div>
    </body>
</html>
