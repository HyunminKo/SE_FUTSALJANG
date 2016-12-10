<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="DAO.UserDAO"%>
<%@ page import="DAO.HostDAO"%>
<%
		
	
	request.setCharacterEncoding("utf-8");
	
	String index = request.getParameter("rowNum");
	String memberNo = request.getParameter("memberNo"+index);
	
	Boolean result=false;
	
	if(memberNo.startsWith("1")){
		result = UserDAO.delete(memberNo);
	}else{
		result = HostDAO.delete(memberNo);
	}
	
	if(result){
		%>
		<script>
			alert("회원 삭제에 성공했습니다.");
			location.replace("./memberCheck.jsp"); 
		</script>
		<%		
	}else{
		%>
		<script>
			alert("회원 삭제에 실패했습니다.");
			history.go(-1); 
		</script>
		<%
	}
	
%>