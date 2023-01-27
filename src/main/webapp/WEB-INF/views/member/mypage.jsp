<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://kit.fontawesome.com/9af1085f00.js"
	crossorigin="anonymous"></script>
	<style>
.Cside {
	position: fixed;
	right: 1.5%;
	top: 68%;
	cursor: pointer;
	font-size: 45px;
	width: 90px;
}
table, th , td{
	border: 1px solid black;
}
</style>
<body>
<%@ include file="member_top.jsp" %>
		<a href="/member/mypage">주문내역</a>
		<a href="mypage_board?myBoard=${userInfo.memId}">내 게시물보기</a>
		<a href="/member/mypage_memUpdate?memId=${userInfo.memId}">회원수정</a> 
		<a href="/member/mypage_memDelete?memId=${userInfo.memId}">회원탈퇴</a>
		<a href="/QnA/QnABoard">QnA</a>
			
			<table>
		<tr>
			<th>주문번호</th>
			<th>성함</th>
			<th>결제번호</th>
			<th>상품사이즈</th>
			<th>상품색상</th>
			<th>상품번호</th>
			<th>주문개수</th>
			<th>주문날짜</th>
			<th>주문상태</th>
		</tr>
		<c:forEach var="His" items="${His}">
		<tr>
			<td>${His.orderNum}</td>
			<td>${His.memId}</td>
			<td>${His.payNum}</td>
			<td>${His.sangSize}</td>
			<td>${His.sangColor}</td>
			<td>${His.sangCode}</td>
			<td>${His.sangCnt}</td>
			<td><fmt:formatDate pattern="yyyy-MM-dd" value="${His.ordDate}"/></td>
			<td>${His.ordStat}</td>
		</tr>
		</c:forEach>
	</table>
	<div class="Cside">
		<i class="fa-regular fa-circle-up" value="Top" onclick="clickTop()"></i>
		<a href="./shoppingcart"><i class="fa-sharp fa-solid fa-cart-shopping"></i></a>
		<a href="./customer"><i class="fa-sharp fa-solid fa-user-tie"></i></a>
		<a href="/QnA/QnABoard"><i class="fa-solid fa-circle-question"></i></a>
		<i class="fa-regular fa-circle-down" value="Last" onclick="clickLast()"></i>
	</div>
			
</body>
</html>
