<%@ page language="java" contentType="text/html; charset=UTF-8"
	trimDirectiveWhitespaces="true" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberjoin</title>
<script src="https://kit.fontawesome.com/9af1085f00.js"
	crossorigin="anonymous"></script>
<style>

.Cside {
	position: fixed;
	right: 1%;
	top: 60%;
	cursor: pointer;
	font-size: 44px;
	width: 77px;
}
</style>
</head>
<body>
	<%@ include file="../home_top.jsp" %>
	<div id="join_input">
		<form name="" action="/member/joinformProc"
			onsubmit="return join_chk();" target="hi_fr">
			<fieldset>
				<legend class="hidden">기본정보입력(필수)</legend>
				<div class="box">
					<div>
						<label for="join_name">이름 <span>*</span></label> <input
							type="text" name="memName" id="memName"
							class="form_input form_name" maxlength="30">
					</div>
					<div class="addbtn">
						<label for="join_id">아이디 <span>*</span></label> <input type="text"
							name="memId" id=memId class="form_input form_id"
							maxlength="20"> <span class="box_btn w95 h35 fs13 white2"><a
							href="" onclick="id_chk();" data-id="" id="id_chk">중복확인</a></span>
					</div>
					<div>
						<label for="join_pw">비밀번호 <span>*</span></label> <input
							type="password" name="memPwd" id="memPwd"
							class="form_input form_name" maxlength="30">
					</div>
					
					<div class="mobile addbtn">
						<label for="join_cell">휴대폰 번호 <span>*</span></label> 
						 <input type="text" name="phone" id="phone"
							class="form_input form_cell1" 
							onkeyup="autoFocus(4, this.id, 'join_cell2')"><a href=""
							onclick="phone_chk();" data-phone="" id="phone_chk">휴대폰 인증</a></span>
					</div>
					<div>
						<label for="join_year">생년월일 <span>*</span></label> <select
							name="birthday" class="birthday">
							<option value="2009">2009</option>
							<option value="2008">2008</option>
							<option value="2007">2007</option>
							<option value="2006">2006</option>
							<option value="2005">2005</option>
							<option value="2004">2004</option>
							<option value="2003">2003</option>
							<option value="2002">2002</option>
							<option value="2001">2001</option>
							<option value="2000">2000</option>
							<option value="1999">1999</option>
							<option value="1998">1998</option>
							<option value="1997">1997</option>
							<option value="1996">1996</option>
							<option value="1995">1995</option>
							<option value="1994">1994</option>
							<option value="1993">1993</option>
							<option value="1992">1992</option>
							<option value="1991">1991</option>
							<option value="1990">1990</option>
							<option value="1989">1989</option>
							<option value="1988">1988</option>
							<option value="1987">1987</option>
							<option value="1986">1986</option>
							<option value="1985">1985</option>
							<option value="1984">1984</option>
							<option value="1983">1983</option>
							<option value="1982">1982</option>
							<option value="1981">1981</option>
							<option value="1980">1980</option>
							<option value="1979">1979</option>
							<option value="1978">1978</option>
							<option value="1977">1977</option>
							<option value="1976">1976</option>
							<option value="1975">1975</option>
							<option value="1974">1974</option>
							<option value="1973">1973</option>
							<option value="1972">1972</option>
							<option value="1971">1971</option>
							<option value="1970">1970</option>
							<option value="1969">1969</option>
							<option value="1968">1968</option>
							<option value="1967">1967</option>
							<option value="1966">1966</option>
							<option value="1965">1965</option>
							<option value="1964">1964</option>
							<option value="1963">1963</option>
							<option value="1962">1962</option>
							<option value="1961">1961</option>
							<option value="1960">1960</option>
							<option value="1959">1959</option>
							<option value="1958">1958</option>
							<option value="1957">1957</option>
							<option value="1956">1956</option>
							<option value="1955">1955</option>
							<option value="1954">1954</option>
							<option value="1953">1953</option>
							<option value="1952">1952</option>
							<option value="1951">1951</option>
							<option value="1950">1950</option>
							<option value="1949">1949</option>
							<option value="1948">1948</option>
							<option value="1947">1947</option>
							<option value="1946">1946</option>
							<option value="1945">1945</option>
							<option value="1944">1944</option>
							<option value="1943">1943</option>
							<option value="1942">1942</option>
							<option value="1941">1941</option>
							<option value="1940">1940</option>
						</select> <select name="birthday" class="birthday">
							<option value="01">01</option>
							<option value="02">02</option>
							<option value="03">03</option>
							<option value="04">04</option>
							<option value="05">05</option>
							<option value="06">06</option>
							<option value="07">07</option>
							<option value="08">08</option>
							<option value="09">09</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
						</select> <select name="birthday" class="birthday">
							<option value="01">01</option>
							<option value="02">02</option>
							<option value="03">03</option>
							<option value="04">04</option>
							<option value="05">05</option>
							<option value="06">06</option>
							<option value="07">07</option>
							<option value="08">08</option>
							<option value="09">09</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="13">13</option>
							<option value="14">14</option>
							<option value="15">15</option>
							<option value="16">16</option>
							<option value="17">17</option>
							<option value="18">18</option>
							<option value="19">19</option>
							<option value="20">20</option>
							<option value="21">21</option>
							<option value="22">22</option>
							<option value="23">23</option>
							<option value="24">24</option>
							<option value="25">25</option>
							<option value="26">26</option>
							<option value="27">27</option>
							<option value="28">28</option>
							<option value="29">29</option>
							<option value="30">30</option>
							<option value="31">31</option>
						</select>
					</div>
					성별 : <input type="radio" name="gender" value="1" > 남자
					<input type="radio" name="gender" value="2"> 	 여자 <br>
					
					<div>
						<label>sms수신여부 <span>*</span></label>
						<p class="check">
							<input type="radio" id="sms_agree" name="sms_agree" value="Y"
								checked=""> <label for="sms_agree">예</label> <input
								type="radio" id="sms_noagree" name="sms_agree" value="N">
							<label for="sms_noagree">아니오</label>
						</p>
					</div>
					<div class="addbtn">
						<label for="join_email0">이메일 <span>*</span></label> <input
							type="text" name="email" id="email"
							class="form_input form_email0"> 
					</div>
					<div>
						<label>메일수신여부 <span>*</span></label>
						<p class="check">
							<input type="radio" id="email_agree" name="email_agree" value="Y"
								checked=""> <label for="email_agree">예</label> <input
								type="radio" id="email_noagree" name="email_agree" value="N">
							<label for="email_noagree">아니오</label>
						</p>
					</div>
					<div>
						<label>추천인아이디</label> <input type="text" name="inflow_id"
							id="inflow_id" class="form_input form_name" maxlength="30">
					</div>
				</div>
			</fieldset>
			<div class="btn tac">
				<input type="submit"
					value="저장"> <span class="box_btn w144 h45 fs15 gray4"><a
					href="">취소</a></span>
			</div>

		</form>
	</div>
	

	<script>
		function clickTop() {
			window.scrollTo(0, 0);
		}

		function clickLast() {
			window.scrollTo(99999, 99999);
		}
	</script>
</body>
</html>