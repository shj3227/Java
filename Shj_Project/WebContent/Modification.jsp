<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
</head>
<link href="./CSS/ModificationCss.css" rel="stylesheet" type="text/css">
<body>


	<div class="container">

		<div class="titleArea">
			<h2>회원 정보 수정</h2>
		</div>
		<br>
		<form name = "modification" action="" method = "post">
		<table class="table">
			<tbody>
				<tr>
					<td class="joinc1">ID</td>
					<td><input id="id" name="id" type="text" value="" readonly></td>
				</tr>

				<tr>
					<td class="joinc1">PASSWORD</td>
					<td><input id="pw" name="pw" type="password"
						placeholder="새 비밀번호를 입력하세요" value=""></td>
				</tr>
				<tr>
					<td class="joinc1">NAME</td>
					<td><input id="name" name="name" type="text" placeholder="새 이름을 입력하세요"
						value=""></td>
				</tr>

				<tr>
					<td class="joinc1">NICKNAME</td>
					<td><input id="nickname" name="nickname" type="text"
						placeholder="새 닉네임을 입력하세요" value=""></td>
				</tr>

				<tr>
					<td class="joinc1">EMAIL</td>
					<td><input id="email" name="inputEmail" type="text" value=" "> @ <input
						id="email" id="selectIdInput" name="inputEmail" type="text" value=" 1"> 
						<select id="selectID">
							<option selected>직접입력</option>
							<option>naver.com</option>
							<option>daum.net</option>
							<option>gmail.com</option>
					</select></td>
				</tr>

				<tr>
					<td class="joinc1">PHONE</td>
					<td><select name="inputPhonenum">
							<option selected>010</option>
							<option>011</option>
							<option>016</option>
							<option>017</option>
							<option>018</option>
							<option>019</option>
					</select> - <input class="joinc2" id="phonenum" name="inputPhonenum" type="text" value=" ">
						- <input class="joinc2" id="phonenum" name="inputPhonenum" type="text" value=" ">
					</td>
				</tr>

				<tr>
					<td class="joinc1">ADDRESS</td>
					<td><input class="joinc2" id="address" name="zipcode" type="text" value=""
						placeholder="우편번호"> <input id="address" class="joinc3" type="button"
						value="우편번호 찾기"
						style="color: #000; font: 12px/1 굴림, Gulim, sans-serif;">
						<BR> <input class="joinc4" name="address" type="text"
						value=""></td>
				</tr>

			</tbody>
		</table>
		<input type="hidden" name="email" value="">
		<input type="hidden" name="phonenum" value="">
		<button type="button" class="log_button" onclick="modMember();">회원 정보 수정</button>
		</form>

	</div>
	<br>

<%@ include file="Modification_Addon.jsp" %>


</body>
</html>