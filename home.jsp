<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	
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
				
					<div class="card 유성구">
						<img src="images/asd.jpg" id="" alt="Avatar"/>
						<div class="container">
							<h4><b>유성구</b></h4> 
							<p>유성구 풋살장</p> 
						</div>
					</div>
					<div class="card 동구">
						<img src="images/asd.jpg" alt="Avatar"/>
						<div class="container">
							<h4><b>동구</b></h4> 
							<p>동구 풋살장</p> 
						</div>
					</div>
					<div class="card 중구">
						<img src="images/asd.jpg" alt="Avatar"/>
						<div class="container">
							<h4><b>중구</b></h4> 
							<p>중구 풋살장</p> 
						</div>
					</div>
					<div class="card 서구">
						<img src="images/asd.jpg" alt="Avatar"/>
						<div class="container">
							<h4><b>서구</b></h4> 
							<p>서구 풋살장</p> 
						</div>
					</div>
					<div class="card 대덕구">
						<img src="images/asd.jpg" alt="Avatar"/>
						<div class="container">
							<h4><b>대덕구 풋살장</b></h4> 
							<p>대덕구</p> 
						</div>
					</div>
					<div class="card 대덕구">
						<img src="images/asd.jpg" alt="Avatar"/>
						<div class="container">
							<h4><b>대덕구 풋살장</b></h4> 
							<p>대덕구</p> 
						</div>
					</div>
					<div class="card 대덕구">
						<img src="images/asd.jpg" alt="Avatar"/>
						<div class="container">
							<h4><b>대덕구 풋살장</b></h4> 
							<p>대덕구</p> 
						</div>
					</div>
					<div class="card 대덕구">
						<img src="images/asd.jpg" alt="Avatar"/>
						<div class="container">
							<h4><b>대덕구 풋살장</b></h4> 
							<p>대덕구</p> 
						</div>
					</div>
					<div class="card 대덕구">
						<img src="images/asd.jpg" alt="Avatar"/>
						<div class="container">
							<h4><b>대덕구 풋살장</b></h4> 
							<p>대덕구</p> 
						</div>
					</div>
					<div class="card 대덕구">
						<img src="images/asd.jpg" alt="Avatar"/>
						<div class="container">
							<h4><b>대덕구 풋살장</b></h4> 
							<p>대덕구</p> 
						</div>
					</div>
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

			$(document).ready(function(){

				$("#searchBtn").click(function(){
					var sel = document.getElementById("guList");
					var currentScreenName = document.getElementById("currentScreenName");
					var val;
					val = sel.options[sel.selectedIndex].innerHTML;
					if(val=="전체"){
						currentScreenName.innerHTML="대전 전체 풋살장 검색";
						$(".card").show();
					}else{
						currentScreenName.innerHTML="대전 "+ val +" 풋살장 검색";
						$(".card").hide();
						$("."+val).show();
					}
				});
				
			});
		</script>
		<script src = "./assets/js/dropbar.js"></script>
	</body>
</html>