<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="DAO.FutsalcenterDAO"%>
<%@ page import="java.io.*"%>
<%
	FutsalcenterDAO fscDao = new FutsalcenterDAO();
	request.setCharacterEncoding("utf-8");

	String centerNo = (String) request.getParameter("centerInfo");
	String centerName = (String) request.getParameter("centerName"+centerNo);
	String centerCharge = (String) request.getParameter("centerCharge"+centerNo);
	String centerSectionNum = (String) request.getParameter("centerSectionNum"+centerNo);
	String centerPhone = (String) request.getParameter("centerPhone"+centerNo);
	String centerDetailAddress = (String) request.getParameter("centerDetailAddress"+centerNo);
	
	fscDao = new FutsalcenterDAO(centerNo,centerName,centerDetailAddress,centerCharge,centerSectionNum,centerPhone);
	if(fscDao.update(centerNo)){
		%>
		<script>
			alert("풋살장 수정에 성공했습니다.");
			location.replace("./centerModifyAndDelete.jsp"); 
		</script>
		<%		
	}else{
		%>
		<script>
			alert("풋살장 수정에 실패했습니다.");
			history.go(-1); 
		</script>
		<%
	}
%>