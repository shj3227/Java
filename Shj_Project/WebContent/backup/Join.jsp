<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html leng="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<link href="JoinCss.css" rel="stylesheet" type="text/css">
<script>

var checkId = false;

function loadData() {
	
	var hostIndex = location.href.indexOf( location.host ) + location.host.length;
	contextPath = location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
	
	//url = "http://"+location.host+contextPath+"/ajaxList.do?_=" +new Date().getTime();
	//이런식으로 영향은 가는거없이 주소만 바꿔주는걸 해도 존나 잘됨.
	//방식을 아예 바꿔버려야겟다. 진자로.링크따오는 방식으로 하니까 자꾸 헌 페이지에서 불러오는 작업을 하는 듯 함
	
	//alert(url);
	
	$.ajax({
	    cache: false,
	    success: function(data) {
	    	//alert(data);
			parseJSON(data);
	    },
	    url: "http://"+location.host+contextPath+"/ajaxList.do"
	});
	
	/*
	var xhttp = new XMLHttpRequest();
	
	xhttp.onreadystatechange = function(){
		if(this.readyState == 4 && this.status == 200){
			parseJSON(this.responseText);
		}
	}
	
	xhttp.open("GET", url, true);
	xhttp.setRequestHeader("Cache-Control", "max-age=0");
	xhttp.send();
	*/
	
}

function parseJSON(jsonText){

	//var jsonObj = JSON.parse(jsonText);
	
	//alert(jsonText);  
	//자기가 알아서 파싱한다? 너무 신기하자너~
	var jsonObj = jsonText;
	
	
	
	var member = jsonObj.member;
	var i;
	var sameId = false;
	
	
	for (i = 0; i < member.length; i++) { 
		  if(document.forms["join"]["id"].value == member[i].id)
			  {
			  alert("같은 아이디가 있습니다");
			  sameId = true;
			  }
	 }
	if(sameId == true){
		checkId = false;
	}
	else{
		alert("사용하셔도 좋습니다.");
		checkId  = true;
	}
}

function checkSubmit(){
	if(checkId == false){
		alert("중복아이디체크를 해주십시요")
	}
	else{
		document.join.action = "insert.do";
		document.join.submit(); 
	}
	
}

</script>
<body>

<div class="container">

  <table class="table">
    <thead>
      <tr>
        <th>JOIN US</th>
      </tr>
    </thead>
    
    <tbody>
    <form name = "join" action="insert.do" method = "post">
      <tr>
        <td class="c1">ID</td>
        <td>     
		 <input name="id" type="text" size="19" placeholder="아이디를 입력하세요" value=""> 
		<button type="button" onclick="loadData()">가져오기</button>
		</td>
      </tr>
      
      <tr>
        <td class="c1">PASSWORD</td>
        <td>
        <input name="pw" type="password" size="20" placeholder="비밀번호를 입력하세요"value="">
        </td>
      </tr>
      <tr>
        <td class="c1">NAME</td>
        <td>
        <input name="name" type="text" size="20" placeholder="이름을 입력하세요"value="">
        </td>
      </tr>
      
      <tr>
        <td class="c1">NICKNAME</td>
        <td>
        <input name="nickname" type="text" size="20" placeholder="닉네임을 입력하세요"value="">
        </td>
      </tr>
      <!-- value부분에 " " 이런식으로 빈칸을 만들면 나중에 합칠 떄 그 공백도 가지고옵니다. 공백 + 입력한 문자 개념인듯 -->
       <tr>
        <td class="c1">EMAIL</td>
        <td>     
		 <input name="email" type="text" size="20" value=""> @ <input name="email" type="text" size="20" value=""> 
			<select name="mail">
				<option selected>직접입력</option>
				<option>naver.com</option>
				<option>daum.net</option>
				<option>gmail.com</option>
			</select></td>
      </tr>
      
       <tr>
        <td class="c1">PHONE</td>
        <td>     
        <select name = "phonenum">
        	<option>010</option>
			<option>011</option>
			<option>016</option> 
        </select>
		 - <input name="phonenum" type="text" size="5" value=""> - <input name="phonenum" type="text" size="5" value=""> 
			<input type="checkbox" name="agree">SMS수신동의</td>
		</td>
      </tr>
      
       <tr>
        <td class="c1" style="vertical-align: top;" rowspan="3" >ADDRESS</td>
		<td>
		<input name= "address" type="text" size="15" value="" placeholder="우편번호"> 
		<!-- 위에 우편번호와 주소를 구분해주지 않으면, 네임이 같으면 배열을 받을 수도 있다. 합치는게 아니라 그 위에 덮씌우는 거 수도 있음. -->
		<input class="button1" type="button" value="우편번호 찾기">
		<BR>
		<input name="address" type="text" size="50" value="" >
		</td>
      </tr>
      
    </tbody>
  </table>
  <button type="button" class="log_button" onclick ="checkSubmit()">JOIN</button> 
  <!-- 서브밋이 아니라 버튼이면 온클릭 펑션을 만들어줘야할 수도 있다. -->
</div>
</form>
<br>
 



</body>
</html>