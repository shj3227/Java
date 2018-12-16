<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- Sideright 시작-->
<div id="sideright">
<!-- 로그인~북마크 메뉴 담는 div 시작 -->
<div class="layout-rightmenu">
<a id="Login_button" href="menu_plus_login.jsp">LOGIN</a>
<a id="Join_button" href="menu_plus_join.jsp">JOIN US</a>
<br>
<a href="main.do?page=Mypage">MY PAGE</a>
<a href="#">MESSAGE</a>
<a href="#">BOOKMARK</a>

</div>
<!-- 로그인~북마크 메뉴 담는 div 끝-->
<%@include file = 'Main_Addon.jsp' %>

</div>
<!-- Sideright 끝-->