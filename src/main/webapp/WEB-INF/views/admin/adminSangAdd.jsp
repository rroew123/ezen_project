<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록 페이지</title>
<link rel="stylesheet" href="/resources/basic.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>
<%@ include file="top.jsp" %>
<h2>상품등록폼</h2>
<form name="form2" method="post" action="${path}/admin/adminSangInsertProc">
	<table border="1" width="400px">
		<tr>
			<td>상품코드</td>
			<td><input name="sangCode"></td>
		</tr>
		<tr>
			<td>상품이미지</td>
			<td><input type="file" name="attach"/></td>
		</tr>
		<tr>
			<td>가격</td>
			<td><input name="price">원</td>
		</tr>
		<tr>
			<td>상품이름</td>
			<td><input name="sangName"></td>
		</tr>
		<tr>
			<td>대분류</td>
			<td>
				<select name="typeOne" id="typeOne">
					<option value="0">대분류를 선택해주세요</option>
					<option value="2" id="2">여성</option>
					<option value="3" id="3">남성</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>중분류</td>
			<td>
				<select name="typeTwo" id="typeTwo">
					<option value="0">중분류를 선택해주세요</option>
					<option value="1" id="1" class="mall2">아우터</option>
					<option value="2" id="2" class="mall2">상의</option>
					<option value="3" id="3" class="mall2">하의</option>
					<option value="21" id="21" class="mall2">원피스</option>
					<option value="22" id="22" class="mall2">스커트</option>
					<option value="4" id="4" class="mall2">신발</option>
					
					<option value="1" id="1" class="mall3">아우터</option>
					<option value="2" id="2" class="mall3">상의</option>
					<option value="3" id="3" class="mall3">하의</option>
					<option value="4" id="4" class="mall3">신발</option>
								
				</select>
			</td>
		</tr>
		<tr>
			<td>소분류</td>
			<td>
				<select name="typeThree" id="typeThree">
					<option value="0">소분류를 선택해주세요</option>
					<option value="1" id="1" class="opt21">코트</option>
					<option value="2" id="2" class="opt21">라이더자켓</option>
					<option value="3" id="3" class="opt21">가디건</option>
					<option value="4" id="4" class="opt21">아노락</option>
					<option value="5" id="5" class="opt21">무스탕</option>
					<option value="6" id="6" class="opt21">트레이닝 자켓</option>
					
					<option value="1" id="1" class="opt22">니트</option>
					<option value="2" id="2" class="opt22">셔츠</option>
					<option value="3" id="3" class="opt22">맨투맨</option>
					<option value="4" id="4" class="opt22">티셔츠</option>
					<option value="5" id="5" class="opt22">후드티</option>
					<option value="6" id="6" class="opt22">블라우스</option>
					
					<option value="21" id="21" class="opt23">숏팬츠</option>
					<option value="22" id="22" class="opt23">레깅스</option>
					<option value="1" id="1" class="opt23">슬랙스</option>
					<option value="2" id="2" class="opt23">코튼팬츠</option>
					<option value="3" id="3" class="opt23">청바지</option>
					<option value="4" id="4" class="opt23">점프수트</option>
					
					<option value="21" id="21" class="opt221">미니원피스</option>
					<option value="22" id="22" class="opt221">맥시원피스</option>
					<option value="23" id="23" class="opt221">롱원피스</option>
					<option value="24" id="24" class="opt221">미디원피스</option>
					
					<option value="21" id="21" class="opt222">미니스커트</option>
					<option value="22" id="22" class="opt222">미디스커트</option>
					<option value="23" id="23" class="opt222">롱스커트</option>
					
					<option value="1" id="1" class="opt24">구두</option>
					<option value="2" id="2" class="opt24">로퍼</option>
					<option value="3" id="3" class="opt24">샌들</option>
					<option value="4" id="4" class="opt24">슬리퍼</option>
					<option value="5" id="5" class="opt24">플랫슈즈</option>
					<option value="21" id="21" class="opt24">하이힐</option>
					<option value="22" id="22" class="opt24">부츠</option>
					
					
					
					
					<option value="1" id="1" class="opt31">코트</option>
					<option value="2" id="2" class="opt31">라이더자켓</option>
					<option value="3" id="3" class="opt31">가디건</option>
					<option value="4" id="4" class="opt31">아노락</option>
					<option value="5" id="5" class="opt31">무스탕</option>
					<option value="6" id="6" class="opt31">트레이닝 자켓</option>
					
					<option value="1" id="1" class="opt32">니트</option>
					<option value="2" id="2" class="opt32">셔츠</option>
					<option value="3" id="3" class="opt32">맨투맨</option>
					<option value="4" id="4" class="opt32">티셔츠</option>
					<option value="5" id="5" class="opt32">후드티</option>
					
					<option value="1" id="1" class="opt33">슬랙스</option>
					<option value="2" id="2" class="opt33">코튼팬츠</option>
					<option value="3" id="3" class="opt33">청바지</option>
					<option value="4" id="4" class="opt33">점프수트</option>
					
					<option value="1" id="1" class="opt34">구두</option>
					<option value="2" id="2" class="opt34">로퍼</option>
					<option value="3" id="3" class="opt34">샌들</option>		
				</select>
			</td>
		</tr>
		<tr>
			<td>남은재고</td>
			<td><input name="remStock"></td>
		</tr>
		<tr>
			<td>할인율</td>
			<td><input name="saleRat"></td>
		</tr>
		<tr>
			<td colspan="3" align="center">
			<input type="submit" value="확인">
			<input type="reset" value="취소">
		</tr>
	</table>

</form>
<%@ include file="bottom.jsp" %>
<script>

var malls = false;

function update_selected() {
	$("#typeTwo").val(0);
	$("#typeTwo").find("option[value!=0]").detach();
  
	$("#typeTwo").append(malls.filter(".mall" + $(this).val()));
}

$(function() {
	malls = $("#typeTwo").find("option[value!=0]");
	malls.detach();

	$("#typeOne").change(update_selected);
	$("#typeOne").trigger("change");
});

var malls2 = false; 

function third_selected(){
	$("#typeThree").val(0);
	$("#typeThree").find("option[value!=0]").detach();
	
	$("#typeThree").append(malls2.filter(".opt" + $(this).val() +$(this).val() ) );
}

$(function() {
	malls2 = $("#typeThree").find("option[value!=0]");
	//malls2.detach();
	
	$("#typeOne").change(update_selected).change(third_selected);
	$("#typeOne").trigger("change");
	
	$("#typeTwo").change(third_selected);
	$("#typeTwo").trigger("change");
	
});
</script>
</body>
</html>