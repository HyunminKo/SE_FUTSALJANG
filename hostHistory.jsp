<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="DAO.HostDAO" %>
<%@page import="DAO.UserDAO" %>
<%@page import="DAO.ReservationDAO" %>
<%@page import="java.util.*" %>

<%
	String hostNo = (String)session.getAttribute("No");
	ReservationDAO hostHistory = new ReservationDAO();
	
	List<ReservationDAO> hostResrvationList = new ArrayList<>();
	
	hostHistory.select(hostResrvationList, hostNo);
	
%>
<!DOCTYPE HTML>
<!--
	Identity by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title id = "title">풋살장 이용 및 예약 내역(업체)</title>
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

		</style>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	</head>
	<body class="is-loading" onload="bodyOnload()">

		<!-- Wrapper -->
		<div id="wrapper">

			<jsp:include page="./banner.jsp"></jsp:include>

			<div id="main">

				<hr/>
				<form method="post" action="#">

					<table class="centerInfoTable">
						<tr>
							<th>예약자이름</th>
							<th>풋살장</th>
							<th>구장 번호</th>
							<th>대관날짜</th>
							<th>이용시간</th>
							<th>전화번호</th>
							<th>금액</th>
						</tr>
<%
						Iterator<ReservationDAO> it = hostResrvationList.iterator();
						int i = 0;
						while(it.hasNext()){
							ReservationDAO temp = it.next();
%>
						<tr>
							<td id = "userName<%=i%>"><%=temp.getUserNo()%></td>
							<td id = "centerName<%=i%>"><%=temp.getCenterNo()%></td>
							<td id = "sectionNo<%=i%>"><%=temp.getSectionNo()%></td>
							<td id = "bookingDate<%=i%>"><%=temp.getBookingDate()%></td>
							<td id = "hoursOfUse<%=i%>"><%=temp.getHoursOfUse()%>:00 ~ <%=2+Integer.parseInt(temp.getHoursOfUse())%>:00</td>
							<td id = "userPhone<%=i%>"><%=temp.getPaymentOption()%></td>
							<td id = "charge<%=i%>"><%=temp.getCharge()%></td>
						</tr>
<%
						i++;
						}
%>
					</table>

					<input style="margin-top:50px;" type="submit" value="수정" formnovalidate formaction="#"/>
					<input type="submit" value="삭제" formnovalidate formaction="#"/>
					<input type="submit" value="취소" formnovalidate formaction="#"/>
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