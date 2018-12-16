<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
</head>
<link href="./CSS/LoginCss.css" rel="stylesheet" type="text/css">
<body>

<div class="container">
	
	<div class="titleArea">
	<h2>Log In</h2>
	</div>
	<br>
	<form name = "login" action="insert.do" method = "post">
	<div class="main">
		<p>ID
		<br>
		 <input name="id" type="text" value=""></p> 
		<br>
		<p>PASSWORD 
		<br>
		 <input name="pw" type="password" value=""></p>	
		 	
	</div>
	<br><br>
	
	<button type="button" class="log_button" onclick ="loginSubmit()">Log in</button> 
	</form>
	 <script>
	 function loginSubmit(){
				document.login.action = "login.do";
				document.login.submit(); 
	 }
	 </script>
	<br>
	<div class="link">
		<a href="/member/id/find_id.html">- Search Id</a><br>
        <a href="/member/passwd/find_passwd_info.html">- Search Password</a>
	</div>


</div>

</body>
</html>