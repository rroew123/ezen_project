<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>${mem.memName} 님의 회원정보</p>
	<p>아이디 : ${mem.memId}</p>
	<p>휴대폰 번호 : ${mem.phone}</p>
	<p>회원가입 날짜 : ${mem.regdate}</p>
	<a href="/">돌아가기</a>
</body>
</html>