<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
		<strong>NOTICE</strong>
		</li>
	</ol>
</div><!-- path -->
<div class="title">
<br>
<br>
<br>
<br>
<h2>
	<font color="#555555">NOTICE</font>
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
	<th scope="col">NO</th>
	<th scope="col">SUBJECT</th>
	<th scope="col">NAME</th>
	<th scope="col">DATE</th>
	<th scope="col" class="displaynone">HIT</th>
	<th scope="col" class="displaynone">RECOMMEND</th>
	</tr>
</thead>
<tbody class="xans-element- xans-board xans-board-list-1002 xans-board-list xans-board-1002 center">
		<!-- $login_page_url = /memeber/login.html
			$deny_access_url = /index.html
		  -->
	<tr class="background-color:#FFFFFF; color: #555555;" class="xans-record-">
	<td>1</td>
	<td class="subject left txtBreak">
	<a href="/article/notice/1" style="color:#55555">첫번째 제목</a>
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
<a href="/board.list.html" class="btnWhite">List</a>

<span class="gRight">
	<!-- 주소 수정 -->
	<a href="/board/write.html" class="btnBlack">WRITE</a>
</span>
</div>



<!-- PAGE 넘기는 부분 -->
<div class="xans-element- xans-board xans-board-paging-1002 xans-board-paigng
xans-board-1002 ec-base-paginate">
<a href="?board no=1&page=1"><</a>
	<ol>
		<li class="xans-record-">
			<a href="?board no=1&page1" class="this">1</a>
		</li>
	</ol>
	<a href="?board no=1&page=1">></a>
	
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
	<option value="member_name">글쓴이</option>
	</select>
	<input id="serch" name="serch" fw-filter fw-label fw-msg class="inputTypeText" placeholder value type="text">
	
	<!-- 주소 수정 -->
	<a href="#none" onclick="/serch">Serch</a>
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

