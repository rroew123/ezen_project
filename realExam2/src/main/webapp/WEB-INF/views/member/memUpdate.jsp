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
	<h1></h1>
	<fieldset>
		<legend>${mem.memId}님의 회원 정보 수정하기</legend>
		<form action="/member/memUpdateProc" method="post">
			<input type="hidden" name="memId" value="${mem.memId}"/>
			이름 : <input type="text" name="memName"/> <br/>
			패스워드 : <input type="password" name="memPwd"/> <br/>
			패스워드 확인 : <input type="passwordCheck"/><br/>
			휴대폰폰 번호 : <input type="text" name="phone"/><br/>
			<input type="submit" value="수정하기"/><br/>
			<input type="reset" /> <br>
			<a href="/">돌아가기</a>
		</form>
	</fieldset>
</body>
</html>