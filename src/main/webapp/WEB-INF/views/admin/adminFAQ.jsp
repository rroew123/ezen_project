<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ 페이지</title>
<link rel="stylesheet" href="/resources/basic.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>
<%@ include file="top.jsp" %>
<h1>FAQ 목록</h1>
<button type="button" id="btnWrite">글쓰기</button>
<div>
	<c:forEach var="row" items="${list}">

		<div>${row.faqTitle}</div>
		<div>
		<p>${row.faqCntxt}</p>
		<p><a href="${path}/admin/adminFAQViewProc?faqNum=${row.faqNum}">수정</a></p>
		</div>
	</c:forEach>
</div>
<script>
	$(document).ready(function(){
		$("#btnWrite").click(function(){
			location.href="${path}/admin/adminFAQAdd";
		});
	});
</script>
<%@ include file="bottom.jsp" %>
</body>
</html>