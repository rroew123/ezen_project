<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/9af1085f00.js"
	crossorigin="anonymous"></script>
	<style>
.container{
	margin-top: 50px;
 
}
table {
	background: #fde2e7;
	width : 300px;
	height: 300px;
}
</style>
</head>
<body>
<%@ include file="../home_top.jsp" %>
<div class="container">
<form method="post" action="/member/mypage_UpdateProc">
	
	<h1>회원정보 수정</h1>
	<table>
		<thead>
	
			<tr>
				<th><p>이메일</p><input type="text" placeholder="이메일" name="email" value="${userInfo.email}"/></th>
				<tr>
				<th><p>성함</p><input type="text" placeholder="성함" name="memName" value="${userInfo.memName}"/></th>
				</tr>
				<tr>
				<th><p>비밀번호</p><input type="text" placeholder="비밀번호" name="memPwd" value="${userInfo.memPwd}"/></th>
				</tr>
				<tr>
				<th><p>전화번호</p><input type="text" placeholder="전화번호" name="phone" value="${userInfo.phone}"/></th>
				</tr>
				<tr>
				<th><p>주소</p><input type="text" placeholder="주소" name="address" value="${userInfo.address}"/></th>
				</tr>
				<tr>
				<th><p>마케팅수신동의</p><input type="radio" name="markAgree" value="1"/>
					<input type="radio" name="markAgree" value="2"/>
				</th>
				</tr>
				<tr>
				<th><input type="hidden" name="memId" value="${userInfo.memId}"/></th>
			</tr>
			
		</thead>
	</table>
	<input type="submit" value="수정" />
	
	
</form>
<button onclick="location.href='/member/mypage'">마이페이지</button>
</div>
</body>

</html> 