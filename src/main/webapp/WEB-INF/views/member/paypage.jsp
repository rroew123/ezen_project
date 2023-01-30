<%@ page language="java" contentType="text/html; charset=UTF-8"
	trimDirectiveWhitespaces="true" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table {
    width: 700px;
    text-align: center;
    border: 1px solid #fff;
    border-spacing: 1px;
    font-family: 'Cairo', sans-serif;
  margin: auto;
}



table td {
    padding: 10px;
    background-color: #eee;
}

table th {
    background-color: #333;
    color: #fff;
    padding: 10px;
}
</style>
<body>
<table>
<tr>
<tr>
<th>성함</th>
<th>번호</th>
<th>주소</th>
<th>배송요청사항</th>
</tr>
</tr>
<tr>
<td>${userInfo.memName}</td>	
<td>${userInfo.phone}</td>
<td>${userInfo.address}</td>
<td>
	<select name="" id="">
		<option value="1">배송 시 요청사항을 선택해주세요</option>
		<option value="2">부재 시 경비실에 맡겨주세요</option>
		<option value="3">부재 시 택배함에 넣어주세요</option>
		<option value="3">부재 시 집 앞에 놔주세요</option>
		<option value="3">배송 전 연락 바랍니다</option>
		</select>
							</td>
</tr>	
</table>
	<c:forEach var="shop" items="${shop}">
		<table>
			<tr>
				<th>이미지들어가는칸</th>
				<th>상품이름</th>
				<th>사이즈</th>
				<th>상품개수</th>
				<th>색상</th>
				<th>가격</th>
				
			</tr>
			<tr>
				<td><a href="/sangpum/sangpum?sangCode=${shop}"><img
						src="https://dummyimage.com/50x50/000/fff" alt="" /></a></td>
				<td>${shop.sangName}</td>
				<td>${shop.sangSize}</td>
				<td>${shop.sangCnt}</td>
				<td>${shop.sangColor}</td>
				<td>${shop.price}</td>
		</table>
	</c:forEach>
	<button style="margin-left: 1200px;">결제하기</button>
</body>
</html>