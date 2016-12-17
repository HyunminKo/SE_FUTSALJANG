<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="DAO.FutsalcenterDAO"%>
<%@ page import="java.io.*"%>
<%
	FutsalcenterDAO fscDao;
	request.setCharacterEncoding("utf-8");
	String index = (String) request.getParameter("rowNum");
	String centerNo = (String) request.getParameter("centerNo"+index);
	
	
	fscDao = new FutsalcenterDAO(centerNo);
	if(fscDao.delete(centerNo)){
		%>
		<script>
			alert("풋살장 삭제에 성공했습니다.");
			location.replace("./centerModifyAndDelete.jsp"); 
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