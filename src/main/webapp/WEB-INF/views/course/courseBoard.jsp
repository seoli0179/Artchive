<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
    <head>
        <title>arTchive / 전시 코스 게시판</title>
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
                        <div id="allView" class="AREA">
                            <ul>
                                <li>탐색</li>
                            </ul>
                        </div>
                        <div id="lateView" class="AREA">
                            <ul>
                                <li>최신순</li>
                            </ul>
                        </div>
                        <div id="mostView" class="AREA">
                            <ul>
                                <li>조회순</li>
                            </ul>
                        </div>
                        <div id="likeView" class="AREA">
                            <ul>
                                <li>좋아요순</li>
                            </ul>
                        </div>
                    </div><!-- searchArea -->
                    <!-- .tablist -->
                    <div class="searchbar-box courseboard-search-box">
                        <input class="big-searchbar courseboard-searchbar" type="text" placeholder="원하는 주제로 검색해 보세요.">
                    </div>
                </div>
                <!-- .searchAreaBox -->
                <!-- borad-gallery -->
                <div class="course-box board-gallery-view">
                    <div class="post-container">
                        <div class="post-img-box">

                        </div>
                        <div class="post-title-box">
                            <h3>혼자 사색하며 즐기기 좋은 전시</h3>
                        </div>
                        <div class="post-content-box">
                            간단한 메모사항 뚜루루루루루ㅜㅁ 만약 적지 않은 경우, {전시회명}+{식당 등이 나옴} 양이 너무 많을 경우 점점으로 표시 ..
                        </div>
                        <div class="post-tag-box">

                        </div>
                        <div class="post-footer-box">
                            <div class="post-writer-box">
                                <span>{작성자 닉네임}</span>
                            </div>
                            <div class="post-react-box">
                                <div class="post-view-box">
                                    <span>1234</span>
                                </div>
                                <div class="post-like-box">
                                    <span>48</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>

            <!-- bottom 이동 -->
            <c:import url="/WEB-INF/views/layout/bottom.jsp" />
        </div>
    </body>
</html>
