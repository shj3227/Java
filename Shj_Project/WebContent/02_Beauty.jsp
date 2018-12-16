<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Sold Out</title>
<!-- CSS 링크 -->
<link href="CSS/menu_all1.css" rel="stylesheet" type="text/css">
<!-- SEARCH 아이콘 링크 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<!-- 사이드메뉴 background 시작 -->
<div id="sidebgleft"></div>
<div id="sidebgright"></div>
<!-- 사이드메뉴 background 끝 -->

<!-- Sideleft 시작 -->
<div id="sideleft">
<h1 class="layout-logotop">
<a href="#">SOLD OUT</a></h1>

<!-- categoty div 시작 -->
<div id="category">
<h3 class="sub-title">Category</h3>
<!-- category div 안에서 position 잡기 -->
<div id="position">
<ul>

<!-- 주메뉴 -->
<li class="menu"><a href="#"> 의류/잡화 </a>
 <div class="submenu">
 	<a href="ajaxList_p_list2.do?category=%EC%9D%98%EB%A5%98">의류</a>
 	<a href="ajaxList_p_list2.do?category=%EC%8B%A0%EB%B0%9C">신발</a>
 	<a href="ajaxList_p_list2.do?category=%EA%B0%80%EB%B0%A9">가방</a>
 	<a href="ajaxList_p_list2.do?category=%EC%A7%80%EA%B0%91/%EB%B2%A8%ED%8A%B8">지갑/벨트</a>
 	<a href="ajaxList_p_list2.do?category=%EC%A5%AC%EC%96%BC%EB%A6%AC/%EC%8B%9C%EA%B3%84">쥬얼리/시계</a>
 	<a href="ajaxList_p_list2.do?category=%EA%B8%B0%ED%83%80%20%EC%9D%98%EB%A5%98%EC%9E%A1%ED%99%94">기타 의류잡화</a>
 </div>
</li>
<li class="menu"><a href="#"> 뷰티 </a>
 <div class="submenu">
 	<a href="ajaxList_p_list2.do?category=%ED%99%94%EC%9E%A5%ED%92%88">화장품</a>
 	<a href="ajaxList_p_list2.do?category=%ED%96%A5%EC%88%98">향수</a>
 	<a href="ajaxList_p_list2.do?category=%ED%97%A4%EC%96%B4%EC%BC%80%EC%96%B4">헤어케어</a>
 	<a href="ajaxList_p_list2.do?category=%EB%B0%94%EB%94%94%EC%BC%80%EC%96%B4">바디케어</a>
 	<a href="ajaxList_p_list2.do?category=%EA%B8%B0%ED%83%80%20%EB%B7%B0%ED%8B%B0%EC%A0%9C%ED%92%88">기타 뷰티제품</a>
 </div>
</li>

<li class="menu"><a href="#"> 레저/자동차 </a>
 <div class="submenu">
 	<a href="ajaxList_p_list2.do?category=%EC%9E%90%EB%8F%99%EC%B0%A8">자동차</a>
 	<a href="ajaxList_p_list2.do?category=%EC%9E%90%EC%A0%84%EA%B1%B0">자전거</a>
 	<a href="ajaxList_p_list2.do?category=%EB%93%B1%EC%82%B0%EC%9A%A9%ED%92%88">등산용품</a>
 	<a href="ajaxList_p_list2.do?category=%EA%B3%A8%ED%94%84%EC%9A%A9%ED%92%88">골프용품</a>
 	<a href="ajaxList_p_list2.do?category=%EA%B8%B0%ED%83%80%20%EB%A0%88%EC%A0%80%EC%9A%A9%ED%92%88">기타 레저용품</a>
 	<a href="ajaxList_p_list2.do?category=%EA%B8%B0%ED%83%80%20%EC%9E%90%EB%8F%99%EC%B0%A8%EC%9A%A9%ED%92%88">기타 자동차용품</a>
 </div>
</li>

<li class="menu"><a href="#"> 식품 </a>
 <div class="submenu">
 	<a href="ajaxList_p_list2.do?category=%EB%86%8D%EC%B6%95%EC%88%98%EC%82%B0">농축수산</a>
 	<a href="ajaxList_p_list2.do?category=%EA%B0%80%EA%B3%B5%EC%8B%9D%ED%92%88">가공식품</a>
 	<a href="ajaxList_p_list2.do?category=%EC%9D%8C%EB%A3%8C">음료</a>
 	<a href="ajaxList_p_list2.do?category=%EA%B3%BC%EC%9E%90/%EA%B0%84%EC%8B%9D">과자/간식</a>
 	<a href="ajaxList_p_list2.do?category=%EC%A6%89%EC%84%9D%EC%8B%9D%ED%92%88">즉석식품</a>
 	<a href="ajaxList_p_list2.do?category=%EA%B1%B4%EA%B0%95%EC%8B%9D%ED%92%88">건강식품</a>
 	<a href="ajaxList_p_list2.do?category=%EA%B8%B0%ED%83%80%EC%8B%9D%ED%92%88">기타식품</a>
 </div>
</li>

<li class="menu"><a href="#"> 출산/육아 </a>
 <div class="submenu">
 	<a href="ajaxList_p_list2.do?category=%EC%B6%9C%EC%82%B0/%EC%9E%84%EB%B6%80%EC%9A%A9%ED%92%88">출산/임부용품</a>
 	<a href="ajaxList_p_list2.do?category=%EC%9C%A0%EC%95%84%ED%99%94%EC%9E%A5%ED%92%88">유아화장품</a>
 	<a href="ajaxList_p_list2.do?category=%EC%9E%A5%EB%82%9C%EA%B0%90">장난감</a>
 	<a href="ajaxList_p_list2.do?category=%EC%95%84%EB%8F%99%EC%9D%98%EB%A5%98">아동의류</a>
 	<a href="ajaxList_p_list2.do?category=%EC%95%84%EB%8F%99%EC%8B%A0%EB%B0%9C">아동신발</a>
 	<a href="ajaxList_p_list2.do?category=%EC%9C%A0%EC%95%84%EA%B0%80%EA%B5%AC">유아가구</a>
 </div>
</li>

<li class="menu"><a href="#"> 생활/건강 </a>
 <div class="submenu">
 	<a href="ajaxList_p_list2.do?category=%EC%A3%BC%EB%B0%A9%EC%9A%A9%ED%92%88">주방용품</a>
 	<a href="ajaxList_p_list2.do?category=%EC%B2%AD%EC%86%8C/%EC%84%B8%ED%83%81">청소/세탁</a>
 	<a href="ajaxList_p_list2.do?category=%EC%83%9D%ED%99%9C%EC%9E%A1%ED%99%94">생활잡화</a>
 	<a href="ajaxList_p_list2.do?category=%EA%B1%B4%EA%B0%95%EA%B4%80%EB%A6%AC">건강관리</a>
 	<a href="ajaxList_p_list2.do?category=%EA%B8%B0%ED%83%80%20%EC%83%9D%ED%99%9C%EC%9A%A9%ED%92%88">기타 생활용품</a>
 	<a href="ajaxList_p_list2.do?category=%EA%B8%B0%ED%83%80%20%EA%B1%B4%EA%B0%95%EC%9A%A9%ED%92%88">기타 건강용품</a>
 </div>
</li>

<li class="menu"><a href="#"> 가구/인테리어 </a>
 <div class="submenu">
 	<a href="ajaxList_p_list2.do?category=%EA%B0%80%EC%A0%95%EC%9A%A9%EA%B0%80%EA%B5%AC">가정용가구</a>
 	<a href="ajaxList_p_list2.do?category=%EC%82%AC%EB%AC%B4%EC%9A%A9%EA%B0%80%EA%B5%AC">사무용가구</a>
 	<a href="ajaxList_p_list2.do?category=%EC%A1%B0%EB%AA%85">조명</a>
 	<a href="ajaxList_p_list2.do?category=%EA%B8%B0%ED%83%80%20%EA%B0%80%EA%B5%AC%EC%9A%A9%ED%92%88">기타 가구용품</a>
 </div>
</li>

<li class="menu"><a href="#"> 디지털/가전/컴퓨터 </a>
 <div class="submenu">
 	<a href="ajaxList_p_list2.do?category=TV">TV</a>
 	<a href="ajaxList_p_list2.do?category=%EA%B3%84%EC%A0%88%EA%B0%80%EC%A0%84">계절가전</a>
 	<a href="ajaxList_p_list2.do?category=%EC%83%9D%ED%99%9C%EA%B0%80%EC%A0%84">생활가전</a>
 	<a href="ajaxList_p_list2.do?category=%EC%BB%B4%ED%93%A8%ED%84%B0">컴퓨터</a>
 	<a href="ajaxList_p_list2.do?category=%ED%9C%B4%EB%8C%80%ED%8F%B0/%ED%83%9C%EB%B8%94%EB%A6%BF">휴대폰/태블릿</a>
 	<a href="ajaxList_p_list2.do?category=%EA%B8%B0%ED%83%80%20%EA%B0%80%EC%A0%84">기타 가전</a>
 </div>
</li>

<li class="menu"><a href="#"> 도서 </a>
 <div class="submenu">
 	<a href="ajaxList_p_list2.do?category=%ED%95%99%EC%8A%B5/%EC%B0%B8%EA%B3%A0%EC%84%9C">학습/참고서</a>
 	<a href="ajaxList_p_list2.do?category=%EC%9B%94%EA%B0%84/%EC%9E%A1%EC%A7%80">월간/잡지</a>
 	<a href="ajaxList_p_list2.do?category=%EB%AC%B8%ED%95%99/%EA%B3%BC%ED%95%99/%EA%B2%BD%EC%98%81">문학/과학/경영</a>
 	<a href="ajaxList_p_list2.do?category=%EC%97%AC%ED%96%89/%EC%B7%A8%EB%AF%B8/%EB%A0%88%EC%A0%80">여행/취미/레저</a>
 	<a href="ajaxList_p_list2.do?category=%EC%98%88%EC%88%A0/%EB%94%94%EC%9E%90%EC%9D%B8">예술/디자인</a>
 	<a href="ajaxList_p_list2.do?category=%EC%95%84%EB%8F%99/%EC%96%B4%EB%A6%B0%EC%9D%B4/%EC%A0%84%EC%A7%91">아동/어린이/전집</a>
 	<a href="ajaxList_p_list2.do?category=%EB%A7%8C%ED%99%94%EC%B1%85">만화책</a>
 	<a href="ajaxList_p_list2.do?category=%EC%9D%8C%EB%B0%98">음반</a>
 	<a href="ajaxList_p_list2.do?category=%EA%B8%B0%ED%83%80%20%EB%8F%84%EC%84%9C">기타 도서</a>
 </div>
</li>

<li class="menu"><a href="#"> 문구/취미/반려동물 </a>
 <div class="submenu">
 	<a href="ajaxList_p_list2.do?category=%EB%AC%B8%EA%B5%AC/%EC%82%AC%EB%AC%B4%EC%9A%A9%ED%92%88">문구/사무용품</a>
 	<a href="ajaxList_p_list2.do?category=%ED%99%94%EB%B0%A9%EC%9A%A9%ED%92%88">화방용품</a>
 	<a href="ajaxList_p_list2.do?category=%EC%B7%A8%EB%AF%B8">취미</a>
 	<a href="ajaxList_p_list2.do?category=%EC%95%A0%EA%B2%AC%EC%9A%A9%ED%92%88">애견용품</a>
 	<a href="ajaxList_p_list2.do?category=%EA%B3%A0%EC%96%91%EC%9D%B4%EC%9A%A9%ED%92%88">고양이용품</a>
 	<a href="ajaxList_p_list2.do?category=%EA%B8%B0%ED%83%80%20%EB%8F%99%EB%AC%BC%EC%9A%A9%ED%92%88">기타 동물용품</a>
 </div>
</li>

<li class="menu"><a href="#"> 여행/공연/e쿠폰 </a>
 <div class="submenu">
 	<a href="ajaxList_p_list2.do?category=%EC%97%AC%ED%96%89/%EC%88%99%EB%B0%95/%ED%95%AD%EA%B3%B5">여행/숙박/항공</a>
 	<a href="ajaxList_p_list2.do?category=%ED%8B%B0%EC%BC%93/%EA%B3%B5%EC%97%B0">티켓/공연</a>
 	<a href="ajaxList_p_list2.do?category=e%EC%BF%A0%ED%8F%B0/%EC%83%81%ED%92%88%EA%B6%8C">e쿠폰/상품권</a>
 	<a href="ajaxList_p_list2.do?category=%EA%B8%B0%ED%83%80%20%EC%83%81%ED%92%88%EA%B6%8C">기타 상품권</a>
 </div>
</li>
<!-- 메뉴 끝 -->
</ul>
</div>
<!-- category div 안의 position 끝 -->
</div>
<!-- category div  끝-->


<!-- COMMUNITY div 시작-->
<div class="layout-community">
<br>
<h3 class="sub-title">COMMUNITY</h3>
<ul>
 <li class="sub-community"><a href="#">NOTICE</a></li>
 <li class="sub-community"><a href="#">Q&A</a></li>
</ul>
</div>
<!-- COMMUNITY div 끝 -->


<!-- 왼쪽 하단 SEARCH 시작 -->
<div class="search-container">
    <form action="#">
      <input size="10" type="text" placeholder="Search.." name="search">
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
  </div>
<!-- 왼쪽 하단 SEARCH 끝 -->

</div>
<!-- Sideleft 끝 -->


<!-- Notice 시작 -->
<div id="wrap">
<div id="container">
<div id="contents">
<div class="xans-element- xans-board xans-board-listpackage-1002 xans-board-listpackage xans-board-1002">
<div class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board"> 
<div class="path">
<span>현재 위치</span>
	<ol>
		<li>
		<a href="/">홈</a>
		</li>
		<li>
		<a href="/주소 수정 필요">게시판</a>
		</li>
		<li title="현재 위치">
		<strong>BEAUTY</strong>
		</li>
	</ol>
</div><!-- path -->
<div class="title">
<br>
<br>
<br>
<br>
<h2 id="p_Title">
	<font color="#555555"></font>
</h2>
<p>    </p>
<p class="imgArea"></p>
</div> <!-- title -->
<div class="ec-base-table typeList gBorder">
<table class="no_table" border="1" summary>
<caption>게시판 목록</caption>
<colgroup class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002">
<col style="width:70px;">
<col style="width:auto;">
<col style="width:84px;">
<col style="width:77px;">
<col style="width:55px;" class="displaynone">
<col style="width:55px;" class="displaynone">
</colgroup>
<thead class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002">
	<tr style=" ">
	<th scope="col" id="th1">NO</th>
	<th scope="col" id="th1">CATEGORY</th>
	<th scope="col" id="th2">SUBJECT</th>
	<th scope="col" id="th1">NAME</th>
	<th scope="col" id="th1">DATE</th>
	<th scope="col" class="displaynone">HIT</th>
	<th scope="col" class="displaynone">RECOMMEND</th>
	</tr>
</thead>
<tbody class="xans-element- xans-board xans-board-list-1002 xans-board-list xans-board-1002 center" id="p_Contents">
		<!-- $login_page_url = /memeber/login.html
			$deny_access_url = /index.html
		  -->
	<tr class="background-color:#FFFFFF; color: #555555;" class="xans-record-">
	<td></td>
	<td></td>
	<td class="subject left txtBreak">
	<a href="/article/notice/1" style="color:#55555">검색 결과가 없습니다.</a>
	<span class="txtEm"></span>
	</td>
	<td></td>
	<td>
	<span class="txtNum"></span>
	</td>
	<td class="displaynone">
	<span class="txtNum"></span>
	</td>
	</tr>
	<tr class="background-color:#FFFFFF; color: #555555;" class="xans-record-">
	
</tbody>
</table>
<!-- 관리자만 글 쓸 수 있습니다 페이지 필요한지 필요없는지 모르겠어서 우선 만들지만 주석으로 달았음
<div class="xans-element- xans-board xans-board-buttonlist-1002 xans-board-buttonlist 
		xans-board-1002 ec-base-button typeBG displaynone">
<span class="gRight>
<a href="/주소" class"btnBlack displaynone> write </a>
</span>		
</div>
-->

<!-- List와 Write 버튼 -->
<div class="ec-base-button">
<span class="gLeft">
	<a>
	<!-- 관리자게시판, 스팸신고 등 들어갈 자리 필요하면 집어넣음 -->
	</a>
</span>

<!-- 주소 수정 필요 -->
<a id="showP_List" href="/board.list.html" class="btnWhite">List</a>

<span class="gRight">
	<!-- 주소 수정 -->
	<a id="p_Write" href="re_Wf_All2.jsp" class="btnBlack">WRITE</a>
</span>
</div>



<!-- PAGE 넘기는 부분 -->
<div class="xans-element- xans-board xans-board-paging-1002 xans-board-paigng
xans-board-1002 ec-base-paginate">
<a id="backPage" href=""><</a>
	<ol>
		<li class="xans-record-" id="totalPage">
			<a href="" class="this">1</a>
		</li>
	</ol>
<a id="nextPage" href="">></a>
	
<!-- 검색창 부분 -->
<form id="boardSerchForm" name action="/" method="get" enctype="multipart/form-data">
<input id="board_no" name="board_no" value="3" type="hidden">
<input id="page" name="page" value="1" type="hidden">
<input id="board_sort" name="board_sort" value type="hidden">
<div class="xans-element xans-board xans-board-serch-4 xans-board-serch xans-board-4">
<fieldset class="boardSerch">
<legend>게시물 검색</legend>
<p class="category displaynone"></p>
	<p>
	<select id="serch_key" name="search_key" fw-filter fw-label fw-msg>
	<option value="subject">제목</option>
	<option value="content">내용</option>
	<option value="subncon">제목+본문</option>
	<option value="member_name">글쓴이</option>
	</select>
	<input id="serch" name="serch" fw-filter fw-label fw-msg class="inputTypeText" placeholder value type="text">
	
	<!-- 주소 수정 -->
	<!-- <a href="#none" id="p_Search" onclick="serch()">Serch</a> 원본 -->
	<!-- <button type="button" id="p_Search" onclick="p_Search()">Serch</button> -->
	<a href="javascript:p_Search();" id="p_Search">Search</a>
	
	</p>
</fieldset>
</div>	
</form>	
</div><!-- table -->
</div> <!-- boardSort -->
</div> <!-- div board -->
</div> <!-- div listpackage -->
</div><!-- contents -->
</div><!-- container -->
</div><!-- wrap -->


<!-- Notice 끝 -->


<!-- Sideright 시작-->
<div id="sideright">
<!-- 로그인~북마크 메뉴 담는 div 시작 -->
<div class="layout-rightmenu">
<a id="Login_button" href="menu_plus_login.jsp">LOGIN</a>
<a id="Join_button" href="menu_plus_join.jsp">JOIN US</a>
<br>
<a href="#">MY PAGE</a>
<a href="#">MESSAGE</a>
<a href="#">BOOKMARK</a>
</div>
<!-- 로그인~북마크 메뉴 담는 div 끝-->



</div>
<!-- Sideright 끝-->

<%@ include file="post_Addon_Ver2.jsp"  %>


</body>
</html>