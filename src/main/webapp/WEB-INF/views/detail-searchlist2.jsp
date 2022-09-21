<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<input type="hidden" id="maxDataNum" value="${maxDataNum}">		
<div class="list-con">
	<ul class="row">
		<c:forEach var="exhbn" items="${exhbnSearch2}" varStatus="status">
			<li class="cell">
				<div class="img-box">
					<a href="/exhbn/detail/${exhbn.exhbnId}">
					<img src="${exhbn.exhbnImgUrl}" alt=""></a>
				</div>
				<section id="ex-all">
					<div class="ex-place">${exhbn.exhbnPlace}</div>
					<div class="ex-title">${exhbn.exhbnTitle}</div>
					<div class="ex-period"><fmt:formatDate value = "${exhbn.exhbnStartDate}" type ="date" pattern="yyyy.MM.dd"/> ~ <fmt:formatDate value = "${exhbn.exhbnEndDate}" type ="date" pattern="yyyy.MM.dd"/></div>
				</section>
			</li>
		</c:forEach>
		
	</ul>
  <input type="hidden" id="currentpage" value="${currentpage}">

</div>