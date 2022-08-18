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
        <link rel="stylesheet" type="text/css" href="<c:url value='/css/course.css'/>"/>
        <link rel="stylesheet" type="text/css" href="<c:url value='/css/courseBoard.css'/>"/>
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
                <div class="course-box search-box">
                    <div class="tablist-box">
                        <div class="tab-box">
                            <button>
                                <h3><span>탐색</span></h3>
                            </button>
                        </div>
                        <div class="tab-box">
                            <button>
                                <h3><span>최신순</span></h3>
                            </button>
                        </div>
                        <div class="tab-box">
                            <button>
                                <h3><span>조회순</span></h3>
                            </button>
                        </div>
                        <div class="tab-box">
                            <button>
                                <h3><span>좋아요순</span></h3>
                            </button>
                        </div>
                    </div>
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
