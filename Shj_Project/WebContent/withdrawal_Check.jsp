<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html leng="ko">
<head>
<meta charset="UTF-8">
<%
	int result = (int)request.getAttribute("result");
	if(result == 1)
	{
		session.removeAttribute("userID");
	}
	
	out.print("<input type=\"hidden\" id=\"result\" value="+ result +">");
%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	if($("#result").val() == 1)
	{
		alert("삭제되었습니다");
		
	}
	else
	{
		alert("다시 입력해 주십시요");
	}
	location.href = "menu_plus_login.jsp";
});
</script>