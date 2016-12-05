<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="com.oreilly.servlet.MultipartRequest,com.oreilly.servlet.multipart.DefaultFileRenamePolicy,java.util.*,java.io.*"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("utf-8");
	
	/***사진 서버에 저장 부분***/
	String realFolder = "";
	String imgFileName = "";
	int maxSize = 1024*1024*5;
	String encType = "utf-8";
	String savefile = "images/FUTSALJANG";
	ServletContext scontext = getServletContext();
	realFolder = scontext.getRealPath(savefile);
	
	try{
	 MultipartRequest multi=new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	 Enumeration<?> files = multi.getFileNames();
	    String file1 = (String)files.nextElement();
	    imgFileName = multi.getFilesystemName(file1);
	} catch(Exception e) {
	 	e.printStackTrace();
	}
	String fullpath = realFolder + "\\" + imgFileName;
	/******************/
	
	String centerName = request.getParameter("centerName");
	String guName = request.getParameter("cEnrollGuSelect");
	
	
	
%>
<title>Insert title here</title>
</head>
<body>
	<img src="./images/FUTSALJANG/<%= imgFileName %>" width=512 height=384></img>
</body>
</html>