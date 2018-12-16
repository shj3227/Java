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
	String getCategory = "";
	if(request.getParameter("category") != null){
		getCategory = request.getParameter("category");
	}
	out.println("<input type=\"hidden\" id=\"w_category\" value=\""+getCategory+"\">");
	
	String getFnkey = "";
	if(request.getParameter("fnkey") != null){
		getFnkey = request.getParameter("fnkey");
	}
	out.println("<input type=\"hidden\" id=\"w_fnkey\" value=\""+getFnkey+"\">");
	
	String getPage = "";
	if(request.getParameter("getPage") != null){
		getPage = request.getParameter("getPage");
	}
	out.println("<input type=\"hidden\" id=\"show_Page\" value=\""+getPage+"\">");
	
	
%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	var categoryName = $("#w_category").val(); //이 부분을 이제 유연하게 받아와야한다. 그래픽카드
	 
	//넘길댸 얘를 같이 넘길까.
	categoryName = encodeURI(categoryName);
	if($("#show_Page").val().length <= 0)
	{
		location.href = "ajaxList_p_list2.do?category=" + categoryName;
	}
	else
	{
		location.href = $("#show_Page").val()+".jsp";
	}
	
});
</script>
</body>
</html>