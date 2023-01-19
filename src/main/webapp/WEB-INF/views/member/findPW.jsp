<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2 class="subtitle">비밀번호찾기</h2>
	<div class="cntbody">

		<div class="tabcnt_find tabcnt_find1" style="display: block;">
			<fieldset>
				<legend class="hidden">비밀번호 찾기</legend>

				<div class="fld addbtn">
					<form action="./findPWProc" method="post">
						<input type="text" name="email" value="" class="form_input member"
							placeholder="이메일" autocomplete="off"> <input type="text"
							name="memId" value="" class="form_input member" placeholder="아이디"
							autocomplete="off"> <input type="submit" value="찾기">



						<c:if test="${member.memPwd != null}">

							<span>고객님의 ${member.memPwd} 를 찾았습니다<br />
							</span>
						</c:if>
						<c:if test="${member.memPwd == null}">

						</c:if>
					</form>
				</div>
				<div class="fld addbtn" id="cp_chk_area" style="display: none;">
					<label>인증번호</label> <input type="text" name="code" id="code"
						class="form_input member" placeholder="인증번호" maxlength="6">
					<span class="box_btn w95 h35 fs13 white3"><a
						href="javascript:" onclick="code_chk();" data-code=""
						id="code_chk">인증확인</a></span>
				</div>
				<span class="box_btn block h50 fs15"><a href="javascript:"
					onclick="search_pw();">확인</a></span>
			</fieldset>
		</div>
		<div class="tabcnt_find tabcnt_find2">
			<fieldset>
				<legend class="hidden">비밀번호 변경</legend>
				<div class="fld">
					<label>변경할 비밀번호</label> <input type="password" name="mem_pw"
						id="mem_pw" class="form_input member" placeholder="변경할 비밀번호">
				</div>
				<div class="fld">
					<label>비밀번호 확인</label> <input type="password" name="mem_pw1"
						id="mem_pw1" class="form_input member" placeholder="비밀번호 확인">
				</div>
				<span class="box_btn block h50 fs15"><a href="javascript:"
					onclick="pw_change();">비밀번호 변경</a></span>
			</fieldset>
		</div>

	</div>
</body>
</html>