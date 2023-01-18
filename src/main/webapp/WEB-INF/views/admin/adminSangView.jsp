<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 정보 상세페이지</title>
<link rel="stylesheet" href="/resources/basic.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>
<%@ include file="top.jsp" %>
<h2>상품 정보 상세</h2>
<form name="form2" method="post">
	<table border="1" width="480px">
		<tr>
			<td>상품코드</td>
			<td><input name="sangCode" value = "${dto.sangCode}"></td>
		</tr>
		<tr>
			<td>상품이미지</td>
			<td><img src="https://dummyimage.com/100x100/000/fff"></td>
		</tr>	
		<tr>
			<td>상품이름</td>
			<td><input name="sangName" value = "${dto.sangName}" ></td>
		</tr>
		<tr>
			<td>대분류</td>
			<td><input name="typeOne" value = "${dto.typeOne}" ></td>
		</tr>
		<tr>
			<td>중분류</td>
			<td><input name="typeTwo" value = "${dto.typeTwo}" ></td>
		</tr>
		<tr>
			<td>소분류</td>
			<td><input name="typeThree" value = "${dto.typeThree}"></td>
		</tr>
		<tr>
			<td>판매량</td>
			<td><input name="soldCnt" value = "${dto.soldCnt}" readonly="readonly"></td>
		</tr>
		<tr>
			<td>남은재고</td>
			<td><input name="remStock" value = "${dto.remStock}" ></td>
		</tr>
		<tr>
			<td>평점</td>
			<td><input name="rating" value = "${dto.rating}" readonly="readonly"></td>
		</tr>
		<tr>
			<td>총 평점</td>
			<td><input name="totalRat" value = "${dto.totalRat}" readonly="readonly"></td>
		</tr>
		<tr>
			<td>평점 개수</td>
			<td><input name="ratingCnt" value = "${dto.ratingCnt}" readonly="readonly"></td>
		</tr>
		<tr>
			<td>할인율</td>
			<td><input name="saleRat" value = "${dto.saleRat}" ></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="수정" id="btnUpdate">
				<input type="button" value="삭제" id="btnDelete">
				<input type="button" value="목록" id="btnHome">
			</td>
		</tr>
	</table>
</form>
<%@ include file="bottom.jsp" %>
<script>
	$(document).ready(function(){
		$("#btnUpdate").click(function(){
			document.form2.action="${path}/admin/adminSangUpdateProc";
			document.form2.submit();
		});
	});
	 
	$(document).ready(function(){
		$("#btnDelete").click(function(){
			document.form2.action="${path}/admin/adminSangDeleteProc";
			document.form2.submit();
		});
	});
	
	$(document).ready(function(){
		$("#btnHome").click(function(){
			document.form2.action="${path}/admin/adminSang";
			document.form2.submit();
		});
	});
</script>
</body>

</html>