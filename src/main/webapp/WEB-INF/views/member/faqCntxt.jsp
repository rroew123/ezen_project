<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table, th {
	border: 1px solid black;
}

table {
	margin-left: auto;
	margin-right: auto;
}

</style>
</head>
<body>
	
	<table>
		<tr>
		<th>번호</th>
		<th>카테고리</th>
		<th>제목</th>
		
		</tr>
		
		<tr>
			<th>${txt.faqNum}</th>
			<th>${txt.faqCat}</th>
			<th>${txt.faqTitle}</th>
			
		</tr>
		<tr>
		<th colspan="3">내용</th>
		</tr>
		<tr>
		<th colspan="3">${txt.faqCntxt}</th>
		</tr>
	</table>
	
</body>
</html>