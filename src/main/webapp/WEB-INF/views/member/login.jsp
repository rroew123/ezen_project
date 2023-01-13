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
header {
	outline: 1px dotted red;
	line-height: 70px;
	height: 75px;
	position: sticky;
	top: 15px;
	left: 30px;
	background: linear-gradient(to bottom, #FFC6B8, #FFDBDD);
	z-index: 1;
	margin-bottom: 10px;
}

.logo {
	padding: 0.9px;
	background: linear-gradient(to bottom, #FCE2FC, #FF82C3);
	float: left;
	margin-left: 100px;
	border-radius: 40%;
}

.Search {
	height: 38px;
	width: 640px;
	margin-left: 220px;
	line-height: 65px;
}

.SearchInput {
	width: 500px;
	height: 30px;
}

.Searchri {
	text-align: right;
	margin-right: 200px;
	line-height: 10px;
}

.Searchri a:hover {
	color: #fff;
	background: #67BDCF;
}

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

.Cside {
	position: fixed;
	right: 1%;
	top: 60%;
	cursor: pointer;
	font-size: 44px;
	width: 77px;
}
</style>
<body>
	<header>
		<div class="logo">
			<a href="http://localhost/">쇼핑몰 이름</a>
		</div>
		<div class="Search">
			<input type="text" class="SearchInput" placeholder="검색 기능" />
			<button>검색</button>
		</div>
		<div class="Searchri">
			<a href="/member/login">로그인</a> 
			<a href="/member/memberjoin">회원가입</a> 
			<a href="/member/customer">고객센터</a> 
			<a href="/member/shoppingcart">장바구니</a> 
			<a href="">추천</a>
		</div>
	</header>
	<fieldset>
		<legend>회원로그인</legend>
		<div class="fld">
			<label>아이디</label> <input type="text" name="id" value=""
				class="form_input member" placeholder="아이디" autocomplete="off">
		</div>
		<div class="fld">
			<label>비밀번호</label> <input type="password" name="passwd" value=""
				class="form_input member" placeholder="비밀번호" autocomplete="off">
		</div>
		<div class="fld" style="margin-bottom: 17px;">
			<input type="checkbox" name="saveid" value="Y" class="member">
			<label
				style="display: inline-block; vertical-align: middle; margin-right: 4px; margin-bottom: 1px;">아이디
				저장</label> <input type="checkbox" name="autoLogin" value="1" class="member"
				style="margin-right: 4px;"> <label
				style="display: inline-block; vertical-align: middle; margin-right: 4px; margin-bottom: 1px;">자동로그인</label>
		</div>
		<span class="memberbtn"><input type="submit" value="로그인"></span>
		<ul class="find_remove">
			<li><a href="/member/findID">아이디/비밀번호 찾기</a></li>
			<li><a href="/memberjoin">회원가입</a></li>
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
	<div class="Cside">
		<i class="fa-regular fa-circle-up" value="Top" onclick="clickTop()"></i>
		<a href="http://localhost/shoppingcart"><i
			class="fa-sharp fa-solid fa-cart-shopping"></i></a> 
			<a href="http://localhost/member/customer"><i class="fa-sharp fa-solid fa-user-tie"></i></a> 
			<i class="fa-regular fa-clock"></i>
			<i class="fa-regular fa-circle-down"
			value="Last" onclick="clickLast()"></i>
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
