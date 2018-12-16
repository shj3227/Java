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
	
	function changePwSubmit()
	{
		if(mailCheck == false)
		{
			//true랑 false만들어서 한번만 클릭하게 만들기. false일때 들어가고 true일때 한번만 눌러! 하고 경고 보내기.
			var email =	$("input[name=inputEmail]").eq(0).val() +"@"
						+ $("input[name=inputEmail]").eq(1).val();
			$("input[name=email]").eq(0).val(email);
			mailCheck = true;
			document.findPw.action = "changePw.do";
			document.findPw.submit(); 
		}
		else
		{
			alert("지금 처리중입니다 기다려주십시요.");
		}
		
				
	}
	
</script>