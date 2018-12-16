<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.FileRenamePolicy"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>

<%@ page import="java.util.Enumeration" %>

<%@ page import="java.io.File" %>

<%@ page import="java.awt.image.BufferedImage" %>
<%@ page import="javax.imageio.ImageIO" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>파일업로드 결과</title>
</head>
<body>
<%
	String realDir = "http://localhost:8080/Shj_Project/upload/";  //실제 저장될 파일경로
	String realDir2 = "C:/Users/shj/Dropbox/kmove07/JavaWork/Shj_Project/WebContent/upload/";
	//http://localhost:8080/Shj_Project/upload
	//
	//디플로이먼트? 개발경로 찾기?
	String sFunc = request.getParameter("CKEditorFuncNum");
	//String realUrl = request.getParameter("realUrl");
	/*
	String realUrl2 = System.getProperty("user.dir")   // 현재 작업 경로
			+ File.separator       // Windows( \ ), UNIX( / )
			+ "upload";
	*/
	
	System.out.println(sFunc);
	// MultipartRequest 객체 생성 준비
	//String saveDirectory = "C:\\tomcat\\upload";  // 파일 저장 경로
	
	// 서버에서(서블릿) 어디에 어느 폴더에서 서블릿으로 변환되는지 확인
	ServletContext context = getServletContext();
	String saveDirectory = context.getRealPath("upload");
	System.out.println("업로드 경로: " + realDir2);
	
	
	int maxPostSize = 100 * 1024 * 1024;   // POST 받을 최대 파일 사이즈 5M
										// 1KBYTE = 1024 BYTE
	                                    // 1MBYTE = 1024 KBYTE
	String encoding = "utf-8";        // response 인코딩
	
	FileRenamePolicy policy = new DefaultFileRenamePolicy();  // 중복파일정책
		
	MultipartRequest multi = null;
	
	
	try{
		// MultipartRequest 생성 단계에서 이미! 파일은 저장됨.
		multi = new MultipartRequest(
				request,
				realDir2,
				maxPostSize,
				encoding,
				policy
				);
		
	} catch(Exception e){
		e.printStackTrace();
		out.println("파일 처리 예외 발생");
	}
	
	Enumeration names = null;
		
	names = multi.getFileNames();  // 일반 form 요소part name 추출
	System.out.println(names.hasMoreElements());
	String name = (String)names.nextElement(); // name
	System.out.println(name);
	System.out.println(multi.getFilesystemName(name));
	String realFileName = multi.getFilesystemName(name);
	String realUrl = saveDirectory+ File.separator +realFileName;
	String realUrl2 = realDir+realFileName;
	System.out.println(realDir2);
	System.out.println(realUrl2);
	out.println("<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction('"+sFunc+"', '"+realUrl2+"', '완료');</script>");
	//http://localhost:8080/Shj_Project/upload/1.png
	
	/*
	현재 문제점들
	1. 느림.(보이지 않다가 나중에 보임)
	2. 업로드 경로.
	3. 
	*/
	
%>

</body>
</html>