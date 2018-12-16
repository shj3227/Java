<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String userID = "";
	if(session.getAttribute("userID") != null)
	{
		userID = (String)session.getAttribute("userID");
		
	}
	out.println("<input id=\"userID\" type=\"hidden\" value=\""+ userID +"\">");

%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<button type="button" class="log_button" onclick ="checkSubmit()">JOIN</button> 
<!-- 서브밋이 아니라 버튼이면 온클릭 펑션을 만들어줘야할 수도 있다. -->
<script>

 $(document).ready(function(){
	if($('#userID').val().length > 0)
	{
		 location.href = "page_test.jsp";
	}
	 
	 $('#selectID').change(function(){
         var selectedText = $("#selectID option:selected").text();
         if(selectedText == "직접입력"){
        	 $('#selectIdInput').val("");
         }
         else{
        	 $('#selectIdInput').val(selectedText); 
         }
        
     })
 });
 
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
	
	if($("input[name=id]").val().length >= 5)
	{
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
	else
	{
		alert("아이디는 5자이상으로해주십시요.");
	}
	
	
}

function checkSubmit(){
	if(checkId == false){
		alert("중복아이디체크를 해주십시요")
	}
	else{
		//여기서부터는 이제 null값 체크해주기
		var inputName = ["id", "pw", "name", 
			"nickname", "email", "phonenum",
			"zipcode", "address"];
		for(var i=0; i < inputName.length; i++)
		{
			for(var o = 0; o < $("input[name="+inputName[i]+"]").length; o++)
			{
				if($("input[name="+inputName[i]+"]").val().length == 0)
				{
					return alert("빈 칸을 모두 채워주십시요");
				}
			}
		}
		//여기까지
		document.join.action = "insert.do";
		document.join.submit(); 
	}
	
}

//다음 api
// 우편번호 찾기 찾기 화면을 넣을 element
var element_wrap = document.getElementById('wrap2');
//합쳐있는거는 wrap부분을 다르게 해줘야한다 원래는 wrap 이유는 위에 있는놈대문에 다 뒤짐.

function foldDaumPostcode() {
    // iframe을 넣은 element를 안보이게 한다.
    element_wrap.style.display = 'none';
}

function sample3_execDaumPostcode() {
    // 현재 scroll 위치를 저장해놓는다.
    var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
    new daum.Postcode({
        oncomplete: function(data) {
            // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullAddr = data.address; // 최종 주소 변수
            var extraAddr = ''; // 조합형 주소 변수

            // 기본 주소가 도로명 타입일때 조합한다.
            if(data.addressType === 'R'){
                //법정동명이 있을 경우 추가한다.
                if(data.bname !== ''){
                    extraAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if(data.buildingName !== ''){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample3_postcode').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('sample3_address').value = fullAddr;

            // iframe을 넣은 element를 안보이게 한다.
            // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
            element_wrap.style.display = 'none';

            // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
            document.body.scrollTop = currentScroll;
        },
        // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
        onresize : function(size) {
            element_wrap.style.height = size.height+'px';
        },
        width : '100%',
        height : '100%'
    }).embed(element_wrap);

    // iframe을 넣은 element를 보이게 한다.
    element_wrap.style.display = 'block';
}

</script>