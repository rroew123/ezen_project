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
	<h1>회원가입</h1>
	<form action="/member/memberJoinProc" method="post">
		아이디 : <input type="text" name="memId"/><br/>
		이름 : <input type="text" name="memName"/><br/>
		패스워드 : <input type="password" name="memPwd"/><br/>
		패스워드 확인 : <input type="passwordCheck"/><br/>
		휴대폰 번호 : <input type="text" name="phone"/><br/>
		<input type="submit" value="회원가입하기"/><br/>
		<input type="reset" />
	</form>
</body>
</html>

