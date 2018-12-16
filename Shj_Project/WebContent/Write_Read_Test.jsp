<%@page import="com.ex.test.postDTO"%>
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
	//값 받아오기
	int getCur_page = 1;
	System.out.print(request.getParameter("page"));
	if(request.getParameter("page") != null)
	{
		getCur_page = Integer.parseInt(request.getParameter("page"));
	}
	
	out.println("<input type=\"hidden\" id=\"cur_page\" value=\""+getCur_page+"\">");
	
	String cur_cate = "";
	if(request.getParameter("category") != null)
	{
		cur_cate = (String)request.getParameter("category");
	}
	
	out.println("<input type=\"hidden\" id=\"cur_cate\" value=\""+cur_cate+"\">");
	
	String fnkey ="";	
	String addFnkey = "";
	if(request.getParameter("fnkey") != null)
	{
		fnkey = (String)request.getParameter("fnkey");
		addFnkey = "&fnkey="+fnkey;
	}
	
	out.println("<input type=\"hidden\" id=\"fnkey\" value=\""+fnkey+"\">");
	
	String fndtype ="";	
	String addFndType = "";
	if(request.getParameter("fndtype") != null)
	{
		fndtype = (String)request.getParameter("fndtype");
		addFndType = "&fndtype="+fndtype;
	}
	
	out.println("<input type=\"hidden\" id=\"fndtype\" value=\""+fndtype+"\">");
	//여기까지
	//진짜배기 가져오기
	postDTO post = (postDTO)request.getAttribute("p_list");
	//
	
	//여기서부터는 그냥 걍 대충 내용 흩뿌려 놓기
	out.println("제목은 : " + post.getP_title());
	out.println("<br>");
	out.println("아이디는 : " + post.getP_id());
	out.println("<br>");
	out.println("<br>");
	out.println("<br>");
	out.println();
	
	String a = request.getParameter("webTest");
	out.println(post.getP_contents());
	out.println("<br>");
	out.println("<br>");
	out.println("<br>");
	//out.print("<textarea id=\"address\" name=\"address\" row=\"10\" cols=\"80\" \">"+post.getP_contents()+"</textarea>");
%>

<br>
<button id="p_List" onclick="showlist()">list</button>
<script src="ckeditor/ckeditor.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	/*
	CKEDITOR.replace('address',{
	    filebrowserUploadUrl:'./FileUpload.jsp?'
	    +'realUrl=/WebContent/upload/'
	   });
	 */
	
	function showlist()
	{
		//utf변환 
		var categoryName = $("#cur_cate").val(); //이 부분을 이제 유연하게 받아와야한다. 그래픽카드
			 
			//넘길댸 얘를 같이 넘길까.
		categoryName = encodeURI(categoryName);
		console.log(categoryName);
		
		var addFnkey = "";
		if($("#fnkey").val().length > 0 )
		{
			addFnkey = "&fnkey=" + $("#fnkey").val();
		}
		
		var addFndtype = "";
		if($("#fndtype").val().length > 0 )
		{
			addFnkey = "&fndtype=" + $("#fndtype").val();
		}
		
		location.href = "ajaxList_p_list2.do?page="
		+ $("#cur_page").val() 
		+ "&category=" 
		+ categoryName 
		+ addFnkey
		+ addFndtype;
	}
	
</script>
</body>
</html>