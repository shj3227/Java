<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <script>
 $(document).ready(function(){
 	$('#p_Contents').append("<tr class=\"background-color:#FFFFFF; color: #555555;\" class=\"xans-record-\"><td>2</td><td>삽니다</td><td class=\"subject left txtBreak\"><a href=\"/article/notice/1\" style=\"color:#55555\">asdasd</a><span class=\"txtEm\"></span></td><td>shj3227</td><td><span class=\"txtNum\">2018-11-20</span></td><td class=\"displaynone\"><span class=\"txtNum\">10000</span></td></tr>");
 	$("#totalPage").empty();
 	$('#totalPage').append("<a href=\"02_Beauty.jsp?page=-9&category=후드\" class=\"this\">-9</a>");
 	$('#totalPage').append("<a href=\"02_Beauty.jsp?page=-8&category=후드\" class=\"this\">-8</a>");
 	$('#totalPage').append("<a href=\"02_Beauty.jsp?page=-7&category=후드\" class=\"this\">-7</a>");
 	$('#totalPage').append("<a href=\"02_Beauty.jsp?page=-6&category=후드\" class=\"this\">-6</a>");
 	$('#totalPage').append("<a href=\"02_Beauty.jsp?page=-5&category=후드\" class=\"this\">-5</a>");
 	$('#totalPage').append("<a href=\"02_Beauty.jsp?page=-4&category=후드\" class=\"this\">-4</a>");
 	$('#totalPage').append("<a href=\"02_Beauty.jsp?page=-3&category=후드\" class=\"this\">-3</a>");
 	$('#totalPage').append("<a href=\"02_Beauty.jsp?page=-2&category=후드\" class=\"this\">-2</a>");
 	$('#totalPage').append("<a href=\"02_Beauty.jsp?page=-1&category=후드\" class=\"this\">-1</a>");
 	$('#totalPage').append("<a href=\"02_Beauty.jsp?page=0&category=후드\" class=\"this\">0</a>");
 	$("#backPage").attr("href" , "02_Beauty.jsp?page=-11");
 	$("#nextPage").attr("href" , "02_Beauty.jsp?page=1");
 	$("#backPage").hide();
 	});
 
function serch(){
	 
	var search = $("#serch").val();
	if(search.trim.length <= 0 || search == null)
	{
		return alert("검색어를 입력해주시기 바랍니다");
	}
	location.href = "ajaxList_p_list2.do?page=" + backPage 
	+"&category=" 
	+ cur_cate
	+"&fnkey="+search;
	 
	 
 }
 
 </script>
