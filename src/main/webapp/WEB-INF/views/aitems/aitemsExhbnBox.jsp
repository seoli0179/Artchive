<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:forEach var="exhbn" items="${exhbnList}">
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
