<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import ="java.sql.*" %>
<%@page import="DAO.HostDAO" %>
<%@page import="DAO.UserDAO" %>
<%@page import="java.util.*" %>   
<%
	UserDAO userDAO = new UserDAO();
	HostDAO hostDAO = new HostDAO();
	
	request.setCharacterEncoding("UTF-8");
	
	try{
		String memberNo = request.getParameter("memberNo");
		String memberGrade = request.getParameter("memberGrade");
		String modifyPhone = request.getParameter("modifyPhone");
		
		if(memberNo.startsWith("1"))//user일때
			if(userDAO.updateMemberInformation(memberNo,memberGrade,modifyPhone)){
				%>
					<script>
						alert("정보 수정을 완료했습니다.");
						location.replace("./memberCheck.jsp"); 
					</script>
				<%				
			}
			else{
				%>
				<script>
					alert("정보 수정을 실패했습니다.");
					location.replace("./memberCheck.jsp"); 
				</script>
				<%
			}
		else //host일때
			if(hostDAO.updateMemberInformation(memberNo,modifyPhone)){
				%>
				<script>
					alert("정보 수정을 완료했습니다.");
					location.replace("./memberCheck.jsp"); 
				</script>
			<%					
			}else{
				%>
				<script>
					alert("정보 수정을 실패했습니다.");
					location.replace("./memberCheck.jsp"); 
				</script>
				<%				
			}
	}catch(Exception e){
		e.printStackTrace();
	}

%>