<%--
  Created by IntelliJ IDEA.
  User: yeoub
  Date: 2022-08-17
  Time: 오후 5:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="<c:url value='/tools/reset.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/common.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/note/detail.css'/>">
    <script src="<c:url value='/tools/jquery-3.6.0.min.js'/>"></script>
    <script src="<c:url value='/js/note/detail.js'/>"></script>
    <script src="https://kit.fontawesome.com/8ab5776cfb.js" crossorigin="anonymous"></script><!-- 아이콘 -->
    <title>Title</title>
</head>
<body>
<c:import url="/WEB-INF/views/layout/top.jsp"></c:import>
<div class="wrapper">

    <section>
        <div class="filter_box">
            <div class="back">
                <i class="fa-solid fa-arrow-left fa-2xl"></i>
            </div>
            <div class="write_box">
                <input id="write_btn" class="write_btn" type="button" value="수정">
            </div>
        </div>
        <div class="content">
            <div class="scrap">
                <div class="like"><i id="like" class="fa-solid fa-heart"></i>7</div>
                <div><i class="fa-solid fa-message"></i>5</div>
            </div>
            <div class="summary">
                <div class="title">
                    SpringBoot에서 비동기 Multi-thread 개발
                </div>
                <div class="info">
                    by&nbsp;<div class="username">username</div>&nbsp;&middot;&nbsp;<div class="createdAt">08-17</div>
                </div>
                <div class="content-body">
                    <article class="content-text" itemprop="articleBody">
                        <p style="margin-bottom:0px;padding:0px;border:0px;font-size:0px;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 )">
                            <span style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-size:15px;line-height:inherit;vertical-align:baseline">일반적으로 클라이언트와 통신하는 어플리케이션 서버에서 스레드(thread)를 사용하는 건 흔한 일입니다 </span>
                        </p>
                        <p style="margin-bottom:0px;padding:0px;border:0px;font-size:0px;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 )">
                            <span style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-size:15px;line-height:inherit;vertical-align:baseline">접속한 여러개의 각 클라이언트가 요청하는 Request에 대하여 각각 스레드를 생성하여 비동기로 처리하여 시스템 자원 활용을 높이고 빠른 응답처리를 해야하기 때문입니다  </span>
                        </p>
                        <p style="margin-bottom:0px;padding:0px;border:0px;font-size:0px;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 )">
                            <span style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-size:15px;line-height:inherit;vertical-align:baseline">( 프로세스와 스레드를 알고 계신 것으로 알고 일단 설명은 여기까지 패쓰....  난 아직 모르는게 많다 ) </span>
                        </p>
                        <p style="margin-bottom:0px;padding:0px;border:0px;font-size:0px;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 )">
                            <span style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-size:15px;line-height:inherit;vertical-align:baseline">​</span>
                        </p>
                        <p style="margin-bottom:0px;padding:0px;border:0px;font-size:0px;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 )">
                            <span style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-size:15px;line-height:inherit;vertical-align:baseline">그런데 Spring 기반의 WAS 서버를 개발하는 과정에서 이런 스레드를 개발해야 될거라고는 생각지 못했습니다</span>
                        </p>
                        <p style="margin-bottom:0px;padding:0px;border:0px;font-size:0px;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 )">
                            <span style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-size:15px;line-height:inherit;vertical-align:baseline">왜냐하면 Front-end에서 Back-end의 Spring 프레임웍에 Request를 날리면 Controller에서 이를 받아줌과 동시에 스레드가 생성되고 알아서 Service의 비지니스로직을 돌려주기 때문입니다 </span>
                        </p>
                        <p style="margin-bottom:0px;padding:0px;border:0px;font-size:0px;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 )">
                            <span style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-size:15px;line-height:inherit;vertical-align:baseline">그래서 여러개의 Front-end가 Spring 기반의 WAS 서버에 Request를 던지더라도 응답이 오는 이유는 Spring의 Controller 자체가 멀티스레드로 동작하기 때문입니다   </span>
                        </p>
                        <p style="margin-bottom:0px;padding:0px;border:0px;font-size:0px;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 )">
                            <span style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-size:15px;line-height:inherit;vertical-align:baseline">따라서 개발자는 스레드를 몰라도 Controller에 RequestMapping으로 URI를 정의해주고 개발만 하면 되기 때문에 복붙(복사해서 붙여넣기)으로 열심히 개발해도 잘 돌아가게 마련이죠 </span>
                        </p>
                        <p style="margin-bottom:0px;padding:0px;border:0px;font-size:0px;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 )">
                            <span style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-size:15px;line-height:inherit;vertical-align:baseline">그러나 이 한계를 뛰어넘어야 하는 문제가 생겼습니다 </span>
                        </p>
                        <p style="margin-bottom:0px;padding:0px;border:0px;font-size:0px;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 )">
                            <span style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-size:15px;line-height:inherit;vertical-align:baseline"> </span>
                        </p>
                        <p style="margin-bottom:0px;padding:0px;border:0px;font-size:0px;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 )">
                            <span style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-size:15px;line-height:inherit;vertical-align:baseline">Front-end가 Back-end에 거대한 XML파일을 업로드하면 이 거대한 XML 파일을 파싱해서 Mybatis를 활용하여  insert 쿼리문으로 DB에 때려넣어야 하는 상황입니다  ( XML 파일도 거대하지만 45개의 테이블에 150만개 이상의 레코드를 insert 해야하는 데이터가 무지하게 많은 상황이다 )</span>
                        </p>
                        <p style="margin-bottom:0px;padding:0px;border:0px;font-size:0px;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 )">
                            <span style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-size:15px;line-height:inherit;vertical-align:baseline">​</span>
                        </p>
                        <p style="margin-bottom:0px;padding:0px;border:0px;font-size:0px;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 )">
                            <span style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-size:15px;line-height:inherit;vertical-align:baseline">무식하게 그냥 돌려봤더니 Network Error가 발생했습니다    프론트엔드와 백엔드 간 HTTP 접속 유지시간을 초과한 것입니다   물론 구글링해서 Front-end와 Back-end의 HTTP 접속유지시간을 늘리는 방법도 있겠지만 뭔가 무식해 보여서 spring에서 지원하는 @EnableAsync 어노테이션을 활용한 멀티스레드 개발로 도전해 보았습니다 </span>
                        </p>
                        <p style="margin-bottom:0px;padding:0px;border:0px;font-size:0px;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 )">
                            <span style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-size:15px;line-height:inherit;vertical-align:baseline">이 글은 Spring 환경에서의 Async(비동기)와 Thread에 관한 글입니다 </span>
                        </p>
                        <p></p>
                        <div style="margin:0px;padding:0px;border:0px;font:inherit;vertical-align:baseline"></div>
                        <p></p>
                        <p></p>
                        <p style="margin:0px;padding:0px;border:0px;font-style:normal;font-weight:400;font-size:0px;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 );letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;word-spacing:0px;background-color:rgb( 255 , 255 , 255 )">
                            <span style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-size:15px;line-height:inherit;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline"><br></span>
                        </p>
                        <p style="margin:0px;padding:0px;border:0px;font-style:normal;font-weight:400;font-size:0px;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 );letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;word-spacing:0px;background-color:rgb( 255 , 255 , 255 )">
                            <span style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-size:15px;line-height:inherit;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline"> 추가적으로 설명하자면 기존의 HTTP 프로토콜로는 WAS 서버의 수시로 변화되는 진행율을 알려줄수가 없어서 웹소켓을 사용하여 별도의 채널로 Front-end에 진행율을 쏴주는 방식으로 개발하게 되었습니다 </span>
                        </p>
                        <p style="margin:0px;padding:0px;border:0px;font-style:normal;font-weight:400;font-size:0px;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 );letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;word-spacing:0px;background-color:rgb( 255 , 255 , 255 )">
                            <span style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-size:15px;line-height:inherit;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline">다행히도 일단은 해결은 되었는데 DB의 Transaction이 스레드를 사용하는데 장애가 발생했습니다</span>
                        </p>
                        <p style="margin:0px;padding:0px;border:0px;font-style:normal;font-weight:400;font-size:0px;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 );letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;word-spacing:0px;background-color:rgb( 255 , 255 , 255 )">
                            <span style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-size:15px;line-height:inherit;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline"><br></span>
                        </p>
                        <p style="margin:0px;padding:0px;border:0px;font-style:normal;font-weight:400;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 );letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;word-spacing:0px;background-color:rgb( 255 , 255 , 255 )">
                            <span style="font-size:15px">잠시 해본거지만 결론은 아래와 같습니다 </span></p>
                        <p style="margin:0px;padding:0px;border:0px;font-style:normal;font-weight:400;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 );letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;word-spacing:0px;background-color:rgb( 255 , 255 , 255 )">
                            <span style="font-size:15px"><br></span></p>
                        <p style="margin:0px;padding:0px;border:0px;line-height:1.8;vertical-align:baseline;text-align:left;text-indent:0px;background-color:rgb( 255 , 255 , 255 )"><span
                                style="color:rgb( 119 , 119 , 119 );font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';font-size:15px">1. WAS 서버에 수행이 오래걸리는 작업을 Async 형태로 수행이 가능하다
</span></p>
                        <p style="margin:0px;padding:0px;border:0px;line-height:1.8;vertical-align:baseline;text-align:left;text-indent:0px;background-color:rgb( 255 , 255 , 255 )"><span
                                style="color:rgb( 119 , 119 , 119 );font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';font-size:15px">2. Front-end에서 요청을 Controller에 보내고 바로 결과를 리턴받지만 최종 결과에 대한 리턴은 아니다
</span></p>
                        <p style="margin:0px;padding:0px;border:0px;line-height:1.8;vertical-align:baseline;text-align:left;text-indent:0px;background-color:rgb( 255 , 255 , 255 )"><span
                                style="color:rgb( 119 , 119 , 119 );font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';font-size:15px">3. Async 형태로 수행중인 작업에 대해서 별도의 웹소켓을 통하여 Front-end에 전송하도록 한다
</span></p>
                        <p style="margin:0px;padding:0px;border:0px;line-height:1.8;vertical-align:baseline;text-align:left;text-indent:0px;background-color:rgb( 255 , 255 , 255 )">
                            <span style="color:rgb( 119 , 119 , 119 );font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';font-size:15px">4. Transaction 으로 처리되는 비지니스 로직을 스레드로 처리하는 경우 먼저 수행하는 Transaction이 끝날때까지 스레드 대기가 생기는 것을 확인했다 이에대한 해결방법을 찾아야 겠다</span><br>
                        </p>
                        <p style="margin:0px;padding:0px;border:0px;font-style:normal;font-weight:400;font-size:0px;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 );letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;word-spacing:0px;background-color:rgb( 255 , 255 , 255 )">
                            <span style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-size:15px;line-height:inherit;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline"><br></span>
                        </p>
                        <p style="margin:0px;padding:0px;border:0px;font-style:normal;font-weight:400;font-size:0px;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 );letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;word-spacing:0px;background-color:rgb( 255 , 255 , 255 )">
                            <span style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-size:15px;line-height:inherit;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline">아래 글은 이에 대한 상세한 내용입니다    혹시라도 저처럼 WAS 서버에서 대기시간이 긴 로직을 수행해야 하는 경우 참고가 되었으면 좋겠습니다 </span>
                        </p>
                        <p style="margin:0px;padding:0px;border:0px;font-style:normal;font-weight:400;font-size:0px;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 );letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;word-spacing:0px;background-color:rgb( 255 , 255 , 255 )">
                            <span style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-size:15px;line-height:inherit;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline"><br></span>
                        </p>
                        <p style="margin:0px;padding:0px;border:0px;font-style:normal;font-weight:400;font-size:0px;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 );letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;word-spacing:0px;background-color:rgb( 255 , 255 , 255 )">
                            <span style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-size:15px;line-height:inherit;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline"><a
                                    href="https://blog.naver.com/karisma70kr/222842789318" rel="nofollow">==&gt; 블로그 이동하기 </a> <a
                                    href="https://blog.naver.com/karisma70kr/222842789318" target="_blank"
                                    title="새창으로 열기"><i class="fa fa-external-link"></i></a></span></p>
                        <p style="margin:0px;padding:0px;border:0px;font-style:normal;font-weight:400;font-size:0px;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 );letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;word-spacing:0px;background-color:rgb( 255 , 255 , 255 )">
                            <span style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-size:15px;line-height:inherit;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline"><br></span>
                        </p>
                        <p style="margin:0px;padding:0px;border:0px;font-style:normal;font-weight:400;font-size:0px;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 );letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;word-spacing:0px;background-color:rgb( 255 , 255 , 255 )">
                            <span style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-size:15px;line-height:inherit;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline">참고로 위 블로그 내용은 아래를 참고하여 개발하였습니다&nbsp;</span>
                        </p>
                        <p style="margin:0px;padding:0px;border:0px;font-style:normal;font-weight:400;font-size:0px;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 );letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;word-spacing:0px;background-color:rgb( 255 , 255 , 255 )">
                            <span style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-size:15px;line-height:inherit;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline"><a
                                    href="https://cofs.tistory.com/318" rel="nofollow">https://cofs.tistory.com/318</a> <a
                                    href="https://cofs.tistory.com/318" target="_blank" title="새창으로 열기"><i
                                    class="fa fa-external-link"></i></a></span></p>
                        <p style="margin:0px;padding:0px;border:0px;font-style:normal;font-weight:400;font-size:0px;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 );letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;word-spacing:0px;background-color:rgb( 255 , 255 , 255 )">
                            <span style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-size:15px;line-height:inherit;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline"><br></span>
                        </p>
                        <p style="margin:0px;padding:0px;border:0px;font-style:normal;font-weight:400;font-size:0px;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 );letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;word-spacing:0px;background-color:rgb( 255 , 255 , 255 )">
                            <span style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-size:15px;line-height:inherit;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline"><br></span>
                        </p>
                        <p style="margin:0px;padding:0px;border:0px;font-style:normal;font-weight:400;font-size:0px;line-height:1.8;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline;color:rgb( 119 , 119 , 119 );letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;word-spacing:0px;background-color:rgb( 255 , 255 , 255 )">
                            <span style="margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-size:15px;line-height:inherit;font-family:'se-nanumgothic' , , 'nanumgothic' , sans-serif , 'meiryo';vertical-align:baseline">오늘도 즐코딩하시길..... </span>
                        </p>
                    </article>
                </div>
                <div class="comment-write">
                  <textarea id="story" name="story"
                            rows="5" cols="33">
Leave a Comment...
</textarea>
                    <input class="post" type="button" value="Post">
                </div>
                <div class="comment-num">2 comments</div>
                <div class="comment-list">
                    <div class="comment">
                        <div class="comment-scrap">
                            <div class="like"><i class="fa-solid fa-heart" style="color:Red"></i>7</div>
                        </div>
                        <div class="comment-summary">
                            <div class="info">
                                <div class="username">username</div>&nbsp;&middot;&nbsp;
                                <div class="createdAt">08-17</div>
                            </div>
                            <div class="comment-body">
                                고생하셨습니다~!^^
                            </div>
                        </div>
                    </div>
                    <div class="comment">
                        <div class="comment-scrap">
                            <div class="like"><i class="fa-solid fa-heart" style="color:Black"></i>7</div>
                        </div>
                        <div class="comment-summary">
                            <div class="info">
                                <div class="username">username</div>&nbsp;&middot;&nbsp;
                                <div class="createdAt">08-17</div>
                            </div>
                            <div class="comment-body">
                                재미난 프로젝트군요!! 화이팅입니다 :)
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<c:import url="/WEB-INF/views/layout/bottom.jsp"></c:import>
</body>
</html>
