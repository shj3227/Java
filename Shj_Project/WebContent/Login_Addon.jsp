<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
	if(session.getAttribute("userID") != null)
	{
		out.println("<input id=\"userID\" type=\"hidden\" value=\""+ session.getAttribute("userID") +"\">");
	}

%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>

$(document).ready(function(){
	if($('#userID').val().length > 0)
	{
		 location.href = "page_test.jsp";
	}
});

function loginSubmit(){
	document.login.action = "login.do?getPage=page_test";
	document.login.submit(); 
}
</script>
	