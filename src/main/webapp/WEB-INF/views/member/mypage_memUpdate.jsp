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
.Cside {
	position: fixed;
	right: 1.5%;
	top: 68%;
	cursor: pointer;
	font-size: 45px;
	width: 90px;
}
</style>
</head>
<body>
<%@ include file="member_top.jsp" %>
<form method="post" action="/member/mypage_UpdateProc">
	<table>
		<thead>
			<tr>
				
				<th>이메일</th>
				<th>성함</th>
				<th>비밀번호</th>
				<th>전화번호</th>
				<th>주소</th>
				<th>마케팅수신동의</th>
			</tr>
			
			<tr>
				<th><input type="text" placeholder="이메일" name="email"/></th>
				<th><input type="text" placeholder="성함" name="memName"/></th>
				<th><input type="text" placeholder="비밀번호" name="memPwd"/></th>
				<th><input type="text" placeholder="전화번호" name="phone"/></th>
				<th><input type="text" placeholder="주소" name="address"/></th>
				<th><input type="radio" name="markAgree" value="1"/>
					<input type="radio" name="markAgree" value="2"/>
				</th>
				<th><input type="hidden" name="memId" value="${userInfo.memId}"/></th>
			</tr>
			
		</thead>
	</table>
	<input type="submit" value="수정" />
</form>
<div class="Cside">
		<i class="fa-regular fa-circle-up" value="Top" onclick="clickTop()"></i>
		<a href="./shoppingcart"><i class="fa-sharp fa-solid fa-cart-shopping"></i></a>
		<a href="./customer"><i class="fa-sharp fa-solid fa-user-tie"></i></a>
		<a href="/QnA/QnABoard"><i class="fa-solid fa-circle-question"></i></a>
		<i class="fa-regular fa-circle-down" value="Last" onclick="clickLast()"></i>
	</div>
<button onclick="location.href='/member/mypage'">마이페이지</button>
</body>

</html> 