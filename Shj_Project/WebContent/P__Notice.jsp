<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = "ko">
<head>
<meta charset="UTF-8">

<title>Sold Out</title>

<link href="./CSS/All.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>


<body>
<div id="sideleft">
<h1 class="xans-element xans-layout xans-layout-logotop">
<a href ="/index.html">Sold Out</a>
</h1>
<div id="category" class="xans-element xans-layout xans-layout-logotop">
<!-- 왼쪽 부분 -->
<br>
<!-- Category -->
<h2>Category</h2>
<div id="position">
<ul>

<!-- 주메뉴 -->
<li class="menu"><a href="#"> 의류/잡화 </a>
 <div class="submenu">
 	<a href="ajaxList_p_list2.do?category=의류">의류</a>
 	<a href="ajaxList_p_list2.do?category=신발">신발</a>
 	<a href="ajaxList_p_list2.do?category=가방">가방</a>
 	<a href="ajaxList_p_list2.do?category=지갑/벨트">지갑/벨트</a>
 	<a href="ajaxList_p_list2.do?category=쥬얼리/시계">쥬얼리/시계</a>
 	<a href="ajaxList_p_list2.do?category=기타 의류잡화d">기타 의류잡화</a>
 </div>
</li>
<li class="menu"><a href="#"> 뷰티 </a>
 <div class="submenu">
 	<a href="ajaxList_p_list2.do?category=화장품">화장품</a>
 	<a href="ajaxList_p_list2.do?category=향수">향수</a>
 	<a href="ajaxList_p_list2.do?category=헤어케어">헤어케어</a>
 	<a href="ajaxList_p_list2.do?category=바디케어">바디케어</a>
 	<a href="ajaxList_p_list2.do?category=기타 뷰티제품">기타 뷰티제품</a>
 </div>
</li>

<li class="menu"><a href="#"> 레저/자동차 </a>
 <div class="submenu">
 	<a href="ajaxList_p_list2.do?category=자동차">자동차</a>
 	<a href="ajaxList_p_list2.do?category=자전거">자전거</a>
 	<a href="ajaxList_p_list2.do?category=등산용품">등산용품</a>
 	<a href="ajaxList_p_list2.do?category=골프용품">골프용품</a>
 	<a href="ajaxList_p_list2.do?category=기타 레저용품">기타 레저용품</a>
 	<a href="ajaxList_p_list2.do?category=기타 자동차용품">기타 자동차용품</a>
 </div>
</li>

<li class="menu"><a href="#"> 식품 </a>
 <div class="submenu">
 	<a href="ajaxList_p_list2.do?category=농축수산">농축수산</a>
 	<a href="ajaxList_p_list2.do?category=가공식품">가공식품</a>
 	<a href="ajaxList_p_list2.do?category=음료">음료</a>
 	<a href="ajaxList_p_list2.do?category=과자/간식">과자/간식</a>
 	<a href="ajaxList_p_list2.do?category=즉석식품">즉석식품</a>
 	<a href="ajaxList_p_list2.do?category=건강식품">건강식품</a>
 	<a href="ajaxList_p_list2.do?category=기타식품">기타식품</a>
 </div>
</li>

<li class="menu"><a href="#"> 출산/육아 </a>
 <div class="submenu">
 	<a href="ajaxList_p_list2.do?category=출산/임부용품">출산/임부용품</a>
 	<a href="ajaxList_p_list2.do?category=유아화장품">유아화장품</a>
 	<a href="ajaxList_p_list2.do?category=장난감">장난감</a>
 	<a href="ajaxList_p_list2.do?category=아동의류">아동의류</a>
 	<a href="ajaxList_p_list2.do?category=아동신발">아동신발</a>
 	<a href="ajaxList_p_list2.do?category=유아가구">유아가구</a>
 </div>
</li>

<li class="menu"><a href="#"> 생활/건강 </a>
 <div class="submenu">
 	<a href="ajaxList_p_list2.do?category=주방용품">주방용품</a>
 	<a href="ajaxList_p_list2.do?category=청소/세탁">청소/세탁</a>
 	<a href="ajaxList_p_list2.do?category=생활잡화">생활잡화</a>
 	<a href="ajaxList_p_list2.do?category=건강관리">건강관리</a>
 	<a href="ajaxList_p_list2.do?category=기타 생활용품">기타 생활용품</a>
 	<a href="ajaxList_p_list2.do?category=기타 건강용품">기타 건강용품</a>
 </div>
</li>

<li class="menu"><a href="#"> 가구/인테리어 </a>
 <div class="submenu">
 	<a href="ajaxList_p_list2.do?category=가정용가구">가정용가구</a>
 	<a href="ajaxList_p_list2.do?category=사무용가구">사무용가구</a>
 	<a href="ajaxList_p_list2.do?category=조명">조명</a>
 	<a href="ajaxList_p_list2.do?category=기타 가구용품">기타 가구용품</a>
 </div>
</li>

<li class="menu"><a href="#"> 디지털/가전/컴퓨터 </a>
 <div class="submenu">
 	<a href="ajaxList_p_list2.do?category=TV">TV</a>
 	<a href="ajaxList_p_list2.do?category=계절가전">계절가전</a>
 	<a href="ajaxList_p_list2.do?category=생활가전">생활가전</a>
 	<a href="ajaxList_p_list2.do?category=컴퓨터">컴퓨터</a>
 	<a href="ajaxList_p_list2.do?category=휴대폰/태블릿">휴대폰/태블릿</a>
 	<a href="ajaxList_p_list2.do?category=기타 가전">기타 가전</a>
 </div>
</li>

<li class="menu"><a href="#"> 도서 </a>
 <div class="submenu">
 	<a href="ajaxList_p_list2.do?category=학습/참고서">학습/참고서</a>
 	<a href="ajaxList_p_list2.do?category=월간/잡지">월간/잡지</a>
 	<a href="ajaxList_p_list2.do?category=문학/과학/경영">문학/과학/경영</a>
 	<a href="ajaxList_p_list2.do?category=여행/취미/레저">여행/취미/레저</a>
 	<a href="ajaxList_p_list2.do?category=예술/디자인">예술/디자인</a>
 	<a href="ajaxList_p_list2.do?category=아동/어린이/전집">아동/어린이/전집</a>
 	<a href="ajaxList_p_list2.do?category=만화책">만화책</a>
 	<a href="ajaxList_p_list2.do?category=음반">음반</a>
 	<a href="ajaxList_p_list2.do?category=기타 도서">기타 도서</a>
 </div>
</li>

<li class="menu"><a href="#"> 문구/취미/반려동물 </a>
 <div class="submenu">
 	<a href="ajaxList_p_list2.do?category=문구/사무용품">문구/사무용품</a>
 	<a href="ajaxList_p_list2.do?category=화방용품">화방용품</a>
 	<a href="ajaxList_p_list2.do?category=취미">취미</a>
 	<a href="ajaxList_p_list2.do?category=애견용품">애견용품</a>
 	<a href="ajaxList_p_list2.do?category=고양이용품">고양이용품</a>
 	<a href="ajaxList_p_list2.do?category=기타 동물용품">기타 동물용품</a>
 </div>
</li>

<li class="menu"><a href="#"> 여행/공연/e쿠폰 </a>
 <div class="submenu">
 	<a href="ajaxList_p_list2.do?category=여행/숙박/항공">여행/숙박/항공</a>
 	<a href="ajaxList_p_list2.do?category=티켓/공연">티켓/공연</a>
 	<a href="ajaxList_p_list2.do?category=e쿠폰/상품권">e쿠폰/상품권</a>
 	<a href="ajaxList_p_list2.do?category=기타 상품권">기타 상품권</a>
 </div>
</li>
<!-- 메뉴 끝 -->
</ul>
</div>
</div>

<!-- Community -->
<div class="xans-element xans-layout xans-layout-boardinfo">
<br>
<h2>COMMUNITY</h2>
<ul>
<li class="xans-record">
<a href="/board/notice/1">NOTICE</a>
</li>
<li class="xans-record">
<a href="QnA.do">Q&A</a>
</li>
</ul>
</div>

<!-- 왼쪽 하단 검색 부분 -->
<div class="search-container">
    <form action="#">
      <input size="10" type="text" placeholder="Search.." name="search">
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
  </div>
</div>



<!-- 오른쪽 사이드 부분 -->
<div id="sideright">
<div class="xans-element xans-layout xans-statelogoff">
<a id="Login_button" href="http://localhost:8080/Shj_Project/menu_plus_login.jsp">LOGIN</a>
<br>
<a id="Join_button" href="">JOIN US</a>
<br>
<br>
<a href="">MY PAGE</a>
<br>
<a href="withdrawal.jsp">MESSAGE</a>
<br>
<a href="">BOOKMARK</a>
<br>
</div>
</div>
<%@include file = 'Main_Addon.jsp' %>
<!-- NOTICE -->
<!-- (String)request.getAttribute("page") -->
<div id="wrap">
<div id="container">

<%@include file = 'QnA.jsp' %>

</div>
</div><!-- wrap -->


</body>
</html>