<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>멤버관리</title>
</head>
<body>
<hr>
<h2>등록하기</h2>
<hr>

<form action="insert.do" method="post">
	<!-- 가급적 name 값은 소문자로 구성합시다.  나중에 bean에서 다루기 쉽게 -->
	아이디 : <input type="text" name="id"><br> 
	비밀번호 : <input type="text" name="pw"><br>
	이름 : <input type="text" name="name"><br>
	닉네임 : <input type="text" name="nickname"><br>
	이메일 : <input type="text" name="email"><br>
	전화번호 : <input type="text" name="phonenum"><br>
	주소 : <input type="text" name="address"><br>
	
	<input type="submit" value="등록">&nbsp;
	<input type="reset" value="취소">
</form>

<hr>
<h2>검색하기</h2>
<form action="find.do">
이름:<input type="text" name="name"/>
<input type="submit" value="검색"/>
</form>

<hr>
<h2>삭제하기</h2>
<form action="delete.do">
이름:<input type="text" name="name"/>
	<input type="submit" value="삭제"/>
</form>

<hr>
<h2>학생 목록</h2>
<a href="list.do">리스트</a>

</body>
</html>

