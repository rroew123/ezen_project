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
</body>
</html>