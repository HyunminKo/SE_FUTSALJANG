<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="DAO.TeamDAO"%>
<%@ page import="java.io.*"%>
<%
	TeamDAO teamDao = new TeamDAO();
	request.setCharacterEncoding("utf-8");

	String teamNo = (String) request.getParameter("teamInfo");
	
	teamDao = new TeamDAO();
	if(teamDao.delete(teamNo)){
		%>
		<script>
			alert("팀 삭제에 성공했습니다.");
			location.replace("./teamModifyAndDelete.jsp"); 
		</script>
		<%		
	}else{
		%>
		<script>
			alert("팀 삭제에 실패했습니다.");
			history.go(-1); 
		</script>
		<%
	}
%>