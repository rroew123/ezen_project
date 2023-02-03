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
.container{
	margin-top: 50px;
}

table{
	width : 500px;
	height: 100px;
	font-size: 15px;
}
 .pageInfo{
      list-style : none;
      display: inline-block;
    margin: 50px 0 0 100px;      
  }
  .pageInfo li{
      float: left;
    font-size: 20px;
    margin-left: 18px;
    padding: 7px;
    font-weight: 500;
  }
 a:link {color:black; text-decoration: none;}
 a:visited {color:black; text-decoration: none;}
 a:hover {color:black; text-decoration: underline;}
</style>
<body>
<%@ include file="../home_top.jsp" %>
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
