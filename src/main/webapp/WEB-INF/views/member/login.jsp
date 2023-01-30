<%@ page language="java" contentType="text/html; charset=UTF-8"
	trimDirectiveWhitespaces="true" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>login</title>
<script src="https://kit.fontawesome.com/9af1085f00.js"
	crossorigin="anonymous"></script>
</head>
<style>

.fld {
	display: block;
	margin-inline-start: 2px;
	margin-inline-end: 2px;
	padding-block-start: 0.35em;
	padding-inline-start: 0.75em;
	padding-inline-end: 0.75em;
	padding-block-end: 0.625em;
	min-inline-size: min-content;
	margin: 1em;
}


</style>
<body>
	<%@ include file="../home_top.jsp" %>
	
	<fieldset>
		<legend>회원로그인</legend>
		
		
		
		<form action="/member/loginProc.do" method="post">
		<div class="fld">
			<input type="text" name="memId" value=""
				class="form_input member" placeholder="아이디" autocomplete="off">
		</div>
		<div class="fld">
			<input type="password" name="memPwd" value=""
				class="form_input member" placeholder="비밀번호" autocomplete="off">
		</div>
		<div class="fld" style="margin-bottom: 17px;">
		</div>
		 <c:if test="${msg == false}">
			<p style="color: red;margin-left: 30px;">※입력한 비밀번호가 잘못 되었습니다.</p>
		</c:if>
		
			<input type="submit" name="Id" id="ID" value="로그인" class="form_input member" autocomplete="off">
			
		</form>
		
		
		
		<ul class="find_remove">
			<li><a href="/member/findID">아이디 찾기</a></li>
			<li><a href="/member/findPW">비밀번호 찾기</a></li>
			<li><a href="/member/memberjoin">회원가입</a></li>
		</ul>
	</fieldset>

	<div class="form_nomember form_box">
		<!-- 비회원주문조회폼 -->
		<form name="orderform" method="post" action="/member/order_view.php"
			onsubmit="return order_view();" autocomplete="off">
			<fieldset>
				<legend>비회원 주문조회</legend>
				<div class="fld">
					<label>이름</label> <input type="text" name="ordername" value=""
						class="form_input member" placeholder="이름"
						autocomplete="new-password">
				</div>
				<div class="fld">
					<label>주문번호</label> <input type="text" name="orderno" value=""
						class="form_input member" placeholder="주문번호"
						autocomplete="new-password">
				</div>
				<div class="fld">
					<label>비밀번호</label> <input type="password" name="passwd"
						id="nomember_passwd" value="" class="form_input member"
						placeholder="비밀번호" autocomplete="new-password">
				</div>
				<span class="memberbtn"><input type="submit" value="주문조회"></span>
				<a href=""> <span class="memberbtn white"><input
						type="button" value="주문번호/비밀번호 찾기"></span>
				</a>
			</fieldset>
		</form>
	</div>
	
	<script>
		function clickTop() {
			window.scrollTo(0, 0);
		}

		function clickLast() {
			window.scrollTo(99999, 99999);
		}
	</script>
</body>
</html>
