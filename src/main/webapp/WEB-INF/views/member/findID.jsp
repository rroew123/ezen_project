<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./findIdProc">
		<input type="text" name="email" value=""
				class="form_input member" placeholder="이메일" autocomplete="off">
		<input type="submit" value="찾기">
	</form>
</body>
</html>