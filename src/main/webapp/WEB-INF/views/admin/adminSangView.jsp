<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 정보 상세페이지</title>
<link rel="stylesheet" href="/resources/basic.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>
<%@ include file="top.jsp" %>
<h2>상품 정보 상세</h2>
<form name="form2" method="post">
	<table border="1" width="480px">
		<tr>
			<td>상품코드</td>
			<td><input name="sangCode" value = "${dto.sangCode}"></td>
		</tr>
		<tr>
			<td>상품이미지</td>
			<td><img src="/resources/img/Ezen.png" width="100px" height="100px" alt="상품 이미지"></td>
		</tr>	
		<tr>
			<td>상품이름</td>
			<td><input name="sangName" value = "${dto.sangName}" ></td>
		</tr>
		<tr>
			<td>대분류</td>
			<td>
				<select name="typeOne" id="typeOne">
					<option value="0">대분류를 선택해주세요</option>
					<option value="2" id="2" <c:if test="${dto.typeOne eq '2'}"> selected</c:if>>여성</option>
					<option value="3" id="3" <c:if test="${dto.typeOne eq '3'}"> selected</c:if>>남성</option>
				</select>
			</td>
			
		</tr>
		<tr>
			<td>중분류</td>
			<td>
				<select name="typeTwo" id="typeTwo">
					<option value="0">중분류를 선택해주세요</option>
					<option value="1" id="1" class="mall2"<c:if test="${dto.typeTwo eq '1'}"> selected</c:if>>아우터</option>
					<option value="2" id="2" class="mall2"<c:if test="${dto.typeTwo eq '2'}"> selected</c:if>>상의</option>
					<option value="3" id="3" class="mall2"<c:if test="${dto.typeTwo eq '3'}"> selected</c:if>>하의</option>
					<option value="21" id="21" class="mall2"<c:if test="${dto.typeTwo eq '21'}"> selected</c:if>>원피스</option>
					<option value="22" id="22" class="mall2"<c:if test="${dto.typeTwo eq '22'}"> selected</c:if>>스커트</option>
					<option value="4" id="4" class="mall2"<c:if test="${dto.typeTwo eq '4'}"> selected</c:if>>신발</option>
					
					<option value="1" id="1" class="mall3"<c:if test="${dto.typeTwo eq '1'}"> selected</c:if>>아우터</option>
					<option value="2" id="2" class="mall3"<c:if test="${dto.typeTwo eq '2'}"> selected</c:if>>상의</option>
					<option value="3" id="3" class="mall3"<c:if test="${dto.typeTwo eq '3'}"> selected</c:if>>하의</option>
					<option value="4" id="4" class="mall3"<c:if test="${dto.typeTwo eq '4'}"> selected</c:if>>신발</option>
								
				</select>
			</td>
		</tr>
		<tr>
			<td>소분류</td>
			<td>
				<select name="typeThree" id="typeThree">
					<option value="0">소분류를 선택해주세요</option>
					<option value="1" id="1" class="opt21"<c:if test="${dto.typeThree eq '1'}"> selected</c:if>>코트</option>
					<option value="2" id="2" class="opt21"<c:if test="${dto.typeThree eq '2'}"> selected</c:if>>라이더자켓</option>
					<option value="3" id="3" class="opt21"<c:if test="${dto.typeThree eq '3'}"> selected</c:if>>가디건</option>
					<option value="4" id="4" class="opt21"<c:if test="${dto.typeThree eq '4'}"> selected</c:if>>아노락</option>
					<option value="5" id="5" class="opt21"<c:if test="${dto.typeThree eq '5'}"> selected</c:if>>무스탕</option>
					<option value="6" id="6" class="opt21"<c:if test="${dto.typeThree eq '6'}"> selected</c:if>>트레이닝 자켓</option>
					
					<option value="1" id="1" class="opt22"<c:if test="${dto.typeThree eq '1'}"> selected</c:if>>니트</option>
					<option value="2" id="2" class="opt22"<c:if test="${dto.typeThree eq '2'}"> selected</c:if>>셔츠</option>
					<option value="3" id="3" class="opt22"<c:if test="${dto.typeThree eq '3'}"> selected</c:if>>맨투맨</option>
					<option value="4" id="4" class="opt22"<c:if test="${dto.typeThree eq '4'}"> selected</c:if>>티셔츠</option>
					<option value="5" id="5" class="opt22"<c:if test="${dto.typeThree eq '5'}"> selected</c:if>>후드티</option>
					<option value="6" id="6" class="opt22"<c:if test="${dto.typeThree eq '6'}"> selected</c:if>>블라우스</option>
					
					<option value="21" id="21" class="opt23"<c:if test="${dto.typeThree eq '21'}"> selected</c:if>>숏팬츠</option>
					<option value="22" id="22" class="opt23"<c:if test="${dto.typeThree eq '22'}"> selected</c:if>>레깅스</option>
					<option value="1" id="1" class="opt23"<c:if test="${dto.typeThree eq '1'}"> selected</c:if>>슬랙스</option>
					<option value="2" id="2" class="opt23"<c:if test="${dto.typeThree eq '2'}"> selected</c:if>>코튼팬츠</option>
					<option value="3" id="3" class="opt23"<c:if test="${dto.typeThree eq '3'}"> selected</c:if>>청바지</option>
					<option value="4" id="4" class="opt23"<c:if test="${dto.typeThree eq '4'}"> selected</c:if>>점프수트</option>
					
					<option value="21" id="21" class="opt221"<c:if test="${dto.typeThree eq '21'}"> selected</c:if>>미니원피스</option>
					<option value="22" id="22" class="opt221"<c:if test="${dto.typeThree eq '22'}"> selected</c:if>>맥시원피스</option>
					<option value="23" id="23" class="opt221"<c:if test="${dto.typeThree eq '23'}"> selected</c:if>>롱원피스</option>
					<option value="24" id="24" class="opt221"<c:if test="${dto.typeThree eq '24'}"> selected</c:if>>미디원피스</option>
					
					<option value="21" id="21" class="opt222"<c:if test="${dto.typeThree eq '21'}"> selected</c:if>>미니스커트</option>
					<option value="22" id="22" class="opt222"<c:if test="${dto.typeThree eq '22'}"> selected</c:if>>미디스커트</option>
					<option value="23" id="23" class="opt222"<c:if test="${dto.typeThree eq '23'}"> selected</c:if>>롱스커트</option>
					
					<option value="1" id="1" class="opt24"<c:if test="${dto.typeThree eq '1'}"> selected</c:if>>구두</option>
					<option value="2" id="2" class="opt24"<c:if test="${dto.typeThree eq '2'}"> selected</c:if>>로퍼</option>
					<option value="3" id="3" class="opt24"<c:if test="${dto.typeThree eq '3'}"> selected</c:if>>샌들</option>
					<option value="4" id="4" class="opt24"<c:if test="${dto.typeThree eq '4'}"> selected</c:if>>슬리퍼</option>
					<option value="5" id="5" class="opt24"<c:if test="${dto.typeThree eq '5'}"> selected</c:if>>플랫슈즈</option>
					<option value="21" id="21" class="opt24"<c:if test="${dto.typeThree eq '21'}"> selected</c:if>>하이힐</option>
					<option value="22" id="22" class="opt24"<c:if test="${dto.typeThree eq '22'}"> selected</c:if>>부츠</option>
					
					
					
					
					<option value="1" id="1" class="opt31"<c:if test="${dto.typeThree eq '1'}"> selected</c:if>>코트</option>
					<option value="2" id="2" class="opt31"<c:if test="${dto.typeThree eq '2'}"> selected</c:if>>라이더자켓</option>
					<option value="3" id="3" class="opt31"<c:if test="${dto.typeThree eq '3'}"> selected</c:if>>가디건</option>
					<option value="4" id="4" class="opt31"<c:if test="${dto.typeThree eq '4'}"> selected</c:if>>아노락</option>
					<option value="5" id="5" class="opt31"<c:if test="${dto.typeThree eq '5'}"> selected</c:if>>무스탕</option>
					<option value="6" id="6" class="opt31"<c:if test="${dto.typeThree eq '6'}"> selected</c:if>>트레이닝 자켓</option>
					
					<option value="1" id="1" class="opt32"<c:if test="${dto.typeThree eq '1'}"> selected</c:if>>니트</option>
					<option value="2" id="2" class="opt32"<c:if test="${dto.typeThree eq '2'}"> selected</c:if>>셔츠</option>
					<option value="3" id="3" class="opt32"<c:if test="${dto.typeThree eq '3'}"> selected</c:if>>맨투맨</option>
					<option value="4" id="4" class="opt32"<c:if test="${dto.typeThree eq '4'}"> selected</c:if>>티셔츠</option>
					<option value="5" id="5" class="opt32"<c:if test="${dto.typeThree eq '5'}"> selected</c:if>>후드티</option>
					
					<option value="1" id="1" class="opt33"<c:if test="${dto.typeThree eq '1'}"> selected</c:if>>슬랙스</option>
					<option value="2" id="2" class="opt33"<c:if test="${dto.typeThree eq '2'}"> selected</c:if>>코튼팬츠</option>
					<option value="3" id="3" class="opt33"<c:if test="${dto.typeThree eq '3'}"> selected</c:if>>청바지</option>
					<option value="4" id="4" class="opt33"<c:if test="${dto.typeThree eq '4'}"> selected</c:if>>점프수트</option>
					
					<option value="1" id="1" class="opt34"<c:if test="${dto.typeThree eq '1'}"> selected</c:if>>구두</option>
					<option value="2" id="2" class="opt34"<c:if test="${dto.typeThree eq '2'}"> selected</c:if>>로퍼</option>
					<option value="3" id="3" class="opt34"<c:if test="${dto.typeThree eq '3'}"> selected</c:if>>샌들</option>		
				</select>
			</td>
		</tr>
		<tr>
			<td>판매량</td>
			<td><input name="soldCnt" value = "${dto.soldCnt}" readonly="readonly"></td>
		</tr>
		<tr>
			<td>남은재고</td>
			<td><input name="remStock" value = "${dto.remStock}" ></td>
		</tr>
		<tr>
			<td>평점</td>
			<td><input name="rating" value = "${dto.rating}" readonly="readonly"></td>
		</tr>
		<tr>
			<td>총 평점</td>
			<td><input name="totalRat" value = "${dto.totalRat}" readonly="readonly"></td>
		</tr>
		<tr>
			<td>평점 개수</td>
			<td><input name="ratingCnt" value = "${dto.ratingCnt}" readonly="readonly"></td>
		</tr>
		<tr>
			<td>할인율</td>
			<td><input name="saleRat" value = "${dto.saleRat}" ></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="수정" id="btnUpdate">
				<input type="button" value="삭제" id="btnDelete">
				<input type="button" value="목록" id="btnHome">
			</td>
		</tr>
	</table>
</form>
<%@ include file="bottom.jsp" %>
<script>
	$(document).ready(function(){
		$("#btnUpdate").click(function(){
			document.form2.action="${path}/admin/adminSangUpdateProc";
			document.form2.submit();
		});
	});
	 
	$(document).ready(function(){
		$("#btnDelete").click(function(){
			document.form2.action="${path}/admin/adminSangDeleteProc";
			document.form2.submit();
		});
	});
	
	$(document).ready(function(){
		$("#btnHome").click(function(){
			document.form2.action="${path}/admin/adminSang";
			document.form2.submit();
		});
	});
	
	
	
	var malls = false;

	function update_selected() {
	  $("#typeTwo").val(${dto.typeTwo});
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
		$("#typeThree").val(${dto.typeThree});
		$("#typeThree").find("option[value!=0]").detach();
		
		$("#typeThree").append(malls2.filter(".opt"+($(this).val())+ ${dto.typeTwo}));
	}
	
	$(function() {
		malls2 = $("#typeThree").find("option[value!=0]");
		malls2.detach();
		
		$("#typeOne").change(update_selected).change(third_selected);
		$("#typeOne").trigger("change");

	});
	
	
	
	/*let cate = JSON.parse('${cate}');
	
	let cate2Array = new Array();
	let cate3Array = new Array();
	
	let cate1Obj = new Object();
	let cate2Obj = new Object();
	let cate3Obj = new Object();
	let cate4Obj = new Object();
	let cate21Obj = new Object();
	let cate22Obj = new Object();
	
	let cateSelect1 = $(".cate1");		
	let cateSelect2 = $(".cate2");
	let cateSelect3 = $(".cate3");*/
	
</script>
</body>

</html>