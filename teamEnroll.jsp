<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Identity by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title id = "title">팀 등록</title>
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
			<form method="post" action="./enrollTeamService.jsp">

				<table>
					<tr>
						<td>팀 이름</td>
						<td><input type="text" autofocus name="teamName"
							id="teamName" required /></td>
					</tr>
					<tr>
						<td>팀 설명</td>
						<td><textarea name="teamDescription" id="teamDescription"
								cols="50" rows="6" required></textarea></td>
					</tr>
				</table>
				<ul class="actions">
					<li><input type="submit" value="등록" /></li>
					<li><a href="./teamCheck.jsp" class="button">취소</a></li>
				</ul>
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