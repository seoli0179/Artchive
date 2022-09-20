<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-09-20
  Time: 오후 4:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<table>
  <tr>
    <th>아이디</th>
    <th>제목</th>
    <th>지역</th>
    <th>전시장</th>
    <th>전시 시작일</th>
    <th>전시 종료일</th>
    <th>좋아요</th>
    <th>Type</th>
  </tr>
<c:forEach items="${exhbns}" var="exhbn">
  <tr>
    <td>${exhbn.exhbnId}</td>
    <td>${exhbn.exhbnTitle}</td>
    <td>${exhbn.exhbnArea}</td>
    <td>${exhbn.exhbnPlace}</td>
    <td>${exhbn.exhbnStartDate}</td>
    <td>${exhbn.exhbnEndDate}</td>
    <td>${exhbn.exhbnLike}</td>
    <td>${exhbn.exhbnType}</td>
  </tr>
</c:forEach>
</table>
