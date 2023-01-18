<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록 페이지</title>
<link rel="stylesheet" href="/resources/basic.css"/>
</head>
<body>
<%@ include file="top.jsp" %>
<h2>상품등록폼</h2>
<form name="form2" method="post" action="${path}/admin/adminInsertProc">
	<table border="1" width="400px">
		<tr>
			<td>상품코드</td>
			<td><input name="sangCode"></td>
		</tr>
		<tr>
			<td>상품이미지</td>
			<td><input type="file" name="attach"/></td>
		</tr>
		<tr>
			<td>상품이름</td>
			<td><input name="sangName"></td>
		</tr>
		<tr>
			<td>대분류</td>
			<td><input name="typeOne"></td>
		</tr>
		<tr>
			<td>중분류</td>
			<td><input name="typeTwo"></td>
		</tr>
		<tr>
			<td>소분류</td>
			<td><input name="typeThree"></td>
		</tr>
		<tr>
			<td>남은재고</td>
			<td><input name="remStock"></td>
		</tr>
		<tr>
			<td>할인율</td>
			<td><input name="saleRat"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="확인">
			<input type="reset" value="취소">
		</tr>
	</table>

</form>
<%@ include file="bottom.jsp" %>
</body>
</html>