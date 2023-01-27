<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/basic.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
</head>
<body>
<%@ include file="top.jsp" %>

<script>
fetch("http://127.0.0.1/admin/yangdoll")
  .then((response) => response.json())
  .then((data) => {
	  console.log(data);
	  console.log('data'+ '를 이용해서 원하는 값을 그래프 함수에 넘겨줘서 그림을 그리게 함...');
  });
</script>



<%@ include file="bottom.jsp" %>

</body>
</html>