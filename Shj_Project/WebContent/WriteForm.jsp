<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>글쓰기 폼</title>
</head>
    <!-- 일정크기만큼 유지하면서 중앙으로 정렬 -->
    <form name = "login" action="insert.do" method = "post">
    <div align="center" class="container">
        <!-- <div align="left" style="width:600px; border:1px solid #cccccc; padding:20px; padding-left:50px; margin-top:20px; background-color:#ffffff"> -->
            <div class="form-inline" style="margin-bottom:10px">
                <label style="width:90px">제목</label>
                <input name="id" type="text" class="form-control" style="width:400px" placeholder="글 제목을 입력하세요." />
            </div>
            
            <div class="form-inline" style="margin-bottom:10px">
                <label style="width:90px">작성자</label>
                <input name="name" type="text" class="form-control" style="width:200px" placeholder="작성자를 입력하세요." />
            </div>
            
            <div class="form-inline" style="margin-bottom:10px">
                <label style="width:90px">암호</label>
                <input name="pw" type="password" class="form-control" style="width:200px" placeholder="암호를 입력하세요." />
            </div>
            
                <textarea name="address" id="address" value="11" row="10" cols="80"  ></textarea>
                <input type="hidden" name="webTest" id="test11" value="11"/>
            
            <div class="form-inline" style="margin-bottom:10px">
                <div class="form-group">
                    <label style="width:90px">첨부파일</label>
                </div>
                <div class="form-group">
                    <input type="file" style="width:400px" placeholder="첨부파일을 선택하세요." />
                </div>
            </div>

            
            <hr />
            <div align="center" style="margin-bottom:10px">
          	 	<button type="button" class="log_button" onclick ="loginSubmit()">Test</button>
				<input type="button" style="margin-right:10px" class="btn btn-success" value="완료">
                <input type="button" class="btn btn-primary" value="글목록">
            </div>
            
        </div>
<!--     </div> -->
    
    <script src="ckeditor/ckeditor.js"></script>
    <script>
	    CKEDITOR.replace('address',{
	        filebrowserUploadUrl:'./FileUpload.jsp'
	       });
	    /*
	    ?'
	        +'realUrl=/WebContent/upload/'
	    CKEDITOR.replace('address',{
	        filebrowserUploadUrl: './WebContent/upload'
	    });
	    */
        //${pageContext.request.contextPath}/file/ckeditorImageUpload.do
        function loginSubmit(){
        	var data = CKEDITOR.instances.address.getData();
        	document.getElementById('test11').value  = data;
			document.login.action = "Write_Read_Test.jsp";
			document.login.submit(); 
		 }
        function test(){
        	var data = CKEDITOR.instances.address.getData();
        	document.getElementById('test11').value  = data;
        	
        	console.log(data);
        }
        
        
    </script>
    </form>
</body>
</html>

