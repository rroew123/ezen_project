
<%@ page language="java" contentType="text/html; charset=UTF-8"
	trimDirectiveWhitespaces="true" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<link rel="stylesheet" href="./test" type="text/css" />
<title>home</title>
<script src="https://kit.fontawesome.com/9af1085f00.js"
	crossorigin="anonymous"></script>
</head>

<style>
* {
	text-align: center;
	background: 
}


========================
nav {
	height: 110px;
}

ul {
	list-style: none;
	padding-left: 0px;
}

a{
	text-decoration-line : none; 
}

#menu {
	height: 100px;
	background: #fde2e7;
	z-index: 2;
	padding : 0px;
	font-size: 20px;
}

.main1 {
	width: 700px;
	height: 300px;;
	margin: 0 auto;
	
}

.main1>li {
	float: left;
	width : 100px;
	line-height: 50px;
	text-align: center;
	position: relative;
	
}

.main1>li:hover .main2 {
	left: 0;
	background: #fde2e7;
}

.main1>li a {
	display: block;
}
.main1>li a:hover {
	background: #f9c6cf;
	color: #fff;
	font-weight: bold;
}

.main2 {
	position: absolute;
	top: 50px;
	left: -9999px;
	background: #f9c6cf;
	width: 200px;
	z-index: 2;
}

.main2>li {
	position: relative;
	z-index: 2;
}

.main2>li:hover .main3 {
	left: 100%;
	
}

.main2>li a, .main3>li a {
	border-radius: 10px;
	margin: 10px;
}

.main3 {
	position: absolute;
	top: 0;
	background: #fde2e7;
	width: 200px;
	left: -9999px;
}

.main3>li a:hover {
	background: #f9c6cf;
	color: #fff;
}

=================================
.Content {
	outline: 2px dotted green;
	
}

.slides {
	padding: 0;
	height: 420px;
	display: block;
	margin: 0 auto;
	position: relative;
}
/* 
.slides * {
	user-select: none;
	-ms-user-select: none;
	-moz-user-select: none;
	-khtml-user-select: none;
	-webkit-user-select: none;
	-webkit-touch-callout: none;
}
 */
	.slides input {
		display: none;
	}

/* .slide-container {
	display: block;
} */

.slide {
	top: 0;
	opacity: 0;
	display: block;
	position: absolute;
	transform: scale(0);
	transition: all .7s ease-in-out;
}

/* .slide img {
	width: 100%;
	height: 100%;
} */

.nav label {
	
	width : 200px;
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

/* .slide:hover+.nav label {
	opacity: 0.5;
}
 */
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
	border-radius: 100%;
	display: inline-block;
	background-color: rgba(0, 0, 0, 0.6);
}

.nav-dots .nav-dot:hover {
	cursor: pointer;
	background-color: rgba(0, 0, 0, 0.8);
}

/* input#img-1:checked ~ .nav-dots label#img-dot-1, input#img-2:checked ~
	.nav-dots label#img-dot-2, input#img-3:checked ~ .nav-dots label#img-dot-3,
	input#img-4:checked ~ .nav-dots label#img-dot-4, input#img-5:checked ~
	.nav-dots label#img-dot-5, input#img-6:checked ~ .nav-dots label#img-dot-6
	{
	background: rgba(0, 0, 0, 0.8);
} */

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
	text-align: center; . dropdown { position : relative;
	display: inline-block;
}
</style>
</head>
<body>

	<%@ include file="home_top.jsp" %>

	<div id="menu">

		<ul class="main1">
			<li><a href="#">메뉴</a>
				<ul class="main2">
					<li><a href="#">여성</a>
						<ul class="main3">
							<li><a href="#">아우터</a></li>
							<li><a href="#">상의</a></li>
							<li><a href="#">하의</a></li>
							<li><a href="#">원피스</a></li>
							<li><a href="#">스커트</a></li>
							<li><a href="#">신발</a></li>
						</ul></li>

					<li><a href="#">남성</a>
						<ul class="main3">
							<li><a href="#">상의</a></li>
							<li><a href="#">하의</a></li>
							<li><a href="#">신발</a></li>
							<li><a href="#">니트</a></li>
							<li><a href="#">부츠</a></li>
							<li><a href="#">팬츠</a></li>
						</ul></li>
				</ul></li>
			<li><a href="#">아우터</a>
				<ul class="main2">
					<li><a href="#">코트</a></li>
					<li><a href="#">라이더자켓</a></li>
					<li><a href="#">가디건</a></li>
					<li><a href="#">아노락</a></li>
					<li><a href="#">무스탕</a></li>
					<li><a href="#">트레이닝자켓</a></li>
				</ul></li>
			<li><a href="#">상의</a>
				<ul class="main2">
					<li><a href="#">니트</a></li>
					<li><a href="#">셔츠</a></li>
					<li><a href="#">맨투맨</a></li>
					<li><a href="#">티셔츠</a></li>
					<li><a href="#">후드티</a></li>
					<li><a href="#">블라우스</a></li>
				</ul></li>
			<li><a href="#">하의</a>
				<ul class="main2">
					<li><a href="#">숏팬츠</a></li>
					<li><a href="#">레깅스</a></li>
					<li><a href="#">슬랙스</a></li>
					<li><a href="#">코튼팬츠</a></li>
					<li><a href="#">청바지</a></li>
					<li><a href="#">점프슈트</a></li>
				</ul></li>

			<li><a href="#">원피스</a>
				<ul class="main2">
					<li><a href="#">미니원피스</a></li>
					<li><a href="#">맥시원피스</a></li>
					<li><a href="#">롱원피스</a></li>
					<li><a href="#">미디원피스</a></li>
				</ul></li>

			<li><a href="#">스커트</a>
				<ul class="main2">
					<li><a href="#">미니스커트</a></li>
					<li><a href="#">미디스커트</a></li>
					<li><a href="#">롱스커트</a></li>
				</ul></li>

			<li><a href="#">신발</a>
				<ul class="main2">
					<li><a href="#">구두</a></li>
					<li><a href="#">로퍼</a></li>
					<li><a href="#">샌들</a></li>
					<li><a href="#">슬리퍼</a></li>
					<li><a href="#">힐</a></li>
					<li><a href="#">플랫슈즈</a></li>
					<li><a href="#">부츠</a></li>
				</ul></li>
		</ul>
	</div>

	<div class="Content">
		<ul class="slides">
			<input type="radio" name="radio-btn" id="img-1" checked />
			<li class="slide-container">
				<div class="slide">
					<img
						src="./resources/img/img1.jpg" style="height : 430px; width : 2010px;"/>
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
						src="./resources/img/img2.jpg" style="height : 430px; width : 2010px;"/>
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
						src="./resources/img/img3.jpg" style="height : 430px; width : 2010px;"/>
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
						src="./resources/img/img4.jpg" style="height : 430px; width : 2010px;"/>
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
						src="./resources/img/img5.jpg" style="height : 430px; width : 2010px;"/>
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
						src="./resources/img/img6.jpg" style="height : 430px; width : 2010px;"/>
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
		<a href="./member/shoppingcart"><i class="fa-sharp fa-solid fa-cart-shopping"></i></a>
		<a href="./member/customer"><i class="fa-sharp fa-solid fa-user-tie"></i></a>
		<a href="/QnA/QnABoard"><i class="fa-solid fa-circle-question"></i></a>
		<i class="fa-regular fa-circle-down" value="Last" onclick="clickLast()"></i>
	</div>
	<footer> <%@ include file="home_footer.jsp" %> </footer>

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