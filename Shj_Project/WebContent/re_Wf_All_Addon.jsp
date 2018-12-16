<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	//로그인체크
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
	//여기까지 로그인체크
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
	
%>
<script src="ckeditor/ckeditor.js"></script>
    <script>
        CKEDITOR.replace('txt',{
	        filebrowserUploadUrl:'./FileUpload.jsp?'
		        +'realUrl=/WebContent/upload/'});
    </script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>

$(document).ready(function(){
	//로그인체크
	console.log($("#userID").val());
	if($("#userName").val() != null) //.textContent 
	{
		console.log("들어옴");
		
		$("#Login_button").attr("href", "./selectbyid.do");
		$("#Login_button").text($("#userName").val() + "님 환영합니다.");
		$("#Join_button").text("Log out");
		$("#Join_button").attr("href", "Logout.jsp");
		
	}
	//여기까지로그인체크
	$('#cate_1').empty();
    $('#cate_1').append($("<option value=\"\" selected> ------ </option>"));
	lCateLoadData()
	$('#cate_1').change(function(){
		$('#cate_2').empty();
		$('#cate_2').append($("<option value=\"\" selected> ------ </option>"));
		mCateloadData();
    })
    //$("#w_submit").attr("href" , "ajaxList_p_list2.do?category=" + $("#category").val());
	
});




function lCateLoadData() {
	var hostIndex = location.href.indexOf( location.host ) + location.host.length;
	contextPath = location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
	
	
	$.ajax({
	    cache: false,
	    success: function(data) {
	    	//alert(data);
			LCateParseJSON(data);
	    },
	    url: "http://"+location.host+contextPath+"/ajaxList_lcate.do"
	});
	
	
}

function mCateloadData() {
	var hostIndex = location.href.indexOf( location.host ) + location.host.length;
	contextPath = location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
	//console.log("http://"+location.host+contextPath+"/ajaxList_mcate.do?L_Cate="+$('#cate_1 option:selected').text());
	
	var Lcate = $('#cate_1 option:selected').text();
	
	Lcate = encodeURI(Lcate);
	
	$.ajax({
	    cache: false,
	    success: function(data) {
	    	//alert(data);
			MCateParseJSON(data);
	    },
	    url: "http://"+location.host+contextPath+"/ajaxList_mcate.do?L_Cate="+Lcate
	});
	
	
}

function LCateParseJSON(jsonText){

	var jsonObj = jsonText;
	
	
	
	var L_CategoryArr = jsonObj.L_CategoryArr;
	var i;
	//member[i].id
	
	for (i = 0; i < L_CategoryArr.length; i++) { 
		var option
		option = "<option value=\""+L_CategoryArr[i].L_Category+"\">"+L_CategoryArr[i].L_Category+"</option>";
	    $('#cate_1').append(option);
	 }
}

function MCateParseJSON(jsonText){

	var jsonObj = jsonText;
	
	
	
	var M_CategoryArr = jsonObj.M_CategoryArr;
	var i;
	//member[i].id
	
	for (i = 0; i < M_CategoryArr.length; i++) { 
		var option
		option = "<option value=\""+M_CategoryArr[i].M_Category+"\">"+M_CategoryArr[i].M_Category+"</option>";
		//이거 왜 된거지? 물어봐야하나 ?
		//$("<option>"+M_CategoryArr[i].M_Category+"</option>")
	    $('#cate_2').append(option);
	 }
}

function writeSubmit(){
	
	var categoryName = $("#w_category").val(); //이 부분을 이제 유연하게 받아와야한다. 그래픽카드
	 
	//넘길댸 얘를 같이 넘길까.
	categoryName = encodeURI(categoryName);
	//null값 체크.
	var writeformlist = ["cate_1",
			"cate_2","cate_3","Wfc1","txt"];
	var i = 0;
	
	//console.log(writeformlist.length);
	//console.log($("#"+writeformlist[3]).val().length);
	for(i = 0; i < writeformlist.length; i++)
	{
		console.log($("#"+writeformlist[i]).val());
		
		if($("#"+writeformlist[i]).val().length == 0)
		{
			return alert("모두 적어 주십시요");		
		}
		
	}
	
	document.p_Write.action = "write.do"+"?category=" + categoryName;
	document.p_Write.submit(); 
}

function showlist()
{
	var categoryName = $("#w_category").val(); //이 부분을 이제 유연하게 받아와야한다. 그래픽카드
	 
	//넘길댸 얘를 같이 넘길까.
	categoryName = encodeURI(categoryName);
	location.href = "ajaxList_p_list2.do?category=" + categoryName;
	//$("#w_list").attr("href" , "ajaxList_p_list2.do?category=" + $("#w_category").val());
}
</script>