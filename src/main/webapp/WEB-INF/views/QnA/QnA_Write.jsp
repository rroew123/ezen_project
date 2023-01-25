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
<%@ include file="QnA_Top.jsp" %>
<div class="container">
		<div>
		<form method="post" action="/QnA/WriteProc">
			<table class="table" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="2" style="background-color: #eeeeee; text-align: center;">게시판 글쓰기 양식</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" placeholder="글 제목" name="brdTitle"/></td>
					</tr>	
						
						<tr>
						<td><textarea placeholder="게시물No." name="qnaNum" style="height:20px;"/></textarea></td>
					</tr>
						<tr>
						<td><textarea placeholder="글쓴이" name="memId" style="height:20px;"/></textarea></td>
					</tr>
						<tr>
						<td><textarea placeholder="카테고리" name="qnaCat" style="height:20px;"/></textarea></td>
					</tr>
					<tr>
						<td><textarea placeholder="본문 내용" name="brdCntxt" style="height:100px;"/></textarea></td>
					</tr>
				</tbody>
				
			</table>
			<input type="submit" value="글쓰기"/>
			
			</form>
				<div class="Cside">
		<i class="fa-regular fa-circle-up" value="Top" onclick="clickTop()"></i>
		<a href="/member/shoppingcart"><i class="fa-sharp fa-solid fa-cart-shopping"></i></a>
		<a href="/member/customer"><i class="fa-sharp fa-solid fa-user-tie"></i></a>
		<a href="/QnA/QnABoard"><i class="fa-solid fa-circle-question"></i></a>
		<i class="fa-regular fa-circle-down" value="Last" onclick="clickLast()"></i>
	</div>
			<button onclick="location.href='/QnA/QnABoard'">목록보기</button>
			
		</div>
	</div>
</body>
</html>