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

</head>
<style>
.container{
	margin-top: 50px;
}
</style>
<body>
<%@ include file="../home_top.jsp" %>
<div class="container">
		<div>
		<form method="post" action="/QnA/WriteProc">
			<table class="table" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="2" style="background-color: #eeeeee; text-align: center;  width:300px;">게시판 글쓰기 양식</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" placeholder="글 제목" name="brdTitle" style=" width:300px;"/></td>
					</tr>	
		
					<tr>
						<td><textarea placeholder="글쓴이" name="memId" style="height:20px;  width:300px;"/>${userInfo.memId}</textarea></td>
					</tr>
					<tr>
						<td>
							<select name="qnaCat" id="">
								<option name="qnaCat" id="">배송</option>
								<option name="qnaCat" id="">반품</option>
								<option name="qnaCat" id="">마일리지</option>
								<option name="qnaCat" id="">쿠폰</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><textarea placeholder="본문 내용" name="brdCntxt" style="height:100px;  width:300px;"/></textarea></td>
					</tr>
				</tbody>
				
			</table>
			<input type="submit" value="글쓰기"/>
			
			</form>
		
			<button onclick="location.href='/QnA/QnABoard'">목록보기</button>
			
		</div>
	</div>
</body>
</html>