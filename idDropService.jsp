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

	if (type.equals("user")) {
		if (UserDAO.drop(memberNo)) {
			session.invalidate();
%>
<script>
	alert("계정 탈퇴가 완료되었습니다.");
	location.replace("./home.jsp");
</script>
<%

	} else {
%>
<script>
	alert("계정 탈퇴가 불가능합니다.");
	history.go(-1);
</script>
<%
	}
	} else {
		if (hostDao.drop(memberNo)) {
	session.invalidate();
%>
<script>
	alert("계정 탈퇴가 완료되었습니다.");
	location.replace("./home.jsp");	
</script>
<%
	} else {
%>
<script>
	alert("계정 탈퇴가 불가능합니다.");
	history.go(-1);
</script>
<%
	}
	}
%>
