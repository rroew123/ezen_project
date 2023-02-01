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

.sangpumList{
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
			<c:forEach var="typeTwo" items="${typeTwo}">
				<h1>${typeTwo.cateName}</h1>
			</c:forEach>
			<a href="/sangpum/category?sangCode=${sangCode}">전체</a>
			<a href="/sangpum/category?sangCode=${sangCode}">남자</a>
			<a href="/sangpum/category?sangCode=${sangCode}">여자</a> <br>
			<a href="/sangpum/category?sangCode=${sangCode}">전체</a>
			<c:forEach var="cateList" items="${cateList}">
				<a href="/sangpum/category?sangCode=${cateList.sangCode}">${cateList.cateName}</a>
			</c:forEach>
			
		</div>
			<span class="btnLeft"> <i class="fa-solid fa-arrow-left"></i>
			</span> <span class="btnRight"> <i class="fa-solid fa-arrow-right"></i>
			</span>
			<div class="sangpum">
		<ul>
			<c:forEach var="list" items="${sangList}">
				<span class="sangpumList"><a href="/sangpum/sangpum?sangCode=${list.sangCode}"><img src="/resources/img/Ezen.png" alt="" style="height: 300px; width: 300px; border: 1px solid black;"/></a>
					<br><span>${list.sangName}</span>
					<br><span>${list.price}</span>
					<!--사진이 들어갈 주소  /resource/sangpum/${list.typeOne}/${list.typeTwo}/${list.typeThree}/${list.sangCode}.img-->
				</span>
				
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
