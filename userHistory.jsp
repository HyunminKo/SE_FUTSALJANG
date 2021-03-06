<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import ="java.sql.*" %>
<%@page import="DAO.HostDAO" %>
<%@page import="DAO.UserDAO" %>
<%@page import="DAO.ReservationDAO" %>
<%@page import="java.util.*" %>
<%@page import="java.util.Calendar"%>

<%
	String userNo = (String)session.getAttribute("No");
	ReservationDAO userHistory = new ReservationDAO();
	
	List<ReservationDAO> userResrvationList = new ArrayList<>();
	List<ReservationDAO> realList = new ArrayList<>();
	
	userHistory.select(userResrvationList,realList, userNo);
	
%>

<!DOCTYPE HTML>
<!--
	Identity by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title id = "title">풋살장 이용 및 예약 내역(이용자)</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="shortcut icon" href="./images/favicon.ico"/>
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<noscript>
			<link rel="stylesheet" href="assets/css/noscript.css" />
		</noscript>
		<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css"/>
		<style type="text/css">
			.inputRadioLabel{
				margin-left:23px;
				margin-bottom:30px;
			}
			input[type="submit"]{
			    border:1px solid rgba(0,0,0,0);;
			}
		</style>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	</head>
	<body class="is-loading" onload="bodyOnload()">

		<!-- Wrapper -->
		<div id="wrapper">

			<jsp:include page="./banner.jsp"></jsp:include>

			<div id="main">

				<hr/>
				<form method="post" action="./centerCancelService.jsp">

					<table class="centerInfoTable">
						<tr>
							<th style="display:none;">풋살장번호</th>
							<th>풋살장이름</th>
							<th>구장번호</th>
							<th>대관날짜</th>
							<th>이용시간</th>
							<th>금액</th>
							<th>예약취소</th>
						</tr>
<%
						Iterator<ReservationDAO> it = userResrvationList.iterator();
				
						int i = 0;
						while(it.hasNext()){
							ReservationDAO temp = it.next();
							ReservationDAO temp2 = realList.get(i);
%>
						<tr>
							<td id = "centerName<%=i%>"><%=temp.getCenterNo()%></td>
							<td id = "sectionNo<%=i%>"><%=temp.getSectionNo()%></td>
							<td id = "bookingDate<%=i%>"><%=temp.getBookingDate()%></td>
							<td id = "hoursOfUse<%=i%>"><%=temp.getHoursOfUse()%>:00 ~ <%=2+Integer.parseInt(temp.getHoursOfUse())%>:00</td>
							<td id = "charge<%=i%>"><%=temp.getCharge()%></td>
							<%
							String[] array;
							String rsvDate = temp.getBookingDate();
							array = rsvDate.split("-");
							
							Calendar oCalendar = Calendar.getInstance( );  // 현재 날짜/시간 등의 각종 정보 얻기
							int current_year = oCalendar.get(Calendar.YEAR);
							int current_month = (oCalendar.get(Calendar.MONTH) + 1);
							int current_day = oCalendar.get(Calendar.DAY_OF_MONTH);
						   
								if(Integer.parseInt(array[0]) < current_year) {//현재년도가 클때 
									%>
										<td>취소불가</td>
									<%
								}
								else if(Integer.parseInt(array[0]) == current_year){
									if(Integer.parseInt(array[1]) < current_month){//현재년도가 같고 현재 달이 크면
										%>
										<td>취소불가</td>
										<%
									}
									else if(Integer.parseInt(array[1]) == current_month){//현재년도가 같고 현재 달이 같으면 
										if(Integer.parseInt(array[2]) < current_day){//현재년도 같고 현재 달이 같고 현재 일이 크면
											%>
											<td>취소불가</td>
											<%	
										}
										else{//현재 년도 같고 현재 달이 같고 현재 일이 작거나 같으면 취소 불가
											%>
											<td><input type="submit" value="취소"/></td>
											<%
										}
									}
									else{//현재 년도 같고 현재 달이 작거나 같으면
										%>
										<td><input type="submit" value="취소"/></td>
										<%
									}
								}
								else{//현재 년도가 작을 때 
									%>
									<td><input type="submit" value="취소"/></td>
									<%
								}
							%>
							
							<input type="hidden" name="index" value="<%=i%>"/>
							<input type="hidden" name="centerNo<%=i%>" value="<%=temp2.getCenterNo()%>"/>
							<input type="hidden" name="sectionNo<%=i%>" value="<%=temp2.getSectionNo()%>"/>
							<input type="hidden" name="hoursOfUse<%=i%>" value="<%=temp2.getHoursOfUse()%>"/>
							<input type="hidden" name="bookingDate<%=i%>" value= "<%=temp2.getBookingDate() %>"/>
						</tr>
						<%
						i++;
						}
						if(userResrvationList.size() == 0){
							%>
							<tr>
								<td colspan = "7">기록 없음</td>
							</tr>
							<%
						}
						%>
					</table>

				</form>
				<hr/>
		</div>
		<!-- Footer -->
				
			<footer id="footer" >
				<ul class="copyright" >
					<li>풋살장 예약 시스템</li>
					<li>윤성준 정창훈 고현민</li>
				</ul>
			</footer>
		<!-- Scripts -->
		<!--[if lte IE 8]><script src="assets/js/respond.min.js"></script><![endif]-->
		<script>
				if ('addEventListener' in window) {
					window.addEventListener('load', function() { 
						document.body.className = document.body.className.replace(/\bis-loading\b/, ''); 
					});
					document.body.className += (navigator.userAgent.match(/(MSIE|rv:11\.0)/) ? ' is-ie' : '');
				}
		</script>
		<script src = "./assets/js/dropbar.js"></script>

	</body>
</html>