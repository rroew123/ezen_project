<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/9af1085f00.js"
	crossorigin="anonymous"></script>
	 <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<style>
.container {
	margin: 0 auto;
	text-align: center;
}


.contents{
margin-top: 50px;

}



.Cnotice {
	background: #d3d3d3;
	height: 80px;
	width: 500px;
	margin-left: 750px;
	line-height: 80px;
}





table, th {
	border: 1px solid black;
}

table {
	margin-left: auto;
	margin-right: auto;
}

/* ==================== contents ========================= */


</style>

<body>
<%@ include file="../home_top.jsp" %>


	<div class="container">
		
		<div class="contents">
		<%@ include file="./subpage/customerFAQ.jsp" %> 
		<div style="height: 500px">
    <%
        int faqCate = 1;
  
    %>
    <jsp:include page="subpage/subpage.jsp"></jsp:include>
</div>
		
					
			</div>
			
	
			
			<div class="Cnotice">
				<h1>공지사항</h1>
			</div>
			<p>쇼핑몰 공지사항에 대해 알려드립니다</p>
			<table>
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center; width: 30px;">번호</th>
						<th style="background-color: #eeeeee; text-align: center; width : 500px;">제목</th>
						
						
					</tr>
				</thead>
				<br />
				<tbody>
				<c:forEach var="ntc" items="${ntc}">
					<tr>
					<th>${ntc.ntcNum}</th>
					<th><a href="/member/ntcCntxt?ntcNum=${ntc.ntcNum}">${ntc.ntcTitle}</a></th>
					
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

		
	 
	<script>
	
    function clickTop() {
      window.scrollTo(0,0);
    }
    
    function clickLast() {
        window.scrollTo(99999,99999);
      }
    
	</script>
</body>
</html>