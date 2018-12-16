<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
</head>
<link href="./CSS/JoinCss.css" rel="stylesheet" type="text/css">
<body>


<div class="container">

	<div class="titleArea">
	<h2>JOIN US</h2>
	</div>
	<br>
	<form name = "join" action="insert.do" method = "post">
  <table class="table">  
    <tbody>
      <tr>
        <td class="joinc1">ID</td>
        <td>     
		 <input name="id" type="text"  placeholder="아이디를 입력하세요" value=""> 
		 <button type="button" class="button" onclick="loadData()">중복체크</button>
		 <!-- 버튼에 대한것도 만들어 줄것. -->
		</td>
      </tr>
      
      <tr>
        <td class="joinc1">PASSWORD</td>
        <td>
        <input name="pw" type="password" placeholder="비밀번호를 입력하세요"value="">
        </td>
      </tr>
      <tr>
        <td class="joinc1">NAME</td>
        <td>
        <input name="name" type="text" placeholder="이름을 입력하세요"value="">
        </td>
      </tr>
      
      <tr>
        <td class="joinc1">NICKNAME</td>
        <td>
        <input name="nickname" type="text" placeholder="닉네임을 입력하세요"value="">
        </td>
      </tr>
      
       <tr>
        <td class="joinc1">EMAIL</td>
        <td>     
		 <input name="email" type="text" value=""> @ <input id="selectIdInput" name="email" type="text" value=""> 
			<select id="selectID">
			<!-- 이 부분은 다시 만들것. 왜냐면 셀렉티드가 되면서 자동입력이 되게끔. -->
				<option selected>직접입력</option>
				<option>naver.com</option>
				<option>daum.net</option>
				<option>gmail.com</option>
			</select></td>
      </tr>
      
       <tr>
        <td class="joinc1">PHONE</td>
        <td>     
        <select name="phonenum">
        	<option selected>010</option>
			<option>011</option>
			<option>016</option>
			<option>017</option>
			<option>018</option>
			<option>019</option>
        </select>
		 - <input class="joinc2" name="phonenum" type="text"  value=""> - <input class="joinc2" name="phonenum" type="text" value=""> 
		</td>
      </tr>
      
       <tr>
        <td class="joinc1">ADDRESS</td>
		<td>
		<input class="joinc2" id="sample3_postcode" name="zipcode" type="text" value="" placeholder="우편번호"> 
		<input class="joinc3" onclick="sample3_execDaumPostcode()" type="button" value="우편번호 찾기" style="color:#000; font:12px/1 굴림, Gulim, sans-serif;">
		<div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
		<img src="//t1.daumcdn.net/localimg/localimages/07/postcode/320/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
		</div>
		<BR>
		<input class="joinc4" id="sample3_address" name="address" type="text" value="">
		</td>
      </tr>
      
    </tbody>
  </table>
  <%@ include file="Join_Addon.jsp" %>
  </form>
</div>
<br>
 


</body>
</html>