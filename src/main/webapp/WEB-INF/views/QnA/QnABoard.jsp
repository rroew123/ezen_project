<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://kit.fontawesome.com/9af1085f00.js"
	crossorigin="anonymous"></script>
	<style>
.Cside {
	position: fixed;
	right: 1.5%;
	top: 68%;
	cursor: pointer;
	font-size: 45px;
	width: 90px;
}
</style>
<body>
<%@ include file="QnA_Top.jsp" %>
	<div class="container">
		<div>
			<table style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						
						<th style="background-color: #eeeeee; text-align: center;"><b>번호</b></th>
						<th style="background-color: #eeeeee; text-align: center;"><b>카테고리</b></th>
						<th style="background-color: #eeeeee; text-align: center;"><b>제목</b></th>
						<th style="background-color: #eeeeee; text-align: center;"><b>작성자</b></th>
					
					</tr>
				</thead>
				<tbody>
					<c:forEach var="num" items="${list}">
						<tr>
							<td>${num.qnaNum}</td>	
							<td>${num.qnaCat}</td>
							<td><a href="/QnA/QnAPage?qnaNum=${num.qnaNum}">${num.brdTitle}</a></td>
							<td>${num.memId}</td>
							<%-- <td><a href="/QnA/QnAPage?=${boardInfo.QnANum }">boardInfo.title</a></td> --%>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="pageInfo_wrap">
			<div class="pageInfo_area">
				<ul id="pageInfo" class="pageInfo">
					<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
						<li class="pageInfo_btn"><a href="/QnA/QnABoard?pageNum=${num}">${num}</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}"/>
		<input type="hidden" name="amount" value="${pageMaker.cri.amount}"/>
		 <!-- 이전페이지 버튼 -->
                <c:if test="${pageMaker.prev}">
                    <li class="pageInfo_btn previous"><a href="/QnA/QnABoard?pageNum=${pageMaker.startPage-1}">Previous</a></li>
                </c:if>
                
                
                <!-- 다음페이지 버튼 -->
                <c:if test="${pageMaker.next}">
                    <li class="pageInfo_btn next"><a href="/QnA/QnABoard?pageNum=${pageMaker.endPage + 1 }">Next</a></li>
                </c:if>   
			<div class="Cside">
		<i class="fa-regular fa-circle-up" value="Top" onclick="clickTop()"></i>
		<a href="/member/shoppingcart"><i class="fa-sharp fa-solid fa-cart-shopping"></i></a>
		<a href="/member/customer"><i class="fa-sharp fa-solid fa-user-tie"></i></a>
		<a href="/QnA/QnABoard"><i class="fa-solid fa-circle-question"></i></a>
		<i class="fa-regular fa-circle-down" value="Last" onclick="clickLast()"></i>
	</div>
			<a href="/QnA/QnA_Write">글쓰기</a>
		</div>
	</div>
	
	<script>
 
    
	$(".pageInfo a").on("click", function(e){
		 e.preventDefault();
	     moveForm.find("input[name='pageNum']").val($(this).attr("href"));
	     moveForm.attr("action", "/QnA/QnABoard");
	     moveForm.submit();
	});
</script>
</body>
</html>
