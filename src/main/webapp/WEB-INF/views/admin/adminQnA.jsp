<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA 목록페이지</title>
<link rel="stylesheet" href="/resources/basic.css"/>
</head>
<body>
<%@ include file="top.jsp" %>
<h1>QnA 목록</h1>
<table border="1" width="600px">
	<tr>
		<th>번호</th>
		<th>카테고리</th>
		<th>제목</th>
		<th>작성자</th>
		<th>작성일</th>
	</tr>
	<c:forEach var="row" items="${list}">
	<tr>
		<td>${row.qnaNum}</td>
		<td>${row.qnaCat}</td>
		<td><a href="${path}/admin/adminQnAViewProc?qnaNum=${row.qnaNum}">${row.brdTitle}</a>
		<c:if test="${row.ansCntxt != null}">
		<span style="color:red;">(답변완료)</span>
		</c:if>
		</td>
		<td>${row.memId}</td>
		<td>${row.writDate}</td>
	</tr>
	</c:forEach>
</table>
<%@ include file="bottom.jsp" %>
</body>
</html>