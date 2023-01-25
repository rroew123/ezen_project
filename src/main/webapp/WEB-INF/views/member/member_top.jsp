<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	text-align: right;
	margin-right: 100px;
}

.Searchri a:hover {
	color: #fff;
	background: #67BDCF;
}

li {
	display: inline;
	
}


</style>
<body>
<header>
		<div class="logo">
			<a href="/"><img src="../resources/img/Ezen.png" /></a>
		</div>
		<div class="Search">
			<input type="text" class="SearchInput" placeholder="검색 기능" />
			<a href="" style="font-size:20px;"><i class="fa-solid fa-magnifying-glass"></i></a>
			</div>
			
		
		<div class="Searchri">

			<c:if test="${userInfo != null && userInfo.membership < 8}">

			
				<li><a href="/member/mypage"><i class="fa-solid fa-user" style="font-size:30px;"></i></a></li>&nbsp;
				<li><a href="/member/shoppingcart"><i class="fa-solid fa-cart-shopping" style="font-size:30px;"></i></a></li>&nbsp;
				<li><a href="/member/logout.do"><i class="fa-solid fa-power-off" style="font-size:30px;"></i></a></li>&nbsp;
				<li><a href="/member/customer"><i class="fa-solid fa-circle-info" style="font-size:30px;"></i></a></li>
				
				
				<br />

				<span>${userInfo.memName} 님 환영합니다.<br />

				</span>

			</c:if>
			<c:if test="${userInfo== null}">
				
				<li><a href="/member/login"><i class="fa-solid fa-power-off" style="font-size:30px;"></i></a></li>
				<li><a href="/member/memberjoin"><i class="fa-solid fa-user-plus" style="font-size:30px;"></i></a></li>
				<li><a href="/member/customer"><i class="fa-solid fa-circle-info" style="font-size:30px;"></i></a></li>
			</c:if>
			<c:if test="${userInfo.membership > 8}">
				<span>${userInfo.memName} 관리자님 환영합니다</span>
				<li><a href="/admin/admin"><i class="fa-solid fa-wrench" style="font-size:30px;"></i></a></li>
				<li><a href="/member/logout.do"><i class="fa-solid fa-power-off" style="font-size:30px;"></i></a></li>
			</c:if>
			
		</div>

	</header>
</body>
</html>