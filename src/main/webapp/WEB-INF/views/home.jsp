
<%@ page language="java" contentType="text/html; charset=UTF-8"
	trimDirectiveWhitespaces="true" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<link rel="stylesheet" href="./test" type="text/css" />
<title>home</title>
<script src="https://kit.fontawesome.com/9af1085f00.js"
	crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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


.Cheader {
	text-align: center;
}

.Cheader a:hover {
	background: #FFB48F;
	color: #fff;
}

.sangpum1{
	display : inline-block;
	background: linear-gradient(to bottom, #FCE2FC, #CBD68F);
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
			<a href="/?orby=SOLDCNT desc">인기</a> <a href="/?orby=regDate">신상</a> <a href="/?orby=SALERAT desc">세일</a>
		</div>

		
		<div class="sangpum1">
			<c:forEach var="photo" items="${photo}">
				<li><a href="/sangpum/sangpum?sangCode=${photo.sangCode}"><img src="./resources/img/Ezen.png" alt="" style="height: 300px; width: 300px; border: 1px solid black;"/></a>
					<br><span>${photo.sangName}</span>
					<br><span>${photo.price} 원</span>
					<br><span>할인율 : ${photo.saleRat}%</span>
				</li>
			</c:forEach>
		</div>
	</div>
	
	<footer> <%@ include file="home_footer.jsp" %> </footer>

	

</body>
</html>