<%@page import="DAO.ReservationDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%

	request.setCharacterEncoding("utf-8");
	
	String index = request.getParameter("index");
	String userNo = (String) session.getAttribute("No");
	String centerNo = request.getParameter("centerNo"+index);
	String sectionNo = request.getParameter("sectionNo"+index);
	String hours = request.getParameter("hoursOfUse"+index);
	
	if(ReservationDAO.delete(userNo,centerNo,sectionNo,hours)){
		%>
		<script>
			alert("풋살장 삭제에 성공했습니다.");
			location.replace("./userHistory.jsp"); 
		</script>
		<%		
	}else{
		%>
		<script>
			alert("풋살장 삭제에 실패했습니다.");
			history.go(-1); 
		</script>
		<%
	}
	
%>