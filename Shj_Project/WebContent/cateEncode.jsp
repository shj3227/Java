<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	//카테고리쪽 링크 변환.
	for
	out.println("<li class=\"menu\"><a href=\"#\"> 의류/잡화 </a>");
	out.println("<div class=\"submenu\">");
	//여기에 다시 utf변환기 넣기
	//여기쯤.
	out.println("<a href=\"ajaxList_p_list2.do?category=의류\">의류</a>");
	out.println("</div>");
	out.println("</li>>");
	//여기까지

%>