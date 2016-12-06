<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page
	import="com.oreilly.servlet.MultipartRequest,com.oreilly.servlet.multipart.DefaultFileRenamePolicy,java.util.*,java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="DAO.FutsalcenterDAO"%>
<%@ page import="java.io.*"%>
<%
	FutsalcenterDAO fscDao=null;
	request.setCharacterEncoding("utf-8");
	String imgFileName = "";

	try{
		String centerName = null;
		String guName = null;
		String centerDetailAddress = null;
		String baseCharge = null;
		String centerSectionNum = null;
		String centerPhoneNum = null;
		
		String hostNo = (String)session.getAttribute("hostNo");

		/***사진 서버에 저장 부분***/
		String realFolder = "";
		imgFileName = "";
		int maxSize = 1024*1024*5;
		String encType = "utf-8";
		String savefile = "images/FUTSALJANG";
		ServletContext scontext = getServletContext();
		realFolder = scontext.getRealPath(savefile);
		
		try{
		 MultipartRequest multi=new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
		 centerName = multi.getParameter("centername");
		 guName = multi.getParameter("cenrollguselect");
		 centerDetailAddress = multi.getParameter("centerdetailaddress");
		 baseCharge = multi.getParameter("basecharge");
		 centerSectionNum = multi.getParameter("centersectionnum");
		 centerPhoneNum = multi.getParameter("centerphonenum"); 
		
		 Enumeration<?> files = multi.getFileNames();
		    String file1 = (String)files.nextElement();
		    imgFileName = multi.getFilesystemName(file1);
		} catch(Exception e) {
		 	e.printStackTrace();
		}
		String fullpath = realFolder + "\\" + imgFileName;
		/******************/
		
		fscDao = new FutsalcenterDAO(hostNo,centerName, "대전광역시", guName, centerDetailAddress,
				baseCharge, centerSectionNum, centerPhoneNum, imgFileName);
		
		if(fscDao.enroll()){ 
			%>
			<script>
				alert("풋살장 등록에 성공하였습니다.");
				location.replace("./home.jsp");
			</script>
			<%
		}
		else{
			%>
			<script>
				alert("존재하는 풋살장 이름입니다.");
				history.go(-1); 
			</script>
			<%		
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	
%>