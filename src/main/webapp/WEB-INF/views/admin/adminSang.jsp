<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품 목록 페이지</title>
<link rel="stylesheet" href="/resources/basic.css"/>
</head>
<body>
<%@ include file="top.jsp" %>
<h1>상품 목록</h1>
	<input type="button" value="상품등록" onclick="location.href='${path}/admin/adminSangAdd'">
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
        <c:forEach var="row" items="${list}">
        <tr>
        	<td>${row.sangCode}</td>
        	<td><a>상품이미지</a></td>
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
<%@ include file="bottom.jsp" %>
</body>
</html>