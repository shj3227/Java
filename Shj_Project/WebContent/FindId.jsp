<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link href="./CSS/FindIdCss.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="container">
	
	<div class="titleArea">
	<h2>Find Id</h2>
	</div>
	<br>
	<div class="main">
	<form name = "findPw" action="" method = "post">
		<p>Name</p>
		<input class="findidc1" name="name" type="text" placeholder="이름 입력" value="">
		<br>
		<p>E-mail</p>
		 <input class="findidc2" name="inputEmail" type="text" placeholder="Email 입력" value=" "> 
		 @ <input class="findidc2" id="selectIdInput" name="inputEmail" type="text" value=" "> 
			<select id="selectID">
				<option selected>직접입력</option>
				<option>naver.com</option>
				<option>daum.net</option>
				<option>gmail.com</option>
			</select>	
			<input type="hidden" name="email" value="">
	<br><br>
	
	<button type="button" class="log_button" onclick="findIdSubmit()">Find Id</button>	
	</form>
	</div>
	 
	<br>
	
</div>
 <%@ include file="FindId_Addon.jsp" %>
</body>
</html>