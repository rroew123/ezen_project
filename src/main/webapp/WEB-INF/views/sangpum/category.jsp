<%@ page language="java" contentType="text/html; charset=UTF-8"
	trimDirectiveWhitespaces="true" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/9af1085f00.js"
	crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<style>
.btnLeft {
	float: left;
}

.btnRight {
	float: right;
}



/* =======================header =========================== */




/* =========================== nav ============================== */
.Content {
	border: 1px solid purple;
	padding: 20px 40px 10px 200px;
}

.Cheader {
	text-align: center;
	margin-bottom: 100px;
}

.sangpum li {
	margin-bottom: 40px;
	margin-left: 10px;
	border: 1px solid black;
	list-style: none;
	height: 300px;
	width: 300px;
	display: inline-block;
}



/* ===========================content=============================  */
.Footer {
	border: 2px solid skyblue;
	text-align: center;
}

/* ==================================footer==========================  */
}
</style>

<%@ include file="../home_top.jsp" %>
<body>
	
	
	<div class="Content">
		<div class="Cheader">
			<h1>분류 메뉴</h1>
			<a href="/sangpum/category?sangcode=${sangCode}">전체</a>
			<a href="">어쩌구</a>
			<a href="">저쩌구</a>
			<a href="">전체</a>
		</div>
			<span class="btnLeft"> <i class="fa-solid fa-arrow-left"></i>
			</span> <span class="btnRight"> <i class="fa-solid fa-arrow-right"></i>
			</span>
			<div class="sangpum">
		<ul>
			<c:forEach var="list" items="${sangList}">
				<li><a href="/sangpum/sangpum?sangCode=${list.sangCode}">${list.sangName}</a></li>
			</c:forEach>
		</ul>
		</div>

	</div>
	<div class="Footer">
		<img src="/resources/img/footer.png" alt="" />
		<p>푸터입니다</p>
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
