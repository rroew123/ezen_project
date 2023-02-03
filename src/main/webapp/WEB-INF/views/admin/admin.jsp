<%@ page language="java" contentType="text/html; charset=UTF-8"
   trimDirectiveWhitespaces="true" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 메인 페이지</title>
<link rel="stylesheet" href="/resources/basic.css"/>
</head>
<body>
<%@ include file="top.jsp" %>

<h3>재고가 20개 이하인 상품리스트</h3>
    <table border="1" width="700px">
        <tr>
            <th><b>상품코드</b></th>
            <th><b>상품이미지</b></th>
            <th><b>가격</b></th>
            <th><b>상품이름</b></th>
            <th><b>판매량</b></th>
            <th><b>남은재고</b></th>
            <th><b>평점</b></th>
            <th><b>할인율</b></th>
            <th><b>상품정보</b></th>
			
        </tr>
        <c:forEach var="row" items="${sangpumlist}">
        <tr>
        	<td>${row.sangCode}</td>
        	<td ><img src="/resources/img/Ezen.png" width="50px" height="50px" alt="상품 이미지"></td>
        	<td>${row.price}</td>
        	<td>${row.sangName}</td>
        	<td>${row.soldCnt}</td>
        	<td>${row.remStock}</td>
        	<td>${row.rating}</td>
        	<td>${row.saleRat}</td>
        	<td><a href="${path}/admin/adminSangView?sangCode=${row.sangCode}">상품정보</a></td>
        </tr>
        </c:forEach>
</table>

<h3>답변이 되지 않은 QnA리스트</h3>
<table border="1" width="600px">
	<tr>
		<th>번호</th>
		<th>카테고리</th>
		<th>제목</th>
		<th>작성자</th>
		<th>작성일</th>
	</tr>
	<c:forEach var="row" items="${qnalist}">
	<tr>
		<td>${row.qnaNum}</td>
		<td>${row.qnaCat}</td>
		<td><a href="${path}/admin/adminQnAViewProc?qnaNum=${row.qnaNum}">${row.brdTitle}</a>
		</td>
		<td>${row.memId}</td>
		<td>${row.writDate}</td>
	</tr>
	</c:forEach>
</table>


<%@ include file="bottom.jsp" %>
</body>
</html>