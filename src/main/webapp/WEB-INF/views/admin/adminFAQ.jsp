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
<h1>FAQ 목록 페이지</h1>
<table border="1" width="600px">
	<tr>
		<th>번호</th>
		<th>카테고리</th>
		<th>제목</th>
	</tr>
	<c:forEach var="row" items="${list}">
	<tr>
		<td>${row.faqNum}</td>
		<td>${row.faqCat}</td>
		<td><a href="${path}/admin/adminFAQViewProc?faqNum=${row.faqNum}">${row.faqTitle}</a></td>
	</tr>
	</c:forEach>
</table>
<%@ include file="bottom.jsp" %>
</body>
</html>