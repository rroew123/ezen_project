<%@ page language="java" contentType="text/html; charset=UTF-8"
   trimDirectiveWhitespaces="true" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>회원 관리 페이지</title>
<link rel="stylesheet" href="/resources/basic.css"/>
</head>
<body>
<%@ include file="top.jsp" %>
<h1>회원 목록</h1>
${map.count}개의 정보가 있습니다.
    <table border="1" width="700px">
        <tr>
            <th><b>아이디</b></th>
            <th><b>이메일</b></th>
            <th><b>이름</b></th>
            <th><b>전화번호</b></th>
            <th><b>생년월일</b></th>
            <th><b>회원등급</b></th>
            <th><b>회원정보</b></th>
        </tr>
        <c:forEach var="row" items="${list}">
        <tr>
        	<td>${row.memId}</td>
        	<td>${row.email}</td>
        	<td>${row.memName}</td>
        	<td>${row.phone}</td>
        	<td>${row.birthday}</td>
        	<td>${row.membership}</td>
        	<td><a href="${path}/admin/adminMemView?memId=${row.memId}">회원정보</a></td>
        </tr>
        </c:forEach>
	</table>
	<form name="form1" method="post" action="${path}/admin/adminMemsearchProc">
		<select name="searchOption">
			<option value="memName" <c:out value="${map.searchOption == 'memName'?'selected':''}"/> >이름</option>
			<option value="memId" <c:out value="${map.searchOption == 'memId'?'selected':''}"/> >아이디</option>
		</select>
		<input type="text" name="keyword">
		<input type="submit" value="검색하기">
	</form>
	
    <%@ include file="bottom.jsp" %>
</body>
</html>
