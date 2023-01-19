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
<form method="post" action="/myPage_UpdateProc">
	<table>
		<thead>
			<tr>
				<th>회원아이디</th>
				<th>이메일</th>
				<th>성함</th>
				<th>비밀번호</th>
				<th>전화번호</th>
				<th>생년월일</th>
				<th>성별</th>
				<th>주소</th>
				<th>마케팅수신동의</th>
			</tr>
			
			<tr>
				<th><input type="text" placeholder="회원아이디" name="memId"/></th>
				<th><input type="text" placeholder="이메일" name="email"/></th>
				<th><input type="text" placeholder="성함" name="memName"/></th>
				<th><input type="text" placeholder="비밀번호" name="memPwd"/></th>
				<th><input type="text" placeholder="전화번호" name="phone"/></th>
				<th><input type="text" placeholder="생년월일" name="birthday"/></th>
				<th><input type="text" placeholder="성별" name="gender"/></th>
				<th><input type="text" placeholder="주소" name="address"/></th>
				<th><input type="radio" name="markAgree" value="1"/>
					<input type="radio" name="markAgree" value="2"/>
				</th>
			</tr>
			
		</thead>
	</table>
</form>
<input type="submit" value="수정" onClick="location.href='/member/mypage'"/>
</body>
</html> 