<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!-- 임의로 requset를 받기 위해 성홍제가 추가한 부분 -->
<%
	System.out.println("1번 : "+session.getAttribute("userID"));
	if(session.getAttribute("userID") != null)
	{
		String userID = (String)session.getAttribute("userID");
		String userName = (String)session.getAttribute("userName");
		out.println("<input id=\"userID\" type=\"hidden\" value=\""+ userID +"\">");
		out.println("<input id=\"userName\" type=\"hidden\" value=\""+userName+"\">");
		//여기서부터는 페이지 체크로 들어감.
		//특정 페이지 안으로 들어가면 다른 곳으로 빠져나가는 것.
		
		String fileName = "";
		String fileType = "";
		String file = fileName + fileType;
		if(fileName.equals(""))
		{
			System.out.print("여기에 이제 페이지 체크 할겁니다.");
		}
		//여기까지 페이지 체크인데 이런식으로 아마 진행할것
	}
	
%>
	<!-- 여기까지 임시 추가분. -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	console.log($("#userID").val());
	if($("#userName").val() != null) //.textContent 
	{
		console.log("들어옴");
		$(document).ready(function(){
			$("#Login_button").attr("href", "./selectbyid.do");
			$("#Login_button").text($("#userName").val() + "님 환영합니다.");
			$("#Join_button").text("Log out");
			$("#Join_button").attr("href", "Logout.jsp");
			});
	}
	
</script>