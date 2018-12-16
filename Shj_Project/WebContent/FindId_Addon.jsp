<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>

	$(document).ready(function(){
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
	
	var mailCheck = false;
	
	function findIdSubmit()
	{
		//이부분에서 null값을 체크해주는 부분이 있었으면 좋겠군.
		//아직은 안만들고 한번에 몰아서한다 귀찮으니까 ㅎㅎ
		//제발 기억나길.. 누군가 이 글을 본다면 알려주길....
		if(mailCheck == false)
		{
			//true랑 false만들어서 한번만 클릭하게 만들기. false일때 들어가고 true일때 한번만 눌러! 하고 경고 보내기.
			var email =	$("input[name=inputEmail]").eq(0).val() +"@"
						+ $("input[name=inputEmail]").eq(1).val();
			$("input[name=email]").eq(0).val(email);
			mailCheck = true;
			document.findPw.action = "findId.do";
			document.findPw.submit(); 
		}
		else
		{
			alert("지금 처리중입니다 기다려주십시요.");
		}
		
				
	}
	
</script>