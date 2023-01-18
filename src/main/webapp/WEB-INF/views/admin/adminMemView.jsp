<%@ page language="java" contentType="text/html; charset=UTF-8"
   trimDirectiveWhitespaces="true" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보 상세 페이지</title>
<link rel="stylesheet" href="/resources/basic.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>
<%@ include file="top.jsp" %>
<h2>회원 정보 상세</h2>
<form name="form1" method="post">
	<table border="1" width="480px">
		<tr>
			<td>아이디</td>
			<td><input name="memId" value = "${dto.memId}" readonly="readonly"></td>
		</tr>	
		<tr>
			<td>이메일</td>
			<td><input name="email" value = "${dto.email}" ></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input name="memName" value = "${dto.memName}" ></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input name="phone" value = "${dto.phone}" ></td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td><input name="birthday" value = "${dto.birthday}" readonly="readonly"></td>
		</tr>
		<tr>
			<td>성별</td>
			<td><input name="gender" value = "${dto.gender}" ></td>
		</tr>
		<tr>
			<td>주소</td>
			<td><input name="address" value = "${dto.address}" ></td>
		</tr>
		<tr>
			<td>회원등급</td>
			<td><input name="membership" value = "${dto.membership}" ></td>
		</tr>
		<tr>
			<td>마일리지</td>
			<td><input name="mileage" value = "${dto.mileage}" ></td>
		</tr>
		<tr>
			<td>가입날짜</td>
			<td>${dto.regDate}</td>
		</tr>
		<tr>
			<td>최근 방문 날짜</td>
			<td>${dto.lastDate}</td>
		</tr>
		<tr>
			<td>마케팅 동의 여부</td>
			<td><input name="markAgree" value = "${dto.markAgree}" ></td>
		</tr>
		<tr>
			<td>총 주문량</td>
			<td><input name="totalPay" value = "${dto.totalPay}" ></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="수정" id="btnUpdate">
				<input type="button" value="삭제" id="btnDelete">
			</td>
		</tr>
	</table>
</form>
<%@ include file="bottom.jsp" %>
<script>
	$(document).ready(function(){
		$("#btnUpdate").click(function(){
			document.form1.action="/admin/adminMemUpdateProc";
			document.form1.submit();
		});
	});
	 
	$(document).ready(function(){
		$("#btnDelete").click(function(){
			document.form1.action="${path}/admin/adminMemDeleteProc";
			document.form1.submit();
		});
	});
</script>
</body>

</html>