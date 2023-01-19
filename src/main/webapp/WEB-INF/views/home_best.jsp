<%@ page language="java" contentType="text/html; charset=UTF-8"
	trimDirectiveWhitespaces="true" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>home_best</title>
<style>
header {
	outline: 1px dotted red;
	line-height: 70px;
	height: 75px;
	position: sticky;
	top: 10px;
	left: 30px;
	background: linear-gradient(to bottom, #FFC6B8, #FFDBDD);
	z-index: 1;
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

.sangpum1 li {
	margin-bottom: 40px;
	margin-left: 10px;
	border: 1px solid black;
	list-style: none;
	height: 300px;
	width: 300px;
	display: inline-block;
}

.sangpum1 li:hover {
	background: linear-gradient(to bottom, #FCE2FC, #CBD68F);
}
</style>
</head>
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
			<a href="http://localhost/member/login">로그인</a> <a
				href="http://localhost/member/memberjoin">회원가입</a> <a href="">고객센터</a>
			<a href="/member/shoppingcart">장바구니</a> <a href="">추천</a>
		</div>
		<div class="sangpum1">
			<ul>
				<li>상품1</li>
				<li>상품2</li>
				<li>상품3</li>
				<li>상품4</li>
				<li>상품5</li>
				<li>상품6</li>
				<li>상품7</li>
				<li>상품8</li>
				<li>상품9</li>
				<li>상품10</li>
				<li>상품11</li>
				<li>상품12</li>
				<li>상품13</li>
				<li>상품14</li>
				<li>상품15</li>
			</ul>
		</div>
	</header>
</body>
</html>
