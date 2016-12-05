<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import ="java.sql.*" %>
<%@page import="DAO.HostDAO" %>
<%@page import="DAO.UserDAO" %>
<%
	UserDAO userDAO;
	HostDAO hostDAO;
	request.setCharacterEncoding("UTF-8");
	
	try{
		String memberNo = request.getParameter("memberNo");
		String memberGrade = request.getParameter("memberGrade");
		String modifyPhone = request.getParameter("modifyPhone");
		
		if(memberNo.startsWith("1")){
			//user일때
			userDAO.updateMemberInformation(memberNo,memberGrade,modifyPhone);
		}else{
			//host일때
			
		}
			
	}catch(Exception e){
		
	}

%>