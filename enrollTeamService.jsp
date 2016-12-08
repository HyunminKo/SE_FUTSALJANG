<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="com.oreilly.servlet.MultipartRequest,com.oreilly.servlet.multipart.DefaultFileRenamePolicy,java.util.*,java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="DAO.TeamDAO"%>
<%@ page import="java.io.*"%>
<%
	TeamDAO teamDao = null;
	request.setCharacterEncoding("utf-8");

	try {
		String teamName = request.getParameter("teamName");
		String teamDescription = request.getParameter("teamDescription");
		String userNo = (String) session.getAttribute("No");
		teamDao = new TeamDAO(teamName, teamDescription);

		if (teamDao.enroll(userNo)) {
%>
<script>
	alert("팀 등록에 성공하였습니다.");
	location.replace("./teamCheck.jsp");
</script>
<%
	} else {
%>
<script>
	alert("존재하는 팀 이름입니다.");
	history.go(-1);
</script>
<%
	}

	} catch (Exception e) {
		e.printStackTrace();
	}
%>