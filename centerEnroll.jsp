<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Identity by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title id = "title">풋살장 등록</title>
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
	<body class="is-loading"  onload="bodyOnload()">

		<!-- Wrapper -->
		<div id="wrapper" >

			<jsp:include page="./banner.jsp"></jsp:include>
			
			<div id="main">

				<hr/>
				<form method="post" action="./enrollService.jsp" enctype="multipart/form-data">
					<table>
						<tr>
							<td>이름</td>
							<td>
								<input type="text" name="centername" id="centerName"  required/>
							</td>
						</tr>
						<tr>
							<td>위치(구)</td>
							<td>
								<div class="select-wrapper" id="centerEnroll_selectGu">
									<select name="cenrollguselect" id="cEnrollGuSelect" style="width:100px">
										<option value="구 선택" selected>구 선택</option>
										<option value="유성구">유성구</option>
										<option value="동구">동구</option>
										<option value="중구">중구</option>
										<option value="서구">서구</option>
										<option value="대덕구">대덕구</option>
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<td>사진</td>
							<td>
								<input type="file" name="centerimg" id="centerImg"  required/>
							</td>
						</tr>
						<tr>
							<td>상세주소</td>
							<td>
								<input type="text" name="centerdetailaddress" id="centerDetailAddress"  required/>
							</td>
						</tr>
						<tr>
							<td>기본 요금</td>
							<td>
								<input type="text" name="basecharge" id="baseCharge" style="width:100px; text-align:right;"  required/>
							</td>
							<td>
								<p style="position:absolute; margin-left:-310px; margin-top:-12px;">원</p>
							</td>
						</tr>
						<tr>
							<td>구장 개수</td>
							<td>
								<input type="text" name="centersectionnum" id="centerSectionNum" style="text-align:right;"  required/>

							</td>
							<td>
								<p style="position:absolute; margin-left:-350px; margin-top:-12px;">개</p>
							</td>
						</tr>
						<tr>
							<td>전화번호</td>
							<td>
								<input type="text" name="centerphonenum" id="centerPhoneNum" style="width:160px"required/>

							</td>
							<td>
								<p style="position:absolute; margin-left:-250px; margin-top:-12px;">'-'생략</p>
							</td>
						</tr>
					</table>
					<ul class="actions">
						<li>
							<input type="submit" value="등록"/>
						</li>
						<li>
							<a href="./login.html" class="button">취소</a>
						</li>
					</ul>
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
		<script src="./assets/js/centerEnroll.js"></script>
		<script src = "./assets/js/dropbar.js"></script>
	</body>
</html>