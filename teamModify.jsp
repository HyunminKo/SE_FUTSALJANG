<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Identity by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title id = "title">팀 정보 수정 및 삭제</title>
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
				<p>수정하거나 삭제할 팀의 정보를 선택해주세요.</p>
				<form method="post" action="#">

					<table class="centerInfoTable">
						<tr>
							<th style="display:none;">팀번호</th>
							<th>선택</th>
							<th>팀이름</th>
							<th style="border-right:2px solid rgba(0,0,0,0)">팀설명</th>
						</tr>
						<tr>
							<td style="display:none;">1</td>
							<td>
								<input class="inputRadio" type="radio" id="centerInfo1" name="robot"/>
								<label class="inputRadioLabel" for="centerInfo1"/>
							</td>
							<td>프로브 풋살팀</td>
							<td>충남대학교 컴퓨터 공학과 프로브레인 동아리 친구들의 모임</td>
						</tr>
						<tr>
							<td style="display:none;">1</td>
							<td>
								<input class="inputRadio" type="radio" id="centerInfo2" name="robot"/>
								<label class="inputRadioLabel" for="centerInfo2"/>
							</td>
							<td>프로브 풋살팀</td>
							<td>충남대학교 컴퓨터 공학과 프로브레인 동아리 친구들의 모임</td>
						</tr>
					</table>

					<input style="margin-top:50px;" type="submit" value="수정" formnovalidate formaction="#"/>
					<input type="submit" value="삭제" formnovalidate formaction="#"/>
					<input type="submit" value="취소" formnovalidate formaction="#"/>
				</form>
				<hr/>
			
			</div>
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