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
	margin-left: auto;
	margin-right: auto;
}

</style>
</head>
<body>
	<table>
		<thead>
		<tr>
			<th style="background-color: #eeeeee; text-align: center; width: 30px;">번호</th>
			<th style="background-color: #eeeeee; text-align: center; width : 600px;">제목</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="sub" items="${sub}">
			<tr>
				<th>${sub.faqNum}</th>
				<th><a href="/member/faqCntxt?faqNum=${sub.faqNum}">${sub.faqTitle}</a></th>
				
			</tr>
			
		</c:forEach>
		</tbody>
	</table>
</body>
</html>