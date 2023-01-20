<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 페이지</title>
<link rel="stylesheet" href="/resources/basic.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>
<%@ include file="top.jsp" %>
<h1>공지사항 목록</h1>
<button type="button" id="btnWrite">글쓰기</button>
<table border="1" width="600px">
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>작성일</th>
		<th>조회수</th>
	</tr>
	<c:forEach var="row" items="${list}">
	<tr>
		<td>${row.ntcNum}</td>
		<td><a href="${path}/admin/adminNtcViewProc?ntcNum=${row.ntcNum}">${row.ntcTitle}</a></td>
		<td>${row.relDate}</td>
		<td>${row.viewCnt}</td>
	</tr>
	</c:forEach>
</table>

<script>
	$(document).ready(function(){
		$("#btnWrite").click(function(){
			location.href="${path}/admin/adminNtcAdd";
		});
	});
</script>
<%@ include file="bottom.jsp" %>
</body>
</html>



