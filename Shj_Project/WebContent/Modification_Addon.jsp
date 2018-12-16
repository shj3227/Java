<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.ex.test.signUpDTO"%>

<%
	System.out.print(request.getAttribute("SelectById"));
	signUpDTO dto = new signUpDTO();
	if(request.getAttribute("SelectById") != null)
	//null값이 들어오면 하는 일인데. 사실 null값이 들어오면 그냥 안나오게하는게 맞지 않나? ㅎㅎ;
	//너모..기찮고... 또 그걸 만들면.. 실험할때 귀차나지고...... 몰러..아...
	{
		dto = (signUpDTO)request.getAttribute("SelectById");
		System.out.println(dto);
		System.out.println("이름은:" + dto.getName());
		out.println("<input type=\"hidden\" id=\"Id\" value=\""+dto.getId() +"\">");
		System.out.print(dto.getName());
		out.println("<input type=\"hidden\" id=\"Name\" value=\""+dto.getName() +"\">");
		out.println("<input type=\"hidden\" id=\"Nickname\" value=\""+dto.getNickname() +"\">");
		String Email = dto.getEmail();
		System.out.println(Email);
		String[] Emails = Email.split("@");
		out.println("<input type=\"hidden\" id=\"Email1\" value=\""+Emails[0].trim() +"\">");
		out.println("<input type=\"hidden\" id=\"Email2\" value=\""+Emails[1].trim() +"\">");
		String Phonenum = dto.getPhonenum();
		String[] Phonenums = Phonenum.split("-");
		out.println("<input type=\"hidden\" id=\"Phonenum1\" value=\""+Phonenums[1].trim() +"\">");
		out.println("<input type=\"hidden\" id=\"Phonenum2\" value=\""+Phonenums[2].trim() +"\">");
		out.println("<input type=\"hidden\" id=\"Zipcode\" value=\""+dto.getZipcode() +"\">");
		out.println("<input type=\"hidden\" id=\"Address\" value=\""+dto.getAddress() +"\">");
		out.println("<input type=\"hidden\" id=\"Grade\" value=\""+dto.getGrade() +"\">");
	}
	
%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
//저스트 리멤버. id.. 그것은 유니크한것..때문이 온리완..... name으로 검색하시라우..
var id2;
	$(document).ready(function(){
		 id2 = document.getElementById("Id").value;
		console.log(id2);
		//자바 dom
		$("input[name=id]").val(id2);
		//제이쿼리 돔
		$("input[name=name]").val($("#Name").val());
		$("input[name=nickname]").val($("#Nickname").val());
		
		$("input[name=inputEmail]").eq(0).val($("#Email1").val());
		$("input[name=inputEmail]").eq(1).val($("#Email2").val());
		$("input[name=inputPhonenum]").eq(0).val($("#Phonenum1").val());
		$("input[name=inputPhonenum]").eq(1).val($("#Phonenum2").val());
		$("input[name=zipcode]").val($("#Zipcode").val());
		$("input[name=address]").val($("#Address").val());
		
	});
	
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
	
	function modMember()
	{
		alert($("input[name=inputPhonenum]").length);
		//여기서부터는 이제 null값 체크해주기
		var inputName = ["id", "pw", "name", 
			"nickname", "inputEmail", "inputPhonenum",
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
		//true랑 false만들어서 한번만 클릭하게 만들기. false일때 들어가고 true일때 한번만 눌러! 하고 경고 보내기.
		var email =	$("input[name=inputEmail]").eq(0).val() +"@"
					+ $("input[name=inputEmail]").eq(1).val();
		$("input[name=email]").eq(0).val(email);
		
		var phonenum =	$("select[name=inputPhonenum]").eq(0).val() + "-"+
		$("input[name=inputPhonenum]").eq(0).val() +"-"
		+ $("input[name=inputPhonenum]").eq(1).val();
		$("input[name=phonenum]").eq(0).val(phonenum);
		//여기까지가 히든 부분에다가 입력.
		
		
		//document.modification.action = "update.do";
		//document.modification.submit(); 
		
		
				
	}
	
</script>
