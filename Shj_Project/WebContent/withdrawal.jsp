<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
</head>
<link href="./CSS/withdrawalCss.css" rel="stylesheet" type="text/css">
<body>
<div class="container">

	<div class="titleArea">
	<h2>회원 탈퇴</h2>
	</div>
	<form name = withdrawal action="" method = "post">
	<div class="main">	
		<p>PASSWORD </p>
		<input id="pw" name="pw" type="password" value=""></input>
	</div>
	<br>
	<button type="button" class="log_button" onclick="withdrawalSubmit();">회원 탈퇴</button> 
	</form>
	<br>
</div>

<%@ include file="withdrawal_Addon.jsp" %>

<script type="text/javascript">



function popupOpen(){

	var popUrl = "popup.jsp";	//팝업창에 출력될 페이지 URL

	var popOption = "width=260, height=260, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)

		window.open(popUrl,"w",popOption);
	}
</script>

<a href="javascript:popupOpen();" > 열려라 팝업창! </a>

<!--  
<script>
 function showPopup() 
 {window.open("popup.jsp", "비밀번호확인", "width=400, height=300, left=100, top=50");}
</script>-->
</body>
 


</html>