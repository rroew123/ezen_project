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
 <form method="get" action="/myPage_deleteProc">
 <p>진짜 삭제하시겠습니까?</p>
 <p>다신 되돌릴수 없습니다</p>
 <a href="/member/myPage_deleteProc?memId=${userInfo.memId}">삭제</a>
 </form>

</body>
</html>