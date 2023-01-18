<%@ page language="java" contentType="text/html; charset=UTF-8"
	trimDirectiveWhitespaces="true" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<table style="text-align: center; border: 1px solid #dddddd">
			<thead>
				<tr>

					<th style="background-color: #eeeeee; text-align: center;"><b>번호</b></th>
					<th style="background-color: #eeeeee; text-align: center;"><b>카테고리</b></th>
					<th style="background-color: #eeeeee; text-align: center;"><b>제목</b></th>
					<th style="background-color: #eeeeee; text-align: center;"><b>작성자</b></th>
					<th style="background-color: #eeeeee; text-align: center;"><b>작성 내용</b></th>

				</tr>
			</thead>
			<tbody>
					<tr>
						<td>${qnavo.qnaNum}</td>
						<td>${qnavo.qnaCat}</td>
						<td>${qnavo.brdTitle}</td>
						<td>${qnavo.memId}</td>
						<td>${qnavo.brdCntxt}</td>
						</tr>
			</tbody>
		</table>
	</div>

	<a href="/QnA/QnA_deleteProc?qnaNum=${qnavo.qnaNum}">삭제</a>
	<a href="/QnA/QnA_Update">수정</a>
	<a href="/QnA/QnABoard">목록보기</a>


</body>
</html>