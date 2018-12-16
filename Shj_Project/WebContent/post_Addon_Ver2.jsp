<%@page import="com.ex.test.postDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//로그인 상태 담당 부분
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
	//여기까지 로그인
	
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
	
	postDTO[] list = (postDTO[])request.getAttribute("p_list");
	String result = "";
	
	
	//총 페이지 수
	System.out.println(request.getAttribute("totalPage"));
	int totalPage = (int)request.getAttribute("totalPage");
	//여기까지
	
	
	//변수는 자바 스크립트내에서는 쓸 수 있다?
	//대체 어디까지 허용이지..
	
	out.println("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>");
	out.println("<script>");
	out.println("$(document).ready(function(){");
	//utf변환
	out.println("if($(\"#cur_cate\").val() != null)");
	out.println("{");
	out.println("console.log($(\"#cur_cate\").val());");
	out.println("}");
	out.println("var categoryName = $(\"#cur_cate\").val();");
	out.println("categoryName = encodeURI(categoryName);");
	out.println("console.log(categoryName);");
	//여기까지변환
	
	
	out.println("$(\"#p_Title\").empty();");
	out.println("$(\"#p_Title\").append(\"<font color=\\\"#555555\\\">"+
				cur_cate
				+"</font>\");");
	if(totalPage > 0)
	{
		out.println("$('#p_Contents').empty();");
		for (int i = 0; i < list.length; i++) { 
			result = "<tr class=\\\"background-color:#FFFFFF; color: #555555;\\\" class=\\\"xans-record-\\\">";
			String P_seqnum = "<td>"+list[i].getP_seqnum()+"</td>";
			String P_section = "<td>"+list[i].getP_section()+"</td>";
			String P_title = "<td class=\\\"subject left txtBreak\\\">"+
							"<a href=\\\"p_view.do?" 
									+"category=\"+categoryName+\""
									+"&page="
									+getCur_page
									+"&p_seqnum="
									+list[i].getP_seqnum()
									+addFnkey
									+addFndType
									+"\\\" style=\\\"color:#55555\\\">"+list[i].getP_title()+"</a>"+
							"<span class=\\\"txtEm\\\"></span></td>";
			String P_id = "<td>"+list[i].getP_id()+"</td>";
			String regdate = list[i].getP_regdate().substring(0,10);
			String P_regdate = "<td>"+
							"<span class=\\\"txtNum\\\">"+regdate+"</span>"+
							"</td>";
			String hidden = "<td class=\\\"displaynone\\\"><span class=\\\"txtNum\\\">10000</span></td></tr>";

			result = result + P_seqnum + P_section + P_title + P_id + P_regdate + hidden;
			out.println("$('#p_Contents').append(\""+ result +"\");");
			System.out.println(result);
		}
	}
	
	out.println("$(\"#totalPage\").empty();");
	int cur_page = (int)(getCur_page / 10);
	System.out.println(cur_page);
	int	startPage = (cur_page * 10) + 1;
	System.out.println("시작페이지 : " + startPage);
	int	endPage = (cur_page * 10) + 10;
	System.out.println("끝페이지 : " +endPage);
	
	if(getCur_page % 10 == 0) //만약 마지막 숫자를 눌렀을때 생기는 반응 고치기.
	{
		startPage =((cur_page-1) * 10) + 1;
		endPage = (cur_page * 10);
	}
	System.out.println("시작페이지 : " + startPage);
	System.out.println("끝페이지 : " +endPage);
	
	

	if((totalPage - startPage) < 10) //만약 끝페이지가 더 없다면
	{
		endPage = totalPage;
	}
	System.out.println("총페이지 : " +totalPage);
	System.out.println("끝페이지 : " +endPage);
	for(int i = startPage; i <= endPage; i++)
	{
		out.println("$('#totalPage').append(\"<a href=\\\"ajaxList_p_list2.do?page="
					+ i 
					+"&category=\"+categoryName+\""
					+ addFnkey
					+ addFndType
					+ "\\\" class=\\\"this\\\">"
					+ i 
					+"</a>\");");
	}
	
	//-------다음 페이지 이전 페이지 만들기.
	int backPage = startPage - 2;
	int nextPage = endPage + 1;
	
	
	out.println("$(\"#backPage\").attr(\"href\" , \"ajaxList_p_list2.do?page=" + backPage 
			+"&category=\"+categoryName+\"" 
			+addFnkey + "\");");
	out.println("$(\"#nextPage\").attr(\"href\" , \"ajaxList_p_list2.do?page=" + nextPage 
			+"&category=\"+categoryName+\"" 
			+ addFnkey + "\");");
	if(backPage <= 0)
	{
		out.println("$(\"#backPage\").hide();");
		
	}
	if(nextPage > totalPage)
	{
		out.println("$(\"#nextPage\").hide();");
	}
	
	
	//write랑 list부분 주소 바꾸기
	out.println("$(\"#showP_List\").attr(\"href\" , \"ajaxList_p_list2.do?"
				+"category=\"+categoryName+\"" 
				+ "\");");
	if(session.getAttribute("userID") != null)
	{
		out.println("$(\"#p_Write\").attr(\"href\" , \"re_Wf_All2.jsp?" 
				+"&category=\"+categoryName+\"" 
				+ addFnkey + "\");");
	}
	else
	{
		out.println("$(\"#p_Write\").hide();");
		//역시 hide를 show하게 하는게 제일 깔끔하고 이쁘지만 그럴 시간이 없다..
	}
	
	out.println("});");
	out.println();
	//여기서부터는 검색 버튼 기능 설정.
	
	//<a href="javascript:p_Search();" id="p_Search">Serch</a> 이 부분이 왜 작동하는 지는 알아둘것. 아직 모름.
	//특히 onclick이 return false를 넣으면 어떤걸 기대할 수 잇는건지에 대해
	/*
	out.println("function p_Search(){");
	
	out.println("var search = $(\"#serch\").val();");
	
	
	out.println("if(search.trim().length <= 0 || search == null){");
	out.println("return alert(\"검색어를 입력해주시기 바랍니다\");");
	out.println("}");
	out.println("location.href = \"ajaxList_p_list2.do?\"");
	out.println("+\"category=" + cur_cate + "\"");
	out.println("+\"&fnkey=\"+search");
	out.println("+\"&fndtype=\"+$(\"serch_key\").val();");
	out.println("}");
	out.println("</script>");
	*/
	out.println("</script>");
%>


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
	
	function p_Search(){
		
		
		 //utf변환 
		var categoryName = $("#cur_cate").val(); //이 부분을 이제 유연하게 받아와야한다. 그래픽카드
		 
		//넘길댸 얘를 같이 넘길까.
		categoryName = encodeURI(categoryName);
		
		var search = $("#serch").val();
		if(search.trim().length <= 0 || search == null){
		return alert("검색어를 입력해주시기 바랍니다")
		}
		location.href = "ajaxList_p_list2.do?"
		+"category=" +categoryName
		+"&fnkey="+search
		+"&fndtype="+$("#serch_key").val()
		
		
	}
	
	
</script>
