<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th style="background-color: #eeeeee; text-align: center;">번호</th>
			<th style="background-color: #eeeeee; text-align: center;">제목</th>
			<th style="background-color: #eeeeee; text-align: center;">내용</th>
		</tr>
		<c:forEach var="sub" items="${sub}">
			<tr>
				<th>${sub.faqNum}</th>
				<th><a href="/member/customer/faqCntxt">${sub.faqTitle}</a></th>
				<th>${sub.faqCntxt}</th>
			</tr>
		</c:forEach>
	</table>
</body>
</html>