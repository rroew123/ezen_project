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
</head>
<style>
.container {
	margin: 0 auto;
	text-align: center;
	
}


/* ==================container ======================= */
.header {
	border: 3px solid black;
	height: 200px;
}
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
	position: sticky;
	top: 0;
	left: 0;
	padding: 10px;
	background : pink;
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
	top: 70%;
	cursor: pointer;
	font-size: 50px;
	width: 100px;
	
}

 .Search {
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

 table, th, td {
	border: 1px solid black;
}

table{
	 
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
	<div class="container">
		<div class="header">Header</div>
		<div class="contents">
				<div class="scrollBtn">
					<input type="button" value="자주하는 질문" class="scrollTo" data-direction="top">
			        <input type="button" value="취소/반품/교환/AS" class="scrollTo" data-direction="as">
			        <input type="button" value="QnA" data-direction="answer">
			        <input type="button" value="공지사항" class="scrollTo" data-direction="last">
				</div>
			<div class="FAQ">
				<h1>자주하는 질문</h1>
				<div class="Search">
					<strong>FAQ 검색</strong> 
					<input type="text" class="SearchInput" placeholder="궁금하신 내용을 검색해 보세요!" />
					<button>검색</button>
				</div>
				<button class="btn">배송기간은 어떻게 되나요?</button>
				<button class="btn">배송기간은 어떻게 되나요?</button>
				<button class="btn">배송기간은 어떻게 되나요?</button>
				<button class="btn">배송기간은 어떻게 되나요?</button>
				<button class="btn">배송기간은 어떻게 되나요?</button>
				<button class="btn">배송기간은 어떻게 되나요?</button>
				<button class="btn">배송기간은 어떻게 되나요?</button>
			</div>
			<div class="AS">
				<h1>취소/반품/교환/AS</h1>
				<div class="Search">
					<strong>취소/반품/교환/AS</strong> 
					<input type="text" class="SearchInput" placeholder="궁금하신 내용을 검색해 보세요!" />
					<button>검색</button>
				</div>
				<button class="btn">취소/반품 후 환불은 언제 받을 수 있나요?</button>
				<button class="btn">취소/반품 후 환불은 언제 받을 수 있나요?</button>
				<button class="btn">취소/반품 후 환불은 언제 받을 수 있나요?</button>
				<button class="btn">취소/반품 후 환불은 언제 받을 수 있나요?</button>
				<button class="btn">취소/반품 후 환불은 언제 받을 수 있나요?</button>
				<button class="btn">취소/반품 후 환불은 언제 받을 수 있나요?</button>
			</div>
			<div class="Cside">
				<i class="fa-regular fa-circle-up" value="Top" onclick="clickTop()"></i>
				<i class="fa-regular fa-circle-down" value="Last" onclick="clickLast()"></i>
			</div>
			<h1>QnA</h1>
			<select name="" id="">
				<option value="">전체</option>
				<option value="">제목</option>
				<option value="">내용</option>
				<option value="">작성자</option>
			</select> <input type="text" />
			<button>검색</button>
			<button>글쓰기</button>
			<table>
			<thead>
				<tr>
					<th>전체</th>
					<th>제목</th>
					<th>내용</th>
					<th>작성자</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>이 내용은 제목 입니다.</td>
					<td>이 내용은 내용 입니다.</td>
					<td>admin</td>
				</tr>
				<tr>
					<td>2</td>
					<td>이 내용은 제목 입니다.</td>
					<td>이 내용은 내용 입니다.</td>
					<td>admin</td>
				</tr>
				<tr>
					<td>3</td>
					<td>이 내용은 제목 입니다.</td>
					<td>이 내용은 내용 입니다.</td>
					<td>admin</td>
				</tr>
				<tr>
					<td>4</td>
					<td>이 내용은 제목 입니다.</td>
					<td>이 내용은 내용 입니다.</td>
					<td>admin</td>
				</tr>
				<tr>
					<td>5</td>
					<td>이 내용은 제목 입니다.</td>
					<td>이 내용은 내용 입니다.</td>
					<td>admin</td>
				</tr>
				<tr>
					<td>6</td>
					<td>이 내용은 제목 입니다.</td>
					<td>이 내용은 내용 입니다.</td>
					<td>admin</td>
				</tr>
				<tr>
					<td>7</td>
					<td>이 내용은 제목 입니다.</td>
					<td>이 내용은 내용 입니다.</td>
					<td>admin</td>
				</tr>
				<tr>
					<td>8</td>
					<td>이 내용은 제목 입니다.</td>
					<td>이 내용은 내용 입니다.</td>
					<td>admin</td>
				</tr>
				<tr>
					<td>9</td>
					<td>이 내용은 제목 입니다.</td>
					<td>이 내용은 내용 입니다.</td>
					<td>admin</td>
				</tr>
				<tr>
					<td>10</td>
					<td>이 내용은 제목 입니다.</td>
					<td>이 내용은 내용 입니다.</td>
					<td>admin</td>
				</tr>
				<tr>
					<td>11</td>
					<td>이 내용은 제목 입니다.</td>
					<td>이 내용은 내용 입니다.</td>
					<td>admin</td>
				</tr>
				<tr>
					<td>12</td>
					<td>이 내용은 제목 입니다.</td>
					<td>이 내용은 내용 입니다.</td>
					<td>admin</td>
				</tr>
			</tbody>
			</table>
			<button>이전</button>
			<button>1</button>
			<button>2</button>
			<button>3</button>
			<button>4</button>
			<button>5</button>
			<button>다음</button>
			<div class="Cnotice">
					<h1>공지사항</h1>
				</div>
				<p>쇼핑몰 공지사항에 대해 알려드립니다</p>
				<table>
				<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
				</thead>
				<br />
			<tbody>
				<tr>
					<td>번호</td>
					<td><a href="">[공지]개인정보처리방침 개정 안내(2022년 10월 25일 시행)</a></td>
					<td>2022.10.18</td>
					<td>4,356</td>
				</tr>
				<tr>
					<td>번호</td>
					<td><a href="">[공지]개인정보처리방침 개정 안내(2022년 10월 25일 시행)</a></td>
					<td>2022.10.18</td>
					<td>4,356</td>
				</tr>
				<tr>
					<td>번호</td>
					<td><a href="">[공지]개인정보처리방침 개정 안내(2022년 10월 25일 시행)</a></td>
					<td>2022.10.18</td>
					<td>4,356</td>
				</tr>
				<tr>
					<td>번호</td>
					<td><a href="">[공지]개인정보처리방침 개정 안내(2022년 10월 25일 시행)</a></td>
					<td>2022.10.18</td>
					<td>4,356</td>
				</tr>
				<tr>
					<td>번호</td>
					<td><a href="">[공지]개인정보처리방침 개정 안내(2022년 10월 25일 시행)</a></td>
					<td>2022.10.18</td>
					<td>4,356</td>
				</tr>
				<tr>
					<td>번호</td>
					<td><a href="">[공지]개인정보처리방침 개정 안내(2022년 10월 25일 시행)</a></td>
					<td>2022.10.18</td>
					<td>4,356</td>
				</tr>
				<tr>
					<td>번호</td>
					<td><a href="">[공지]개인정보처리방침 개정 안내(2022년 10월 25일 시행)</a></td>
					<td>2022.10.18</td>
					<td>4,356</td>
				</tr>
				<tr>
					<td>번호</td>
					<td><a href="">[공지]개인정보처리방침 개정 안내(2022년 10월 25일 시행)</a></td>
					<td>2022.10.18</td>
					<td>4,356</td>
				</tr>
				<tr>
					<td>번호</td>
					<td><a href="">[공지]개인정보처리방침 개정 안내(2022년 10월 25일 시행)</a></td>
					<td>2022.10.18</td>
					<td>4,356</td>
				</tr>
				<tr>
					<td>번호</td>
					<td><a href="">[공지]개인정보처리방침 개정 안내(2022년 10월 25일 시행)</a></td>
					<td>2022.10.18</td>
					<td>4,356</td>
				</tr>
			</tbody>
			</table>
		</div>
		
		<div class="footer">
			<p>푸터입니다</p>
		</div>
	</div>
	<script>
	/* 상단 고정 위치이동 버튼 */
	const scrollMove = (event) => {
        if (event.target.dataset.direction === 'top')
            window.scrollTo(0, 200);
        else if (event.target.dataset.direction === 'as')
            window.scrollTo(0, 750);
        else if (event.target.dataset.direction === 'answer')
            window.scrollTo(0, 1200);
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
    /*  */
    
	</script>
</body>
</html>