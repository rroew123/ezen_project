<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/9af1085f00.js"
	crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<style>


header {
	height: 150px;
	top: 10px;
	left: 30px;
	background: #fde2e7;
	z-index: 1;
	margin-bottom: 10px;
}

.logo {
	padding: 0.9px;
	float: left;
	margin-left: 100px;
	border-radius: 40%;
}

.logo img{
	width : 200px;
	height : 130px;
	border-radius: 50px;
	padding : 10px;
}

.Search {
	height: 38px;
	width: 1000px;
	margin-left: 220px;
	line-height: 100px;
	
	
}

.SearchInput {
	width: 500px;
	height: 30px;
	border-radius: 10px;
	border:none;
	outline: solid 5px pink ;
}

.Searchri {
	
	list-style-type: none;
	
	margin-left: 1700px;
}

.Searchri a:hover {
	color: #fff;
}

li {
	display: inline;
	
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
	z-index: 1;
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
	z-index: 3;
}

.main2>li {
	position: relative;
	z-index: 3;
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
	z-index: 3;
}

.main3>li a:hover {
	background: #f9c6cf;
	color: #fff;
}

.main3>li {
	position: relative;
	z-index: 3;
}

.main4{
	position: absolute;
	top: 0;
	background: #fde2e7;
	width: 200px;
	left: -9999px;
	z-index: 2;
	
}

.main4>li a:hover {
	background: #f9c6cf;
	color: #fff;
	
}

.main3>li:hover .main4 {
	left: 100%;
	
}
.Cside {
	position: fixed;
	right: 1.5%;
	top: 68%;
	cursor: pointer;
	font-size: 45px;
	width: 90px;
	z-index: 2;
}



</style>
<body>
<header>
		<div class="logo">
			<a href="/"><img src="/resources/img/Ezen.png" /></a>
		</div>
		<div class="Search">
			<form action="/sangpum/search">
				<input type="text" class="SearchInput" name="sangName" placeholder="검색 기능" />
				<input type="submit">
				
			</form>
			</div>
			
		
		<div class="Searchri">

			<c:if test="${userInfo != null && userInfo.membership < 8}">

			
				<li><a href="/member/mypage"><i class="fa-solid fa-user" style="font-size:30px;"></i></a></li>&nbsp;
				<li><a href="/member/shoppingcart?memId=${userInfo.memId}"><i class="fa-solid fa-cart-shopping" style="font-size:30px;"></i></a></li>&nbsp;
				<li><a href="/member/logout.do"><i class="fa-solid fa-power-off" style="font-size:30px;"></i></a></li>&nbsp;
				<li><a href="/member/customer?faqCate=1"><i class="fa-solid fa-circle-info" style="font-size:30px;"></i></a></li>
				
				
				<br />

				<span>${userInfo.memName} 님 환영합니다.<br />

				</span>

			</c:if>
			<c:if test="${userInfo== null}">
				
				<li><a href="/member/login"><i class="fa-solid fa-power-off" style="font-size:30px;"></i></a></li>
				<li><a href="/member/memberjoin"><i class="fa-solid fa-user-plus" style="font-size:30px;"></i></a></li>
				<li><a href="/member/customer?faqCate=1"><i class="fa-solid fa-circle-info" style="font-size:30px;"></i></a></li>
			</c:if>
			<c:if test="${userInfo.membership > 8}">
				<span>${userInfo.memName} 님 환영합니다</span>
				<li><a href="/admin/admin"><i class="fa-solid fa-wrench" style="font-size:30px;"></i></a></li>
				<li><a href="/member/logout.do"><i class="fa-solid fa-power-off" style="font-size:30px;"></i></a></li>
			</c:if>
			
		</div>
	<div id="menu">
		<ul class="main1">
			<li><a>메뉴</a>
				<ul class="main2"> 	
					<c:forEach var="typeOne" items="${mainTypeOne}">
						<li><a href="/sangpum/category?sangCode=${typeOne.sangCode}">${typeOne.cateName}</a>
							<ul class="main3" id="${typeOne.sangCode}">
							
								<c:set var="typeOne" value="listA${typeOne.sangCode}"/>
								<c:forEach var="typeTwo" items="${requestScope[typeOne]}">
									<li><a href="/sangpum/category?sangCode=${typeTwo.sangCode}">${typeTwo.cateName}</a>
										<ul class="main4">
										
											<c:set var="typeTwo" value="listB${typeTwo.sangCode}" />
											<c:forEach var="typeThree" items="${requestScope[typeTwo]}">
												<li><a href="/sangpum/category?sangCode=${typeThree.sangCode}">${typeThree.cateName}</a></li>
											</c:forEach>
					
										</ul>
									</li>
								</c:forEach>
								
							</ul>
						</li>
					</c:forEach>
					</ul>
				</li>
			<c:forEach var="typeTwo" items="${listA1}">
				<li><a href="/sangpum/category?sangCode=${typeTwo.sangCode}">${typeTwo.cateName}</a>
					<ul class="main2">
						<c:set var="typeTwo" value="listB${typeTwo.sangCode}" />
						<c:forEach var="typeThree" items="${requestScope[typeTwo]}">
							<li>
								<a href="/sangpum/category?sangCode=${typeThree.sangCode}">${typeThree.cateName}</a>
							</li>
						</c:forEach>
					</ul>
				</li>
			</c:forEach>
		</ul>
	</div>
	</header>
	<div class="Cside">
		<i class="fa-regular fa-circle-up" value="Top" onclick="clickTop()"></i>
		<a href="/member/shoppingcart?memId=${userInfo.memId}"><i class="fa-sharp fa-solid fa-cart-shopping"></i></a>
		<a href="/member/customer?faqCate=1"><i class="fa-sharp fa-solid fa-user-tie"></i></a>
		<a href="/QnA/QnABoard"><i class="fa-solid fa-circle-question"></i></a>
		<i class="fa-regular fa-circle-down" value="Last" onclick="clickLast()"></i>
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