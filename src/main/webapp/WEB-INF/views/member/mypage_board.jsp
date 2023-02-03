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
.container{
	margin-top: 50px;
}
 table{
 	width: 200px;
 	height : 200px;
 }
 
 tr td{
 	border: 1px solid black;
 }
</style>
</head>
<body>
<%@ include file="../home_top.jsp" %>
<div class="container">

 <table>
				<thead>
				<h1>내 게시물 보기</h1>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;"><b>번호</b></th>
						<th style="background-color: #eeeeee; text-align: center;"><b>카테고리</b></th>
						<th style="background-color: #eeeeee; text-align: center;"><b>제목</b></th>
						
					
					</tr>
				</thead>
				<tbody>
					<c:forEach var="row" items="${row}">
						<tr>
							<td>${row.qnaNum}</td> 	
							<td>${row.qnaCat}</td>
							<td>${row.brdTitle}</td>
						</tr>
						<tr>
						<td colspan="3" style="background-color: #eeeeee; text-align: center;"><b>내용</b></td>
						</tr>
						<tr>
							<td colspan="3" style="height:100px;">${row.brdCntxt}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<button onclick="location.href='/member/mypage'">마이페이지</button>
	</div>		
</body>
</html>