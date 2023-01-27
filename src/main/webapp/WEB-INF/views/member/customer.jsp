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

/* ==================container ======================= */

/* ==================== header ========================= */
.side {
	float: left;
	border: 3px solid green;
	height: 1770px;
}

/* ==================== side ========================= */
.contents {
	border: 3px solid gray;
}

.scrollBtn {
	
}

.Cnotice {
	background: #d3d3d3;
	height: 80px;
	width: 700px;
	margin-left: 310px;
	line-height: 80px;
}

.Cside {
	position: fixed;
	right: 1.5%;
	top: 65%;
	cursor: pointer;
	font-size: 45px; 
	width: 100px;
}

.Csearch {
	background-color: #f5f5f5;
	height: 80px;
	width: 750px;
	margin-left: 310px;
	line-height: 80px;
}

.SearchInput {
	width: 500px;
	height: 30px;
}

.btn {
	border: 0 none;
	background-color: transparent;
	cursor: pointer;
	display: block;
	font-size: 15px;
	padding: 16px 45px 14px 20px;
	margin: auto;
}

table, th {
	border: 1px solid black;
}

table {
	margin-left: auto;
	margin-right: auto;
}

/* ==================== contents ========================= */
.footer {
	border: 1px solid black;
}

/* ==================== footer ========================= */
</style>

<body>
<%@ include file="./../home_top.jsp" %>
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
			
			<div class="Cside">
		<i class="fa-regular fa-circle-up" value="Top" onclick="clickTop()"></i>
		<a href="/member/shoppingcart"><i class="fa-sharp fa-solid fa-cart-shopping"></i></a>
		<a href="/member/customer"><i class="fa-sharp fa-solid fa-user-tie"></i></a>
		<a href="/QnA/QnABoard"><i class="fa-solid fa-circle-question"></i></a>
		<i class="fa-regular fa-circle-down" value="Last" onclick="clickLast()"></i>
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
						<th style="background-color: #eeeeee; text-align: center; width: 30px;">조회수</th>
						
						
					</tr>
				</thead>
				<br />
				<tbody>
				<c:forEach var="ntc" items="${ntc}">
					<tr>
					<th>${ntc.ntcNum}</th>
					<th><a href="/member/ntcCntxt?ntcNum=${ntc.ntcNum}">${ntc.ntcTitle}</a></th>
					<th>${ntc.viewCnt}</th>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

		<div class="footer">
			<p>푸터입니다</p>
		</div>
	
	<script>
	/* 상단 고정 위치이동 버튼 */
	const scrollMove = (event) => {
        if (event.target.dataset.direction === 'top')
            window.scrollTo(0, 20);
        else if (event.target.dataset.direction === 'as')
            window.scrollTo(0, 530);
        else if (event.target.dataset.direction === 'answer')
            window.scrollTo(0, 1000);
        else if (event.target.dataset.direction === 'last')
            window.scrollTo(0, document.querySelector('body').scrollHeight);
    }

    document.querySelector('.scrollBtn').addEventListener('click', scrollMove);
    
    /* 최상단 최하단으로 이동 버튼 */
    function clickTop() {
      window.scrollTo(0,0);
    }
    
    function clickLast() {
        window.scrollTo(99999,99999);
      }
    
    
    function dis(){
      if($('#dis').css('display') == 'none'){
      $('#dis').show();
    }else{
      $('#dis').hide();
    }
    }
    
	</script>
</body>
</html>