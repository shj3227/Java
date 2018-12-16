<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

       
<jsp:include page="top.jsp"/>

<jsp:include page="sideleft.jsp"/>

<jsp:include page="sideright.jsp"/>

<!-- 반응형 본문 시작 -->
<%
	String view = (String)request.getParameter("page");
	System.out.println(view);
%>
<jsp:include page="<%=view%>"/>

<!-- 반응형 본문 끝 -->

<jsp:include page="bottom.jsp"/>