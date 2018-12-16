<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Sold Out</title>
<!-- CSS 링크 -->
<link href="CSS/menu.css" rel="stylesheet" type="text/css">
<!-- SEARCH 아이콘 링크 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<!-- CSS파일은 menu.css 하나로 통합됨 -->

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
<h2 class="sub-title">Category</h2>
<!-- category div 안에서 position 잡기 -->
<div id="position">
<ul>

<!-- 주메뉴 -->
<li class="menu"><a href="#"> 의류/잡화 </a>
 <div class="submenu">
 	<a href="#">의류</a>
 	<a href="#">신발</a>
 	<a href="#">가방</a>
 	<a href="#">지갑/벨트</a>
 	<a href="#">쥬얼리/시계</a>
 	<a href="#">기타 의류잡화</a>
 </div>
</li>
<li class="menu"><a href="#"> 뷰티 </a>
 <div class="submenu">
 	<a href="#">화장품</a>
 	<a href="#">향수</a>
 	<a href="#">헤어케어</a>
 	<a href="#">바디케어</a>
 	<a href="#">기타 뷰티제품</a>
 </div>
</li>

<li class="menu"><a href="#"> 레저/자동차 </a>
 <div class="submenu">
 	<a href="#">자동차</a>
 	<a href="#">자전거</a>
 	<a href="#">등산용품</a>
 	<a href="#">골프용품</a>
 	<a href="#">기타 레저용품</a>
 	<a href="#">기타 자동차용품</a>
 </div>
</li>

<li class="menu"><a href="#"> 식품 </a>
 <div class="submenu">
 	<a href="#">출산/임부용품</a>
 	<a href="#">유아화장품</a>
 	<a href="#">장난감</a>
 	<a href="#">아동의류</a>
 	<a href="#">아동신발</a>
 	<a href="#">유아가구</a>
 </div>
</li>

<li class="menu"><a href="#"> 출산/육아 </a>
 <div class="submenu">
 	<a href="#">출산/임부용품</a>
 	<a href="#">유아화장품</a>
 	<a href="#">장난감</a>
 	<a href="#">아동의류</a>
 	<a href="#">아동신발</a>
 	<a href="#">유아가구</a>
 </div>
</li>

<li class="menu"><a href="#"> 생활/건강 </a>
 <div class="submenu">
 	<a href="#">주방용품</a>
 	<a href="#">청소/세탁</a>
 	<a href="#">생활잡화</a>
 	<a href="#">건강관리</a>
 	<a href="#">기타 생활용품</a>
 	<a href="#">기타 건강용품</a>
 </div>
</li>

<li class="menu"><a href="#"> 가구/인테리어 </a>
 <div class="submenu">
 	<a href="#">가정용가구</a>
 	<a href="#">사무용가구</a>
 	<a href="#">조명</a>
 	<a href="#">가타 가구용품</a>
 </div>
</li>

<li class="menu"><a href="#"> 디지털/가전/컴퓨터 </a>
 <div class="submenu">
 	<a href="#">TV</a>
 	<a href="#">계절가전</a>
 	<a href="#">생활가전</a>
 	<a href="#">컴퓨터</a>
 	<a href="#">휴대폰/태블릿</a>
 	<a href="#">기타 가전</a>
 </div>
</li>

<li class="menu"><a href="#"> 도서 </a>
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

<li class="menu"><a href="#"> 문구/취미/반려동물 </a>
 <div class="submenu">
 	<a href="#">문구/사무용품</a>
 	<a href="#">화방용품</a>
 	<a href="#">취미</a>
 	<a href="#">애견용품</a>
 	<a href="#">고양이용품</a>
 	<a href="#">기타 동물용품</a>
 </div>
</li>

<li class="menu"><a href="#"> 여행/공연/e쿠폰 </a>
 <div class="submenu">
 	<a href="#">여행/숙박/항공</a>
 	<a href="#">티켓/공연</a>
 	<a href="#">e쿠폰/상품권</a>
 	<a href="#">기타 상품권</a>
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
<h2 class="sub-title">COMMUNITY</h2>
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



<!-- 글쓰기 폼 시작 -->
    <!-- 일정크기만큼 유지하면서 중앙으로 정렬 -->
    <div id="wrap">
    <div class="container">
            <div id="contents">
              <select id="cate_1" name="cate_1" onchange="changeCate(this, 1)">
              <option selected="selected">-----</option>
              <option value="100">의류/잡화</option>
              <option value="200">뷰티</option>
              <option value="300">레저/자동차</option>
              <option value="400">식품</option>
              <option value="500">출산/육아</option>
              <option value="600">생활/건강</option>
              <option value="700">가구/인테리어</option>
              <option value="800">디지털/가전/컴퓨터</option>
              <option value="900">도서</option>
              <option value="1000">문구/취미/반려동물</option>
              <option value="1100">여행/공연/E쿠폰</option>
              </select>
              
              <select id="cate_2" name="cate_2">
              <option value="beauty" selected="selected">-----</option>
              <option value="101">의류</option>
              <option value="102">신발</option>
              <option value="103">가방</option>
              <option value="104">지갑/벨트</option>
              <option value="105">쥬얼리/시계</option>
              <option value="106">기타 의류잡화</option>
              
              <option value="201">화장품</option>
              <option value="202">향수</option>
              <option value="203">헤어케어</option>
              <option value="204">바디케어</option>
              <option value="204">기타 뷰티제품</option>
              
              <option value="301">자동차</option>
              <option value="302">자전거</option>
              <option value="303">등산 용품</option>
              <option value="304">골프 용품</option>
              <option value="305">기타 레저용품</option>
              <option value="306">기타 자동차용품</option>
              
              <option value="401">농축수산</option>
              <option value="402">가공식품</option>
              <option value="403">음료</option>
              <option value="404">과자/간식</option>
              <option value="405">즉석식품</option>
              <option value="406">건강식품</option>
              <option value="406">기타식품</option>
              
              <option value="501">출산용품</option>
              <option value="502">유아화장품</option>
              <option value="503">장난감</option>
              <option value="504">아동 의류</option>
              <option value="505">아동 신발</option>
              <option value="506">유아 가구</option>
              
              <option value="601">주방용품</option>
              <option value="602">청소/세탁</option>
              <option value="603">생활잡화</option>
              <option value="604">건강관리</option>
              <option value="605">기타 생활용품</option>
              <option value="606">기타 건강용품</option>
              
              <option value="701">가정용기구</option>
              <option value="702">사무용기구</option>
              <option value="703">조명</option>
              <option value="704">기타 가구용품</option>
              
              <option value="801">TV</option>
              <option value="802">계절가전</option>
              <option value="803">생활가전</option>
              <option value="804">컴퓨터</option>
              <option value="805">휴대폰/태블릿</option>
              <option value="806">기타 가전</option>
              
              <option value="901">학습/참고서</option>
              <option value="902">월간/잡지</option>
              <option value="903">문학/과학/경영</option>
              <option value="904">여행/취미/레저</option>
              <option value="905">예술/디자인</option>
              <option value="906">아동/어린이/전집</option>
              <option value="907">만화책</option>
              <option value="908">음반</option>
              <option value="909">기타 도서</option>
              
              <option value="1001">문구/사무용품</option>
              <option value="1002">화방용품</option>
              <option value="1003">취미</option>
              <option value="1004">애견용품</option>
              <option value="1005">고양이용품</option>
              <option value="1006">기타 동물용품</option>
              
              <option value="1101">여행/숙박/항공</option>
              <option value="1102">티켓/공연</option>
              <option value="1103">e쿠폰/상품권</option>
              <option value="1104">기타 상품권</option>
              
              </select>
              
<script type="text/javascript">
// 카테고리 로드
defineAjax();
var cateDepth = parseInt("3", 10);

function changeCate(item, depth) {
	var f = document.Frm;
	var value;

	if (cateDepth > depth) {
		++depth;
		if (item) value = item.options[item.selectedIndex].value;
		else value = "0";
		var url = "http://demo4.mallshopping.co.kr/common/ajax/exec_getCategory.asp?parent="+value+"&depth="+depth;
		returnExec = "execChangeCate";
		ajax.execute("GET", url, "", returnExec);
	}
}

function execChangeCate(value) {
	var f = document.Frm;
	var i, len;
	var objSelect, objOption;
	var cms;

	if (value.stripspace() != "") {
		objJson = JSON.parse(value);
		if (objJson != false){
			var depth = parseInt(objJson.item.depth, 10);

			for (i=depth; i<=cateDepth; i++) {
				objSelect = f["cate_"+i];
				selectRemoveAll(objSelect);
				selectAddList(objSelect, '---', '');
			}

			objSelect = f["cate_"+depth];
			selectRemoveAll(objSelect);
			selectAddList(objSelect, '---', '');

			for (i=0, len=objJson.item.cateList.length; i<len; i++) {
				cms = (typeof (objJson.item.cateList[i].cms) == 'undefined') ? 0 : objJson.item.cateList[i].cms;
				objOption = document.createElement("OPTION");
				objOption.text = objJson.item.cateList[i].name+" ["+cms+"%]";
				objOption.value = objJson.item.cateList[i].code;
				objOption.setAttribute('catename', objJson.item.cateList[i].name);
				objOption.setAttribute('catecms', cms);
				objOption.setAttribute('child', objJson.item.cateList[i].child);
				objSelect.options.add(objOption);
			}
		}
		objJson = null;
	}
}

function initCate() {
	changeCate(null, 0);
}
</script>
				<br>
              <input type="text" id="Wfc1" placeholder="글 제목을 입력하세요." />
           
            
         
            
            <div class="form-inline">
                <textarea id="txt" class="form-control" style="width:400px; resize:none" rows="5" placeholder="글 내용을 입력하세요."></textarea>
            </div>
            
            <div class="form-inline">
                <div class="form-group">
                    <label>첨부파일</label>
                    <input type="file" style="width:400px" placeholder="첨부파일을 선택하세요." />
                </div>
            </div>

            
            <hr />
            <div align="center">
				<input class="success" type="button" value="완료">
                <input class="primary"type="button" value="글목록">
            </div>
        
    <script src="ckeditor/ckeditor.js"></script>
    <script>
        CKEDITOR.replace('txt');
    </script>
     </div><!-- end contents -->    
        </div><!-- end container -->
    </div><!-- end wrap -->


<!-- 글쓰기 폼 끝 -->

<!-- Sideright 시작-->
<div id="sideright">
<!-- 로그인~북마크 메뉴 담는 div 시작 -->
<div class="layout-rightmenu">
<a href="#">LOGIN</a>
<a href="#">JOIN US</a>
<br>
<a href="#">MY PAGE</a>
<a href="#">MESSAGE</a>
<a href="#">BOOKMARK</a>

</div>
<!-- 로그인~북마크 메뉴 담는 div 끝-->



</div>
<!-- Sideright 끝-->





</body>
</html>