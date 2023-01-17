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
	<form action="./findPWProc" method="post">
		<input type="text" name="email" value="" class="form_input member"
			placeholder="이메일" autocomplete="off"> <input type="text"
			name="memId" value="" class="form_input member" placeholder="아이디"
			autocomplete="off"> <input type="submit" value="찾기">



		<c:if test="${member.memPwd != null}">

			<span>고객님의 ${member.memPwd} 를 찾았습니다<br />
			</span>
		</c:if>
		<c:if test="${member.memPwd == null}">
		
		</c:if>
	</form>
</body>
</html>