<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="com.oreilly.servlet.MultipartRequest,com.oreilly.servlet.multipart.DefaultFileRenamePolicy,java.util.*,java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="DAO.FutsalcenterDAO"%>
<%@ page import="DAO.ReservationDAO"%>
<%@ page import="java.io.*"%>

<%
	ReservationDAO rsvDAO;
	request.setCharacterEncoding("utf-8");
	
	
	try{
		String userNo = (String)session.getAttribute("No");
	 	String sectionNo = request.getParameter("sectionNo");
		String centerNo = request.getParameter("centerNo");
		String paymentOption = request.getParameter("paymentOption");
	 	String bookingDate = request.getParameter("bookingDate");
		String hoursOfUse = request.getParameter("hours");
		
		
		rsvDAO = new ReservationDAO(userNo, sectionNo, centerNo, paymentOption, bookingDate.replace("-", ":"), hoursOfUse);
		
		if(rsvDAO.insert()){
			%>
			<script>
				location.replace("./userHistory.jsp");
			</script>
			<%			
		}else{
			%>
			<script>
				alert("예약에 실패했습니다.");
				history.go(-1); 
			</script>
			<%					
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
%>