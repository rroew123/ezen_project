<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>


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
.container{
	margin-top:  50px;
}
</style>

<%@ include file="../home_top.jsp"%>
<body>
<div class="container">
<h3>결제가 완료 되었습니다</h3>
<br/>
<br/>
<br/>
<p>
pg_token: 311c796e0004618a9537<br/>
주문 번호: 1001<br/>
상품명: 연청 청바지<br/>
상품 수량: 1<br/>
결제 금액: 35000<br/>
결제 방법: CARD<br/>
</p>
</div>
</body>
</html>