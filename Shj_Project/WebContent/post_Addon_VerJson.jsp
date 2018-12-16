<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	int cur_page = 1;
	if(request.getParameter("page") != null)
	{
		cur_page = Integer.parseInt(request.getParameter("page"));
	}
	
	out.println("<input type=\"hidden\" id=\"cur_page\" value=\""+cur_page+"\">");
	
	String cur_cate = "";
	if(request.getParameter("category") != null)
	{
		cur_cate = (String)request.getParameter("category");
	}
	
	out.print("<input type=\"hidden\" id=\"cur_cate\" value=\""+cur_cate+"\">");
	
	String fnkey ="";	
	if(request.getParameter("fnkey") != null)
	{
		fnkey = (String)request.getParameter("fnkey");
	}
	
	out.print("<input type=\"hidden\" id=\"fnkey\" value=\""+fnkey+"\">");
	
%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
/*
 * <tr class="background-color:#FFFFFF; color: #555555;" class="xans-record-">
	<td>1</td>
	<td>판매</td>
	<td class="subject left txtBreak">
	<a href="/article/notice/1" style="color:#55555">한 번 쓰고 안 쓴 마스크 하나 사세요</a>
	<span class="txtEm"></span>
	</td>
	<td>진짜최종</td>
	<td>
	<span class="txtNum">2018-10-26</span>
	</td>
	<td class="displaynone">
	<span class="txtNum">10000</span>
	</td>
	</tr>
	<tr class="background-color:#FFFFFF; color: #555555;" class="xans-record-">
 */
 // $(document).ready(function()
		 
		 
		 
 $(document).ready(function(){
	if($("#cur_cate").val() != null)
	{
		console.log($("#cur_cate").val());	
	}
	 //utf변환 
	var categoryName = $("#cur_cate").val(); //이 부분을 이제 유연하게 받아와야한다. 그래픽카드
	 
	//넘길댸 얘를 같이 넘길까.
	categoryName = encodeURI(categoryName);
	console.log(categoryName);
	
	 //여기까지
	var hostIndex = location.href.indexOf( location.host ) + location.host.length;
		contextPath = location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
		//console.log("http://"+location.host+contextPath+"/ajaxList_mcate.do?L_Cate="+$('#cate_1 option:selected').text());
		
	//임시로 만드는 주소 사실 다시 정리하는게 좋지만 귀찮아서 임시로 만듬 ㅎㅎ
	var actionDo = "ajaxList_p_listByCate.do";
	//url변수
	var url = "http://"+location.host+contextPath+"/"+actionDo+"?page="+$("#cur_page").val()+"&category="+categoryName;
	var fnkey = $("#fnkey").val();
	if($("#fnkey").val().length > 0)
	{
		actionDo = "ajaxList_p_find.do";
		url = "http://"+location.host+contextPath+"/ajaxList_p_list.do?page="+$("#cur_page").val()
	}
	if(categoryName.length <= 0)
	{
		url = "http://"+location.host+contextPath+"/ajaxList_p_list.do?page="+$("#cur_page").val();
	}
	console.log(url);
	$.ajax({
	    cache: false,
	    success: function(data) {
	    	//alert(data);
			P_ListParseJSON(data);
	    },
    url: url
	});
	//"http://"+location.host+contextPath+"/"+actionDo+"?page="+$("#cur_page").val()+"&category="+categoryName+"&fnkey="+fnkey;
	//"http://"+location.host+contextPath+"/ajaxList_p_list.do?page="+$("#cur_page").val()
	
	
	/*<td class="displaynone">
	<span class="txtNum">10000</span>
	</td>*/
	
	
	});
 
 function P_ListParseJSON(jsonText){
	 
	 	if($("#cur_cate").val() != null)
		{
			console.log($("#cur_cate").val());	
		}
	 	
		var categoryName = $("#cur_cate").val(); //이 부분을 이제 유연하게 받아와야한다. 그래픽카드
		
		console.log(categoryName);
		
		
		var jsonObj = jsonText;		
		var P_ListArr = jsonObj.P_ListArr;
		var i;
		
		console.log("제이슨 토탈 : " + jsonObj.totalPage);
		
		//member[i].id
		//SimpleDateFormat
		//심플 데이트 포맷 부분은 좀 더 해볼것.
		for (i = 0; i < P_ListArr.length; i++) { 
			var result = "<tr class=\"background-color:#FFFFFF; color: #555555;\" class=\"xans-record-\">";
			var P_seqnum = "<td>"+P_ListArr[i].P_seqnum+"</td>";
			var P_section = "<td>"+P_ListArr[i].P_section+"</td>";
			var P_title = "<td class=\"subject left txtBreak\">"+
							"<a href=\"/article/notice/1\" style=\"color:#55555\">"+P_ListArr[i].P_title+"</a>"+
							"<span class=\"txtEm\"></span></td>";
			var P_id = "<td>"+P_ListArr[i].P_id+"</td>";
			var regdate = P_ListArr[i].P_regdate.substring(0,10);
			var P_regdate = "<td>"+
							"<span class=\"txtNum\">"+regdate+"</span>"+
							"</td>";
			var hidden = "<td class=\"displaynone\"><span class=\"txtNum\">10000</span></td></tr>"

			result = result + P_seqnum + P_section + P_title + P_id + P_regdate + hidden;
			//console.log(result);
			$('#p_Contents').append(result);
		 }
		
		//-------페이징 추가부분
		var cur_page =  0;
		var startPage = 0;
		var endPage = 0;
		$("#totalPage").empty();
		cur_page = parseInt($("#cur_page").val() / 10);
		//딱 떨어질때를 만들어야한다.
		startPage = (cur_page * 10) + 1;
		endPage = (cur_page * 10) + 10;
		if($("#cur_page").val() % 10 == 0) //만약 마지막 숫자를 눌렀을때 생기는 반응 고치기.
		{
			startPage =((cur_page-1) * 10) + 1;
			endPage = (cur_page * 10);
			
		}
		
		console.log(startPage);
		console.log(endPage);
		console.log($("#cur_page").val());
		console.log("제이슨 토탈 : " + jsonObj.totalPage);
		if((jsonObj.totalPage - startPage) < 10) //만약 끝페이지가 더 없다면
		{
			endPage = jsonObj.totalPage;
		}
		
		//이거 엔간하면 좀 물어보고 다시 하는 편이 좋겠다.
		//뒤로가기했을때 만약 자료가 있음에도 불구하고 불러오지 않으면 걍 0으로 처리하면서 문제가 생겨버림.
		/*
		if($("#cur_page").val() > jsonObj.totalPage) //지금 누른 값이 페이지보다 크다면
		{
			alert("정상적인 경로로 들어오신게 아닙니다");
			history.back();
			//location.href = "02_Beauty.jsp";
			//만약 그 이상의 숫자가 들어오면 그냥 첨으로 돌아가게 하기.
		}
		if($("#cur_page").val() <= 0) //지금 누른 값이 페이지보다 크다면
		{
			alert("정상적인 경로로 들어오신게 아닙니다");
			history.back();
			//location.href = "02_Beauty.jsp";
			//만약 그 이상의 숫자가 들어오면 그냥 첨으로 돌아가게 하기.
		}
		*/
		
		
		//여기서 예상 밖으로 넘어갔을때도 하나 만드러야함.
		/*
		if((jsonObj.totalPage - $("#cur_page").val()) < 10){
		cnt = jsonObj.totalPage - $("#cur_page").val();
		}
		*/
		console.log(endPage);
		for(i = startPage; i <= endPage; i++)
		{
			console.log(i);
			$('#totalPage').append("<a href=\"02_Beauty.jsp?page="+ i +"&category=" + categoryName + "\" class=\"this\">"+ i +"</a>");
			//링크를 단순 저렇게 하면 안된다. 왜 ? 자꾸 write부분을 불러오니까.(전 주소 + 니까.)
			//되게 신기하네. 기준이 뒷 확장자인가? 물음표일때는 현 주소 + 물음표였는데
			//jsp 넣으니까 전 주소 지우고 jsp 넣고 물음표 더하네..
			
			//TODO 현재 가장 큰 문제는 이 부분이 안나오는 경우가 생긴다는 것이다.
		}
		
		//-------다음 페이지 이전 페이지 만들기.
		var backPage = startPage - 2;
		var nextPage = endPage + 1
		
		$("#backPage").attr("href" , "02_Beauty.jsp?page=" + backPage);
		$("#nextPage").attr("href" , "02_Beauty.jsp?page=" + nextPage);
		if(backPage <= 0)
		{
			$("#backPage").hide();
		}
		if(nextPage > jsonObj.totalPage)
		{
			$("#nextPage").hide();
		}
		
		
	}

</script>