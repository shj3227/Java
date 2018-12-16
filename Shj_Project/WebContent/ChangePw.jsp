<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html leng="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String result = (String)request.getAttribute("result");
	if(result.equals("0") != true)
	{
		out.println("<script>");
		out.println("alert(\"메일을 전송했습니다\");");
		out.println("location.href = \"menu_plus_login.jsp\";");
		out.println("</script>");
		
	}
	else
	{
		out.println("<script>");
		out.println("alert(\"다시 입력해 주십시요\");");
		out.println("location.href = \"FindId.jsp\";");
		out.println("</script>");
	}
	
%>
<script>

</script>
</body>
</html>