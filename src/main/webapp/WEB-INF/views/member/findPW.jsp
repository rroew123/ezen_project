<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script src="https://kit.fontawesome.com/9af1085f00.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<%@ include file="../home_top.jsp" %>
	<h2>비밀번호찾기</h2>
	

		
			<fieldset>
				<legend>비밀번호 찾기</legend>

				
					<form action="./findPWProc" method="post">
						<input type="text" name="email" value="" class="form_input member" placeholder="이메일" autocomplete="off">
						<input type="text" name="memId" value="" class="form_input member" placeholder="아이디" autocomplete="off">
						<input type="text" name="memName" value="" class="form_input member" placeholder="성함" autocomplete="off">
						<input type="text" name="phone" value="" class="form_input member" placeholder="전화번호" autocomplete="off">
						<input type="submit" value="찾기">

						<c:if test="${member.memPwd != null}">

							<span>고객님의 ${member.memPwd} 를 찾았습니다<br />
							</span>
						</c:if>
						<c:if test="${member.memPwd == null}">

						</c:if>
					</form>
				
				
			</fieldset>
		
		<div class="Cside">
		<i class="fa-regular fa-circle-up" value="Top" onclick="clickTop()"></i>
		<a href="./shoppingcart"><i class="fa-sharp fa-solid fa-cart-shopping"></i></a>
		<a href="./customer"><i class="fa-sharp fa-solid fa-user-tie"></i></a>
		<a href="/QnA/QnABoard"><i class="fa-solid fa-circle-question"></i></a>
		<i class="fa-regular fa-circle-down" value="Last" onclick="clickLast()"></i>
	</div>
	

</body>
</html>