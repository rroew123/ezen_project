<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
    width: 700px;
    text-align: center;
    border: 1px solid #fff;
    border-spacing: 1px;
    font-family: 'Cairo', sans-serif;
  margin: auto;
}



table td {
    padding: 10px;
    background-color: #eee;
}

table th {
    background-color: #333;
    color: #fff;
    padding: 10px;
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
			<td>${txt.faqNum}</td>
			<td>${txt.faqCat}</td>
			<td>${txt.faqTitle}</td>
			
		</tr>
		<tr>
		<td colspan="3">내용</td>
		</tr>
		<tr>
		<td colspan="3">${txt.faqCntxt}</td>
		</tr>
	</table>
	
</body>
</html>