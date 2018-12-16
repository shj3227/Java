<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = "ko">
<head>
<meta charset="UTF-8">
<title>Sold Out</title>
<link href="CSS/P_MainCss.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div id="sidebgleft"></div>
<div id="sidebgright"></div>
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

<li class="menu">
  <a href="/category/cloth"> <b>의류/잡화</b> </a>
 <div class="submenu">
 	<a href="#">의류</a>
 	<a href="#">신발</a>
 	<a href="#">가방</a>
 	<a href="#">지갑/벨트</a>
 	<a href="#">쥬얼리/시계</a>
 	<a href="#">기타 의류잡화</a>
 </div>
</li>

<li class="menu">
 <a href="/category/beauty"> <b>뷰티</b> </a>
  <div class="submenu">
 	<a href="#">화장품</a>
 	<a href="#">향수</a>
 	<a href="#">헤어케어</a>
 	<a href="#">바디케어</a>
 	<a href="#">기타 뷰티제품</a>
 </div>
</li>

<li class="menu">
 <a href="/category/leisure"> <b>레저/자동차</b> </a>
 <div class="submenu">
 	<a href="#">자동차</a>
 	<a href="#">자전거</a>
 	<a href="#">등산용품</a>
 	<a href="#">골프용품</a>
 	<a href="#">기타 레저용품</a>
 	<a href="#">기타 자동차용품</a>
 </div>
</li>

<li class="menu">
 <a href="/category/food"> <b>식품</b> </a>
 <div class="submenu">
 	<a href="#">출산/임부용품</a>
 	<a href="#">유아화장품</a>
 	<a href="#">장난감</a>
 	<a href="#">아동의류</a>
 	<a href="#">아동신발</a>
 	<a href="#">유아가구</a>
 </div>
</li>

<li class="menu">
 <a href="/category/childbirth"> <b>출산/육아</b> </a>
 <div class="submenu">
 	<a href="#">출산/임부용품</a>
 	<a href="#">유아화장품</a>
 	<a href="#">장난감</a>
 	<a href="#">아동의류</a>
 	<a href="#">아동신발</a>
 	<a href="#">유아가구</a>
 </div>
</li>

<li class="menu">
 <a href="/category/health"> <b>생활/건강</b> </a>
 <div class="submenu">
 	<a href="#">주방용품</a>
 	<a href="#">청소/세탁</a>
 	<a href="#">생활잡화</a>
 	<a href="#">건강관리</a>
 	<a href="#">기타 생활용품</a>
 	<a href="#">기타 건강용품</a>
 </div>
</li>

<li class="menu">
 <a href="/category/interior"> <b>가구/인테리어</b> </a>
 <div class="submenu">
 	<a href="#">가정용가구</a>
 	<a href="#">사무용가구</a>
 	<a href="#">조명</a>
 	<a href="#">가타 가구용품</a>
 </div>
</li>

<li class="menu">
 <a href="/category/digital"> <b>디지털/가전/컴퓨터</b> </a>
 <div class="submenu">
 	<a href="#">TV</a>
 	<a href="#">계절가전</a>
 	<a href="#">생활가전</a>
 	<a href="#">컴퓨터</a>
 	<a href="#">휴대폰/태블릿</a>
 	<a href="#">기타 가전</a>
 </div>
</li>

<li class="menu">
 <a href="/category/books"> <b>도서</b> </a>
 <div class="submenu">
 	<a href="#">학습/참고서</a>
 	<a href="#">월간/잡지</a>
 	<a href="#">문학/과학/경영</a>
 	<a href="#">여행/취미/레저</a>
 	<a href="#">예술/디자인</a>
 	<a href="#">아동/어린이/전집</a>
 	<a href="#">만화책</a>
 	<a href="#">음반</a>
 	<a href="#">기타 도서</a>
 </div>
</li>

<li class="menu">
 <a href="/category/hobby"> <b>문구/취미/반려동물</b> </a>
 <div class="submenu">
 	<a href="#">문구/사무용품</a>
 	<a href="#">화방용품</a>
 	<a href="#">취미</a>
 	<a href="#">애견용품</a>
 	<a href="#">고양이용품</a>
 	<a href="#">기타 동물용품</a>
 </div>
</li>

<li class="menu">
 <a href="/category/treasure"> <b>여행/공연/e쿠폰</b> </a>
 <div class="submenu">
 	<a href="#">여행/숙박/항공</a>
 	<a href="#">티켓/공연</a>
 	<a href="#">e쿠폰/상품권</a>
 	<a href="#">기타 상품권</a>
 </div>
</li>

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
<a href="/board/qa/1">Q&A</a>
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
<a href="">LOGIN</a>
<br>
<a href="">JOIN US</a>
<br>
<br>
<a href="">MY PAGE</a>
<br>
<a href="">MESSAGE</a>
<br>
<a href="">BOOKMARK</a>
<br>
</div>
</div>


</body>
</html>