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
    <th>번호</th>
    <th>유저</th>
    <th>카테고리</th>
    <th>제목</th>
    <th>좋아요</th>
    <th>생성일</th>
    <th>수정일</th>
    <th>이벤트 시작일</th>
    <th>이벤트 종료일</th>
    <th>상태</th>
  </tr>
<c:forEach items="${notes}" var="note">
  <tr>
    <td>${note.exhbnId}</td>
    <td>${note.userId}</td>
    <td>${note.category}</td>
    <td>${note.noteTitle}</td>
    <td>${note.noteCommentNum}</td>
    <td>${note.noteCreatedDate}</td>
    <td>${note.noteUpdatedDate}</td>
    <td>${note.eventStartDate}</td>
    <td>${note.eventEndDate}</td>
    <td>${note.pageViewState}</td>
  </tr>
</c:forEach>
</table>
