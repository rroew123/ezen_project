<%@ page language="java" contentType="text/html; charset=UTF-8"
	trimDirectiveWhitespaces="true" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>home</title>
<script src="https://kit.fontawesome.com/9af1085f00.js"
	crossorigin="anonymous"></script>
</head>
<style>
* {
	text-align: center;
}

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

========================
nav {
	border: 2px solid blue;
	height: 110px;
}

ul {
	list-style: none;
	padding-left: 0px;
}

#menu1 ul li {
	float: left;
	width: 10%;
	height: 40px;
	line-height: 40px;
	text-align: center;
	background: white;
}

#menu1 {
	line-height: 55px;
	height: 55px;
	outline: 1px dotted blue;
	margin: 5px;
}

#menu1 ul li a {
	display: block;
}

#menu1 ul li a:hover {
	background: pink;
	color: #fff;
}

=================================
.Content {
	outline: 2px dotted green;
	height: 300px;
	line-height: 300px;
}

.slides {
	padding: 0;
	width: 609px;
	height: 420px;
	display: block;
	margin: 0 auto;
	position: relative;
}

.slides * {
	user-select: none;
	-ms-user-select: none;
	-moz-user-select: none;
	-khtml-user-select: none;
	-webkit-user-select: none;
	-webkit-touch-callout: none;
}

.slides input {
	display: none;
}

.slide-container {
	display: block;
}

.slide {
	top: 0;
	opacity: 0;
	width: 609px;
	height: 420px;
	display: block;
	position: absolute;
	transform: scale(0);
	transition: all .7s ease-in-out;
}

.slide img {
	width: 100%;
	height: 100%;
}

.nav label {
	width: 200px;
	height: 100%;
	display: none;
	position: absolute;
	opacity: 0;
	z-index: 9;
	cursor: pointer;
	transition: opacity .2s;
	color: #FFF;
	font-size: 156pt;
	text-align: center;
	line-height: 380px;
	font-family: "Varela Round", sans-serif;
	background-color: rgba(255, 255, 255, .3);
	text-shadow: 0px 0px 15px rgb(119, 119, 119);
}

.slide:hover+.nav label {
	opacity: 0.5;
}

.nav label:hover {
	opacity: 1;
}

.nav .next {
	right: 0;
}

input:checked+.slide-container  .slide {
	opacity: 1;
	transform: scale(1);
	transition: opacity 1s ease-in-out;
}

input:checked+.slide-container .nav label {
	display: block;
}

.nav-dots {
	width: 100%;
	bottom: 9px;
	height: 11px;
	display: block;
	position: absolute;
	text-align: center;
}

.nav-dots .nav-dot {
	top: -5px;
	width: 11px;
	height: 11px;
	margin: 0 4px;
	position: relative;
	border-radius: 100%;
	display: inline-block;
	background-color: rgba(0, 0, 0, 0.6);
}

.nav-dots .nav-dot:hover {
	cursor: pointer;
	background-color: rgba(0, 0, 0, 0.8);
}

input#img-1:checked ~ .nav-dots label#img-dot-1, input#img-2:checked ~
	.nav-dots label#img-dot-2, input#img-3:checked ~ .nav-dots label#img-dot-3,
	input#img-4:checked ~ .nav-dots label#img-dot-4, input#img-5:checked ~
	.nav-dots label#img-dot-5, input#img-6:checked ~ .nav-dots label#img-dot-6
	{
	background: rgba(0, 0, 0, 0.8);
}

.Cside {
	position: fixed;
	right: 1.5%;
	top: 68%;
	cursor: pointer;
	font-size: 45px;
	width: 90px;
}

.Cheader {
	text-align: center;
}

.Cheader a:hover {
	background: #FFB48F;
	color: #fff;
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

===========================
footer {
	border: 2px solid skyblue;
	text-align: center;
}
</style>
</head>
<body>

	<header>
		<div class="logo">
			<a href="/">쇼핑몰 이름</a>
		</div>
		<div class="Search">
			<input type="text" class="SearchInput" placeholder="검색 기능" />
			<button>검색</button>
		</div>
		<div class="Searchri">
<%-- 			<%
	String memId = (String)session.getAttribute("memId");
%>
<%
	if(memId!=null){
		%>
		<%=memId %> 님
		<button onclick="location.href='home'">로그아웃</button>
		} --%>
		
		
			<!-- <a href="./member/memberjoin">회원가입</a> 
			<a href="">고객센터</a> 
			<a href="./member/shoppingcart">장바구니</a>
			<a href="">추천</a>
		</div> -->
		<c:if test="${userInfo != null}">

                     <li><a href="#">고객센터</a></li>
                     <li><a href="/mem/wishPage">관심상품</a></li>
                     <li><a href="/mem/myPage">마이페이지</a></li>
                     <li><a href="/member/logout.do">로그아웃</a></li>
                     <br />
                      
                     <span>${userInfo.memName} 님 환영합니다.<br/>
                      
                     </span> 
                       
                  </c:if> 
                  <c:if test="${userInfo== null}">
                     <li><a href="#">고객센터</a></li>
                     <li><a href="/member/login">로그인</a></li> 
                  </c:if>
	</header>

	<div id="menu1">
		<ul>
			<li><a href="#">메뉴</a></li>
			<li><a href="#">베스트</a></li>
			<li><a href="#">신상</a></li>
			<li><a href="#">1+1</a></li>
			<li><a href="#">할인</a></li>
			<li><a href="#">남성</a></li>
			<li><a href="#">여성</a></li>
			<li><a href="#">아우터</a></li>
			<li><a href="#">니트</a></li>
			<li><a href="#">블라우스</a></li>
		</ul>
	</div>

	<div class="Content">
		<ul class="slides">
			<input type="radio" name="radio-btn" id="img-1" checked />
			<li class="slide-container">
				<div class="slide">
					<img
						src="http://farm9.staticflickr.com/8072/8346734966_f9cd7d0941_z.jpg" />
				</div>
				<div class="nav">
					<label for="img-6" class="prev">&#x2039;</label> <label for="img-2"
						class="next">&#x203a;</label>
				</div>
			</li>

			<input type="radio" name="radio-btn" id="img-2" />
			<li class="slide-container">
				<div class="slide">
					<img
						src="http://farm9.staticflickr.com/8504/8365873811_d32571df3d_z.jpg" />
				</div>
				<div class="nav">
					<label for="img-1" class="prev">&#x2039;</label> <label for="img-3"
						class="next">&#x203a;</label>
				</div>
			</li>

			<input type="radio" name="radio-btn" id="img-3" />
			<li class="slide-container">
				<div class="slide">
					<img
						src="http://farm9.staticflickr.com/8068/8250438572_d1a5917072_z.jpg" />
				</div>
				<div class="nav">
					<label for="img-2" class="prev">&#x2039;</label> <label for="img-4"
						class="next">&#x203a;</label>
				</div>
			</li>

			<input type="radio" name="radio-btn" id="img-4" />
			<li class="slide-container">
				<div class="slide">
					<img
						src="http://farm9.staticflickr.com/8061/8237246833_54d8fa37f0_z.jpg" />
				</div>
				<div class="nav">
					<label for="img-3" class="prev">&#x2039;</label> <label for="img-5"
						class="next">&#x203a;</label>
				</div>
			</li>

			<input type="radio" name="radio-btn" id="img-5" />
			<li class="slide-container">
				<div class="slide">
					<img
						src="http://farm9.staticflickr.com/8055/8098750623_66292a35c0_z.jpg" />
				</div>
				<div class="nav">
					<label for="img-4" class="prev">&#x2039;</label> <label for="img-6"
						class="next">&#x203a;</label>
				</div>
			</li>

			<input type="radio" name="radio-btn" id="img-6" />
			<li class="slide-container">
				<div class="slide">
					<img
						src="http://farm9.staticflickr.com/8195/8098750703_797e102da2_z.jpg" />
				</div>
				<div class="nav">
					<label for="img-5" class="prev">&#x2039;</label> <label for="img-1"
						class="next">&#x203a;</label>
				</div>
			</li>

			<li class="nav-dots"><label for="img-1" class="nav-dot"
				id="img-dot-1"></label> <label for="img-2" class="nav-dot"
				id="img-dot-2"></label> <label for="img-3" class="nav-dot"
				id="img-dot-3"></label> <label for="img-4" class="nav-dot"
				id="img-dot-4"></label> <label for="img-5" class="nav-dot"
				id="img-dot-5"></label> <label for="img-6" class="nav-dot"
				id="img-dot-6"></label></li>
		</ul>
		<br />
		<div class="Cheader">
			<a href="">전체</a> <a href="">신상</a> <a href="">베스트</a> <a href="">세일</a>
			<a href="">잘팔리는거</a> <a href="">추천</a>
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
	</div>

	<div class="Cside">
		<i class="fa-regular fa-circle-up" value="Top" onclick="clickTop()"></i>
		<a href="http://localhost/shoppingcart"><i
			class="fa-sharp fa-solid fa-cart-shopping"></i></a> <a
			href="http://localhost/member/customer"><i
			class="fa-sharp fa-solid fa-user-tie"></i></a> <i
			class="fa-regular fa-clock"></i> <i class="fa-regular fa-circle-down"
			value="Last" onclick="clickLast()"></i>
	</div>
	<footer> Footer 영역 </footer>

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