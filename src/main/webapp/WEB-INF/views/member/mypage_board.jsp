<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
</style>
</head>
<body>
<%@ include file="member_top.jsp" %>
<button onclick="location.href='/member/mypage'">마이페이지</button>
 <table style="text-align: cursor: help;nter; border: 1px solid #dddddd">
				<thead>
					<tr>
						
						<th style="background-color: #eeeeee; text-align: center;"><b>번호</b></th>
						<th style="background-color: #eeeeee; text-align: center;"><b>카테고리</b></th>
						<th style="background-color: #eeeeee; text-align: center;"><b>제목</b></th>
						<th style="background-color: #eeeeee; text-align: center;"><b>작성자</b></th>
					
					</tr>
				</thead>
				<tbody>
					<c:forEach var="row" items="${row}">
						<tr>
							<td>${row.qnaNum}</td> 	
							<td>${row.qnaCat}</td>
							<td>${row.brdTitle}</td>
							<td>${row.memId}</td>
							<%-- <td><a href="/QnA/QnAPage?=${boardInfo.QnANum }">boardInfo.title</a></td> --%>
						</tr>
					</c:forEach>
				</tbody>
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