<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="DAO.TeamDAO"%>
<%@page import="java.util.*"%>
<%
	TeamDAO teamDAO = new TeamDAO();

	List<TeamDAO> teamInformationList = new ArrayList<>();

	teamDAO.select(teamInformationList);
	
	String type = (String) session.getAttribute("Type");
%>
<!DOCTYPE HTML>
<!--
	Identity by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title id="title">팀 조회</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--[if lte IE 8]><script src="assets/js/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="shortcut icon" href="./images/favicon.ico" />
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css" />
<style type="text/css">
.inputRadioLabel {
	margin-left: 23px;
	margin-bottom: 30px;
}

input[type="submit"] {
	border: 1px solid rgba(0, 0, 0, 0);;
}

#teamEnrollBtn {
	position: fixed;
	background: rgba(255, 255, 255, 1);
	margin-left: 439px;
	margin-top: -40px;
	border-radius: 6px;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
<body class="is-loading" onload="bodyOnload()">

	<!-- Wrapper -->
	<div id="wrapper">

		<jsp:include page="./banner.jsp"></jsp:include>

		<div id="main">

			<hr />
				<% 
					if(type == null){
				%>
					<table class="centerInfoTable">
				<% 
					}else if(type.equals("user")){
				%>
					<input id="teamEnrollBtn" type="submit" value="팀 등록" formnovalidate
						formaction="./teamEnroll.jsp" />
					<table class="centerInfoTable">
				<% 
					}else{
				%>	
					<table class="centerInfoTable">
				<%
					}
				%>
					
					<tr>
						<th style="display: none;">팀번호</th>
						<th>팀이름</th>
						<th>팀설명</th>
						<th>상세</th>
					</tr>
					<%
						Iterator<TeamDAO> it = teamInformationList.iterator();
						int i = 0;
						while (it.hasNext()) {
							TeamDAO temp = it.next();
					%>

				<form method="post" action="./teamDetail.jsp">
					<input type="hidden" name="teamNo" value="<%=temp.getTeamNo()%>"/>
					<input type="hidden" name="teamName" value="<%=temp.getTeamName()%>"/>
					<input type="hidden" name="teamDescription" value="<%=temp.getTeamDescription()%>"/>
					<tr>
						<td id="teamName<%=i%>"><%=temp.getTeamName()%></td>
						<td id="teamDescription<%=i%>"><%=temp.getTeamDescription()%></td>
						<td><input type="submit" value="상세보기"/></td>
					</tr>
				</form>
					<%
						i++;
						}
					%>
				</table>

			<hr />

		</div>

	</div>
	<!-- Footer -->

	<footer id="footer">
		<ul class="copyright">
			<li>풋살장 예약 시스템</li>
			<li>윤성준 정창훈 고현민</li>
		</ul>
	</footer>
	<!-- Scripts -->
	<!--[if lte IE 8]><script src="assets/js/respond.min.js"></script><![endif]-->
	<script>
		if ('addEventListener' in window) {
			window.addEventListener('load', function() {
				document.body.className = document.body.className.replace(
						/\bis-loading\b/, '');
			});
			document.body.className += (navigator.userAgent
					.match(/(MSIE|rv:11\.0)/) ? ' is-ie' : '');
		}
	</script>
	<script src="./assets/js/dropbar.js"></script>
</body>
</html>