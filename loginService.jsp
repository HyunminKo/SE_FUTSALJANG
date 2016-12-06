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
		if(result.contains("success")){
			String resultData[] = result.split(":");
			session.setAttribute("Id",id);
			
			if(resultData[1].equals("1"))
				session.setAttribute("Type", "admin");
			else
				session.setAttribute("Type","user");
			
			session.setAttribute("No",resultData[1]);
			System.out.println("Id: "+id+" "+"Type: user No: "+resultData[1]);
			response.sendRedirect("./home.jsp");
		}else if(result.equals("incorrect")){
			%>
				<script>
					alert("비밀번호가 틀렸습니다.");
					history.go(-1); 
				</script>
			<%
		}else{
			result = hostDAO.login();
			if(result.contains("success")){
				String resultData[] = result.split(":");
				session.setAttribute("Id",id);
				session.setAttribute("Type","host");
				session.setAttribute("No",resultData[1]);
				System.out.println("Id: "+id+" "+"Type: host No: "+resultData[1]);
				response.sendRedirect("./home.jsp");
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