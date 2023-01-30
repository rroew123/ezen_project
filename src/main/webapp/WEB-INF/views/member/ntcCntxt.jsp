<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
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

caption {
    font-weight: bold;
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
	<th>제목</th>
	<th>시간</th>
</tr>
		<tr>
			<td>${txt.ntcNum}</td>
			<td>${txt.ntcTitle}</td>
			<td><fmt:formatDate pattern="yyyy-MM-dd" value="${txt.relDate}"/></td>
		</tr>
		<tr>
		<td colspan="3">내용</td>
		</tr>
		<tr>
		<td colspan="3">${txt.ntcCntxt}</td>
		</tr>
	</table>
</body>
</html>