<%@page import="DAO.BelongtoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="DAO.MatchDAO"%>
<%@page import="DAO.TeamDAO"%>
<%@page import="DAO.BelongtoDAO"%>
<%@page import="java.util.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	String teamNo = request.getParameter("teamNo");
	String teamName = request.getParameter("teamName");
	String teamDescription = request.getParameter("teamDescription");
	
	String memberNo = (String) session.getAttribute("No");
	String type = (String) session.getAttribute("Type");
	
	MatchDAO matchDao = new MatchDAO();
	List<MatchDAO> matchList = new ArrayList<>();
	matchDao.select(matchList,teamNo);
%>
<!DOCTYPE HTML>
<!--
	Identity by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title id = "title">팀 상세보기</title>
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
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	</head>
	<body class="is-loading" onload="bodyOnload()">

		<!-- Wrapper -->
		<div id="wrapper">

			<jsp:include page="./banner.jsp"></jsp:include>

			<div id="main">
					
					<hr/>
						<div>
							<table class="centerInfoTable" id= "team_detail_table" align = "center">
								<form action="teamMatch" method="post">
									<tr>
										<th>팀명</th>
										<td><%=teamName %></td>
									</tr>
									<tr>
										<th>설명</th>
										<td><%=teamDescription %></td>
									</tr>
					<%
						Iterator<MatchDAO> it = matchList.iterator();
						int i = 0;
						while (it.hasNext()) {
							MatchDAO temp = it.next();
							String name = TeamDAO.getTeamName(temp.getTeamNoTwo());
					%>									
									<tr>
										<td>대결 목록 : </td>
										<td><%=teamName %></td>
										<td>VS</td>
										<td><%=name %></td>
										<td><%=temp.getMatchDate()%></td>
									</tr>
					<%
						}
						if(type == null){
							
						}
						else if(type.equals("user")){
						String userTeamNo = BelongtoDAO.getUserTeamNo(memberNo);
							if(userTeamNo!=null){
								if(!teamNo.equals(userTeamNo)){
					%>				
									<tr>
										<td colspan = "5"><input type="submit" value="대결 신청"/></td>
									</tr>
									<%
								}								
							}
						}
									%>
								</form>
							</table>
						</div>
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