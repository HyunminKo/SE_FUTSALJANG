<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="DAO.FutsalcenterDAO" %>
<%@page import="java.util.*" %>
<%
	FutsalcenterDAO futsalcenterDAO = new FutsalcenterDAO();
	List<FutsalcenterDAO> centerList = new ArrayList<>();
	
	futsalcenterDAO.select(centerList);

%>
<!DOCTYPE HTML>
<!--
	Identity by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title id = "title">대전 전체 풋살장 검색</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="./assets/css/main.css" />
		<link rel="shortcut icon" href="./images/favicon.ico"/>
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<noscript>
			<link rel="stylesheet" href="assets/css/noscript.css" />
		</noscript>
		<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css"/>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js">
		</script>
	</head>
	<body class="is-loading" onload="bodyOnload()" >

		<!-- Wrapper -->
		<div id="wrapper">

			<jsp:include page="./banner.jsp"></jsp:include>
			
			<div id="main">
				<hr/>
<% 
			Iterator<FutsalcenterDAO> it = centerList.iterator();
			int i = 0;
			while(it.hasNext()){
				FutsalcenterDAO temp = it.next();
%>
				<form action="./centerDetail.jsp" method="post" class="cardForm">
					<div class="card <%=temp.getKu()%>">
						<img src="images/FUTSALJANG/<%=temp.getImgUrl()%>" alt="Avatar"/>
						<div class="container">
							<h4><b><%=temp.getCenterName()%></b></h4>
							<p><%=temp.getKu()%></p>
						</div>
					</div>
					<input type="hidden" name="centerNo<%=i%>" value="<%=temp.getCenterNo()%>"/>
					<input type="hidden" name="centerImg<%=i%>" value="<%=temp.getImgUrl()%>"/>
					<input type="hidden" name="centerName<%=i%>" value="<%=temp.getCenterName()%>"/>
					<input type="hidden" name="centerCharge<%=i%>" value="<%=temp.getCharge() %>"/>
					<input type="hidden" name="centerSectionNum<%=i%>" value="<%=temp.getSectionNum() %>"/>
					<input type="hidden" name="centerPhone<%=i%>" value="<%=temp.getCenterPhone()%>"/>
					<input type="hidden" name="centerKu<%=i%>" value="<%=temp.getKu()%>"/>
					<input type="hidden" name="centerDetailAddress<%=i%>" value="<%=temp.getDetailAddress()%>"/>
					<input type="hidden" id="cardIndex" value="<%=i%>"/>
				</form>
<%
				i++;
			}
%>				
				<hr/>
			
			</div>
			<!-- Footer -->
			<footer id="footer">
				<ul class="copyright" >
					<li>풋살장 예약 시스템</li>
					<li>윤성준 정창훈 고현민</li>
				</ul>
			</footer>	
		</div>

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