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

</head>
<style>
.container{
	margin-top: 50px;
}
</style>
<body>
<%@ include file="../home_top.jsp" %>
<div class="container">
		<div class="row">
		<form method="post" action="/QnA/UpdateProc">
			<table class="table" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="2" style="background-color: #eeeeee; text-align: center;">게시판 수정 양식</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" placeholder="글 제목" name="brdTitle" style="width:300px;"/></td>
					</tr>	
						
						<tr>
						<td><textarea placeholder="게시물No." name="qnaNum" style="height:20px; width:300px;"/></textarea></td>
					</tr>
						<tr>
						<td><textarea placeholder="글쓴이" name="memId" style="height:20px; width:300px;"/></textarea></td>
					</tr>
						<tr>
						<td><textarea placeholder="카테고리" name="qnaCat" style="height:20px; width:300px;"/></textarea></td>
					</tr>
					<tr>
						<td><textarea placeholder="본문 내용" name="brdCntxt" style="height:100px; width:300px;"/></textarea></td>
					</tr>
				</tbody>
				
			</table>
			<input type="submit" value="업데이트"/>
			</form>
	
			<button onclick="location.href='/QnA/QnABoard'">목록보기</button>
		</div>
	</div>
</body>
</html>