<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
    <head>
        <title>arTchive / 전시 코스 게시판</title>
        <!-- jquery -->
        <script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
        <!-- jquery-ui -->
        <script src="http://code.jquery.com/ui/1.13.2/jquery-ui.js" ></script>
        <link href="http://code.jquery.com/ui/1.13.2/themes/smoothness/jquery-ui.css" rel="Stylesheet">
        <!-- icon-kit -->
        <script src="https://kit.fontawesome.com/50d21a2bed.js" crossorigin="anonymous"></script>

        <!-- custom -->
        <script src="<c:url value='/js/course/course.js'/>"></script>
        <script src="<c:url value='/js/course/autocomplete.js'/>"></script>

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
                <div id="course-box" class="course-box main-title-box">
                    <h1 class="h1">Courses</h1>
                    <span>다른 사람들이 기획한 관람 코스들을 모아봅니다.</span>
	                    <div class="courseboard-search-box">
	                        <div class="searchbar-box">
	                            <div class="searchbar-border tag-box" type="text">
	                                <ul id="tagList">
	                                    <input class="inner-searchbar" id="inner-searchbar" type="text" placeholder="검색 태그를 입력하세요.">
	                                </ul>
	                                <div id="filterList" style="position: relative;">
	
	                                </div>
	                            </div>
	                            <input class="black-btn courseBoard-searchBtn" type="button" value="검색">
	                        </div>
	                        <div id="tag-caution" class="vibration">태그는 3개까지만 선택할 수 있습니다.</div>
	                    </div>
                </div>
                <!-- area -->
                <section id="searchAreaBox">
                    <div id="searchArea">
                        <div id="lateView" class="AREA selected">
                            <ul>
                                <li><a href="#">최신순</a></li>
                            </ul>
                        </div>
                        <div id="mostView" class="AREA">
                            <ul>
                                <li><a href="#">조회순</a></li>
                            </ul>
                        </div>
                        <div id="likeView" class="AREA">
                            <ul>
                                <li><a href="#">좋아요순</a></li>
                            </ul>
                        </div>
                    </div><!-- searchArea -->
                    <!-- .tablist -->
                    <!-- <div class="courseboard-search-box">
                        <div class="searchbar-box">
                            <div class="searchbar-border tag-box" type="text">
                                <ul id="tagList">
                                    <input class="inner-searchbar" id="inner-searchbar" type="text" placeholder="검색 태그를 입력하세요.">
                                </ul>
                                <div id="filterList" style="position: relative;">

                                </div>
                            </div>
                            <input class="black-btn courseBoard-searchBtn" type="button" value="검색">
                        </div>
                        <div id="tag-caution" class="vibration">태그는 3개까지만 선택할 수 있습니다.</div>
                    </div> -->
                </section>
                <!-- .searchAreaBox -->
                <!-- borad-gallery -->
                <div class="course-box board-gallery-view">
                    <div class="post-container" style="cursor: pointer;" onclick="location.href='/course/board';">
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
                                by&nbsp;<span class="userName">작성자명${note.userNickname}</span>
                            </div>
                            <div class="post-react-box">
                                <div class="post-view-box">
                                    <i class="fa-solid fa-heart" style="color:black;"></i>
                                    <span>48</span>
                                </div>
                                <div class="post-like-box">
                                    <i class="fa-solid fa-message" style="color:black;"></i>
                                    <span>1234</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="post-container"  style="cursor: pointer;" onclick="location.href='/course/board';">
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
                                by&nbsp;<span class="userName">작성자명${note.userNickname}</span>
                            </div>
                            <div class="post-react-box">
                                <div class="post-view-box">
                                    <i class="fa-solid fa-heart" style="color:red;"></i>
                                    <span>48</span>
                                </div>
                                <div class="post-like-box">
                                    <i class="fa-solid fa-message" style="color:black;"></i>
                                    <span>1234</span>
                                </div>
                            </div>
                        </div>
                    </div>
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
                                by&nbsp;<span class="userName">작성자명${note.userNickname}</span>
                            </div>
                            <div class="post-react-box">
                                <div class="post-view-box">
                                    <i class="fa-solid fa-heart" style="color:red;"></i>
                                    <span>48</span>
                                </div>
                                <div class="post-like-box">
                                    <i class="fa-solid fa-message" style="color:black;"></i>
                                    <span>1234</span>
                                </div>
                            </div>
                        </div>
                    </div>
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
                                by&nbsp;<span class="userName">작성자명${note.userNickname}</span>
                            </div>
                            <div class="post-react-box">
                                <div class="post-view-box">
                                    <i class="fa-solid fa-heart" style="color:red;"></i>
                                    <span>48</span>
                                </div>
                                <div class="post-like-box">
                                    <i class="fa-solid fa-message" style="color:black;"></i>
                                    <span>1234</span>
                                </div>
                            </div>
                        </div>
                    </div>
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
                                by&nbsp;<span class="userName">작성자명${note.userNickname}</span>
                            </div>
                            <div class="post-react-box">
                                <div class="post-view-box">
                                    <i class="fa-solid fa-heart" style="color:red;"></i>
                                    <span>48</span>
                                </div>
                                <div class="post-like-box">
                                    <i class="fa-solid fa-message" style="color:black;"></i>
                                    <span>1234</span>
                                </div>
                            </div>
                        </div>
                    </div>
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
                                by&nbsp;<span class="userName">작성자명${note.userNickname}</span>
                            </div>
                            <div class="post-react-box">
                                <div class="post-view-box">
                                    <i class="fa-solid fa-heart" style="color:red;"></i>
                                    <span>48</span>
                                </div>
                                <div class="post-like-box">
                                    <i class="fa-solid fa-message" style="color:black;"></i>
                                    <span>1234</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- .post-container -->
                </div>
            </main>

            <!-- bottom 이동 -->
            <c:import url="/WEB-INF/views/layout/bottom.jsp" />
        </div>
    </body>
</html>
