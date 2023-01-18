<%@page import="java.util.List"%>
<%@page import="co.kr.ezen_project.vo.SangCodeSpecVO"%>
<%@page import="co.kr.ezen_project.service.SangpumServiceImpl"%>
<%@page import="co.kr.ezen_project.service.SangpumService"%>
<%@page import="co.kr.ezen_project.dao.SangpumDAO"%>
<%@page import="co.kr.ezen_project.vo.SangpumVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<%-- <jsp:include page="header.jsp"/> --%>
	<div class="jumbotron">
		<div class="">
			<h1 class="">상품 정보</h1>
		</div>
	</div>
	
	<div class="container">
		<div class="">
			<div class="">
				<h3>${SangpumInfo.sangName}</h3>
				<p>가격 : ${SangpumInfo.price}</p>
				<p>상품코드 : ${SangpumInfo.sangCode}</p>
				<c:forEach var="vo" items="${SangCodeSpecVO}">
					<span>${vo.sangColor}</span>&nbsp
				</c:forEach>
				<c:forEach var="vo" items="${SangCodeSpecVO}">
					<span>${vo.sangSize}</span>&nbsp
				</c:forEach>
				<p> </p>
				<p> 개</p>	<!-- 갯수 -->
				<h4>총  원</h4>	<!-- 총 가격 -->
				<p> <a href="#" class="btn btn-info"> 상품 주문 &raquo;</a></p>
					<a href="./products.jsp" class="btn btn-secondary">상품
					 목록 &raquo;</a>
			</div>
		</div>
	</div>
	
	
	<%-- <jsp:include page="footer.jsp"/> --%>

</body>
</html>