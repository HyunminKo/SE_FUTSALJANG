<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import ="java.sql.*" %>
<%@page import="DAO.HostDAO" %>
<%@page import="DAO.UserDAO" %>   
<%
	UserDAO userDAO;
	HostDAO hostDAO;
	request.setCharacterEncoding("UTF-8");
		
	try{
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		userDAO = new UserDAO(id,pw);	
		hostDAO = new HostDAO(id,pw);
		String result = userDAO.login();
		if(result.equals("success")){
			session.setAttribute("Id",id);
			session.setAttribute("type","user");
			response.sendRedirect("./home.html");
		}else if(result.equals("incorrect")){
			%>
				<script>
					alert("비밀번호가 틀렸습니다.");
					history.go(-1); 
				</script>
			<%
		}else{
			result = hostDAO.login();
			if(result.equals("success")){
				session.setAttribute("Id",id);
				session.setAttribute("type","host");
				response.sendRedirect("./home.html");
			}else if(result.equals("incorrect")){
				%>
					<script>
						alert("비밀번호가 틀렸습니다.");
						history.go(-1); 
					</script>
				<%
			}
			else{
				%>
					<script>
						alert("아이디가 존재하지 않습니다.");
						history.go(-1); 
					</script>
				<%				
			}
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	
%>