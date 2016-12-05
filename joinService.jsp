<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="DAO.HostDAO" %>
<%@page import="DAO.UserDAO" %>
<!DOCTYPE html>
<%
	UserDAO userDAO;
	HostDAO hostDAO;
	request.setCharacterEncoding("UTF-8");

	try{
		String join_id = request.getParameter("id");
		String join_pw = request.getParameter("pw");
		String join_name = request.getParameter("name");
		String join_phone = request.getParameter("phone");
		String join_type = request.getParameter("robot");
		
		if(join_type.equals("user")){
			userDAO = new UserDAO(join_name,join_phone,join_id,join_pw,"일반",0);
			if(userDAO.join()){
				%>
					<script>
						alert("회원가입에 성공하셨습니다.");
						location.replace("./home.html");
					</script>
				<%
			}else{
				%>
				<script>
					alert("이미 존재하는 아이디입니다.");
					history.go(-1); 
				</script>
			<%
			}
		}
		else{
			hostDAO = new HostDAO(join_name,join_phone,join_id,join_pw);
			if(hostDAO.join()){
				%>
					<script>
						alert("회원가입에 성공하셨습니다.");
						location.replace("./home.html");
					</script>
				<%
			}else{
				%>
				<script>
					alert("이미 존재하는 아이디입니다.");
					history.go(-1); 
				</script>
			<%
			}
		}
		
	}
	catch(Exception e){
		e.printStackTrace();
	}

%>