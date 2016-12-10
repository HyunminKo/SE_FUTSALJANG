<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="DAO.MatchDAO" %>
<%@page import="DAO.UserDAO" %>
<!DOCTYPE html>
<%
	MatchDAO matchDao = null;
	
	try{
		request.setCharacterEncoding("UTF-8");
		
		String teamNoOne = request.getParameter("teamNo");
		String teamNoTwo = request.getParameter("userTeamNo");
		String year = request.getParameter("match_year");
		String month = request.getParameter("match_month");
		String day = request.getParameter("match_day");
		
		matchDao = new MatchDAO(teamNoOne,teamNoTwo,year+":"+month+":"+day);
		if(matchDao.insert()){
			%>
			<script>
				alert("팀 대결 신청에 성공하셨습니다.");
				location.replace("./teamCheck.jsp");
			</script>
			<%			
		}else{
			%>
			<script>
				alert("팀 대결 신청에 실패하셨습니다.");
				location.replace("./teamCheck.jsp");
			</script>
			<%			
		}
	}catch(Exception e){
		e.printStackTrace();
	}

%>