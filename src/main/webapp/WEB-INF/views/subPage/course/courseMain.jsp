<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
    <head>
        <title>전시 관람 준비</title>
        <script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
    <%--    <script src="<c:url value='/js/course.js'/>"></script>--%>
        <script src="https://kit.fontawesome.com/50d21a2bed.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="<c:url value='/tools/reset.css'/>"/>
        <link rel="stylesheet" type="text/css" href="<c:url value='/css/common.css'/>"/>
        <link rel="stylesheet" type="text/css" href="<c:url value='/css/course/course.css'/>"/>
    </head>
<body>
    <div id="course-wrap">
        <!-- top으로 이동 -->
        <c:import url="/WEB-INF/views/layout/top.jsp" />

        <main id="course-container">
            <div class="course-box main-title-box">
                <h1 class="h1">전시 관람 준비</h1>
                <span>오늘 더 멋지게 예술을 즐겨요!</span>
            </div>
            <div class="course-box guide-box">
                <h2 class="h2">당신을 위한 arTchive</h2>
                <div class="guide-img-box">
                    <div class="guide-contents">
                        <img class="guide-img" src="https://user-images.githubusercontent.com/103120173/185287401-877eef5d-cf11-459f-8b4b-c915c255cb49.png">
                        <h3 class="h3">전시 추천</h3>
                        <span class="small-text">날 위한 문화예술 전시를<br>쉽게 만날 수 있어요.</span>
                    </div>
                    <div class="guide-contents">
                        <img class="guide-img" src="https://user-images.githubusercontent.com/103120173/185287409-717065e3-7293-45af-bf27-17c48c820c9c.png">
                        <h3>핫플레이스 추천</h3>
                        <span class="small-text">더이상 어디갈지 헤매지 마세요.<br>전시의 여운을 줄길 수 있는 곳으로 추천합니다.</span>
                    </div>
                    <div class="guide-contents">
                        <img class="guide-img" src="https://user-images.githubusercontent.com/103120173/185287416-56815b55-2793-4d0f-8b5d-285dc40b919e.png">
                        <h3>나만의 전시 코스</h3>
                        <span class="small-text">나만의 전시코스를 짜고<br>쉽게 공유하세요.</span>
                    </div>
                    <div class="guide-contents">
                        <img class="guide-img" src="https://user-images.githubusercontent.com/103120173/185287421-dc103247-022f-4701-80fd-191b1f87f47d.png">
                        <h3>문화예술 커뮤니티</h3>
                        <span class="small-text">다른 사람의 전시 후기를<br>보고 공감할 수 있어요.</span>
                    </div>
                </div>
            </div>
            <div class="course-box recommand-exhb">
                <div class="box-title-box">
                    <div>
                        <h2 class="h2">전시부터 정하기</h2>
                        <span>{username}님이 좋아할 것 같아요.</span>
                    </div>
                    <div class="viewmore-box">
                        <a href="<c:url value='/exhbn/list'/>"><span class="viewmore">더보기 ></span></a>
                    </div>
                </div>
                <div class="exhbnList-box">
                    <c:forEach items="${exhbnList}" var="exhbn" end="4">
                        <div class="exhbn-item">
                            <a href="/exhbn/detail/${exhbn.exhbnId}"><img class="exhbn-poster" src="${exhbn.exhbnImgUrl}" alt="전시포스터"></a>
                            <div class="poster-box">
                                <span class="ex-title">${exhbn.exhbnTitle}</span>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <div class="selected">
                    <div><span class="big-text">{username}님이 선택한 <strong>{전시명}</strong>부터 </span></div>
                    <div><button class="black-btn">코스짜러 가기</button></div>
                </div>
                <br>
            </div>
            <div class="course-box search-box">
                <div class="box-title-box">
                    <div>
                        <h2 class="h2">테마 코스 찾기</h2>
                        <span>누구랑 어떤 하루를 보내고 싶나요?</span>
                    </div>
                </div>
                <div class="searchbar-box">
                    <input class="big-searchbar" type="text" placeholder="원하는 주제로 검색해 보세요.">
                    <input class="black-btn searchbar-btn" type="button" value="검색">
                </div>
            </div>
            <div class="course-box noborder">
                <div class="box-title-box">
                    <div>
                        <h2 class="h2">인기 코스</h2>
                        <span>최근 ArTchive 유저들이 좋아한 코스를 살펴보세요!</span>
                    </div>
                    <div class="viewmore-box">
                        <a href="<c:url value='/course/board'/>"><span class="viewmore">더보기 ></span></a>
                    </div>
                </div>
                <div class="courseList-box">
                    <c:forEach items="${exhbnList}" var="exhbn" end="3">
                        <div class="course-item">
                            <div>
                                <a href="/detail/${exhbn.exhbnId}"><img class="coursepost-thumb" src="${exhbn.exhbnImgUrl}" alt="전시포스터"></a>
                            </div>
                            <div class="coursepost-box">
                                <span class="ex-title">${exhbn.exhbnTitle}</span>
                                <span class="like-logo"><i class="fa-solid fa-thumbs-up"></i><br>123</span>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </main>

        <!-- bottom 이동 -->
        <c:import url="/WEB-INF/views/layout/bottom.jsp" />
    </div>
</body>
</html>
