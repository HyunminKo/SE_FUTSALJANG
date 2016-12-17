<%@page import="DAO.ReservationDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@page import="DAO.UserDAO"%>
<%@page import="DAO.HostDAO"%>
<%
	request.setCharacterEncoding("utf-8");

	String id = (String) session.getAttribute("Id");
	String type = (String) session.getAttribute("Type");
	String memberNo = (String) session.getAttribute("No");

	UserDAO userDao = new UserDAO();
	HostDAO hostDao = new HostDAO();
	Boolean result= false;
	if(type.equals("user")){
		result = UserDAO.delete(memberNo);
	}else{
		result = HostDAO.delete(memberNo);
	}
	
	if(result){
		session.invalidate();
		%>
		<script>
			alert("회원 탈퇴에 성공했습니다.");
			location.replace("./home.jsp"); 
		</script>
		<%		
	}else{
		%>
		<script>
			alert("회원 탈퇴에 실패했습니다.");
			history.go(-1); 
		</script>
		<%
	}
%>
