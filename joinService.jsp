<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
	request.setCharacterEncoding("UTF-8");
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String sql=null;
	
	try{
		
		String join_id = request.getParameter("join_id");
		String join_pw = request.getParameter("join_pw");
		String join_name = request.getParameter("join_name");
		String join_phone = request.getParameter("join_phone");
		String memberType = request.getParameter("robot");
		%> <script>
			alert(memberType);
			 
			</script><%
	
		
		// ����Ϸ��� �����ͺ��̽����� ������ URL
		String URL = "jdbc:oracle:thin:@localhost:1521:DBSERVER";
		
		// DB�� ������̸��� ��й�ȣ
		String USER = "KIM";                                                    
		String PASS = "bluesky";                                                

		
		// �����ͺ��̽��� �����ϱ� ���� DriverManager�� ����Ѵ�.
		Class.forName("oracle.jdbc.driver.OracleDriver"); 
		// DriverManager ��ü�κ��� Connection ��ü�� ���´�.		
		conn=DriverManager.getConnection(URL,USER,PASS);      
		
			  
		stmt = conn.createStatement();
		rs = stmt.executeQuery("select * from FUTSALUSER where USERID='"+join_id+"'");

		if(rs.next()!=true){
			stmt.executeUpdate("INSERT INTO FUTSALUSER (USERNO, USERNAME, USERPHONE, USERID, USERPW, USERGRADE, USERPOINT) VALUES (3,'"+join_name+"','"+join_phone+"','"+join_id+"','"+join_pw+"',general,0);");
		}
		else{
			%> <script>
			alert("���̵� �̹� �����մϴ�.");
			history.go(-1); 
			</script><%
		}

	}
	catch(Exception e){
		e.printStackTrace();
	}
	
%>