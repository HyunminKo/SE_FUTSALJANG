<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cardIndex = request.getParameter("cardIndex");
	String centerNo = request.getParameter("centerNo"+cardIndex);
	String centerImg = request.getParameter("centerImg"+cardIndex);
	String centerName = request.getParameter("centerName"+cardIndex);
	String centerCharge = request.getParameter("centerCharge"+cardIndex);
	String centerSectionNum = request.getParameter("centerSectionNum"+cardIndex);
	String centerPhone = request.getParameter("centerPhone"+cardIndex);
	String centerKu = request.getParameter("centerKu"+cardIndex);
	String centerDetailAddress = request.getParameter("centerDetailAddress"+cardIndex);
	
%>
<!DOCTYPE HTML>
<!--
	Identity by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title id ="title">풋살장 상세정보</title>
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
		<script type = "text/javascript" src = "./assets/js/centerDetail.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	</head>
	<body class="is-loading" onload="bodyOnload()">

		<!-- Wrapper -->
		<div id="wrapper">

			<jsp:include page="./banner.jsp"></jsp:include>

			<div id="main">

				<hr/>
				<img src="images/FUTSALJANG/<%=centerImg %>" alt="" class="w3-image" id = "center_picture_1">

					<div id = "center_info">


						<form  method="post" action="#">
							<table>
								<tr>
									<td class="tdTitle">풋살장 이름 : </td>
									<td>
										<span id="span_center_name" class="futInfo"><%=centerName%></span>
									</td>
								</tr>
								<tr>
									<td class="tdTitle">요금 : </td>
									<td>
										<span id="span_center_rate" class="futInfo"><%=centerCharge%></span>
									</td>
								</tr>
								<tr>
									<td class="tdTitle">구장 개수 : </td>
									<td>
										<span id="span_center_sectionNum" class="futInfo"><%=centerSectionNum%></span>
									</td>
								</tr>
								<tr>
									<td class="tdTitle">전화 번호 : </td>
									<td>
										<span id="span_center_phoneNum" class="futInfo"><%=centerPhone%></span>
									</td>
								</tr>
								<tr>
									<td class="tdTitle">구 : </td>
									<td>
										<span id="span_center_gu" class="futInfo"><%=centerKu%></span>
									</td>
								</tr>
								<tr>
									<td class="tdTitle">상세 주소 : </td>
									<td>
										<span id="span_center_detail" class="futInfo">
											<%=centerDetailAddress%>
										</span>
									</td>
								</tr>
								<tr>
									<td class="tdTitle">날짜 선택 : </td>
									<td class="tdInfo">
										<span id="p_data_choice" class="futInfo">
											<table id = "date_table" style="border-spacing:0px;">
												<tr>
													<td>
														<select id = "year" name = "year" class = "select_date"/>
													</td>
													<td>년</td>
													<td>
														<select id = "month" name = "month" class = "select_date"/>
													</td>
													<td>월</td>
													<td>
														<select id = "day" name = "day" class = "select_date"/>
													</td>
													<td>일</td>
												</tr>
											</table>
										</span>
									</td>
								</tr>
							</table>
							<table id = "time_table">
								<tr class = "time_table_tr">
									<th colspan = "2" class = "time_table_th">구장A</th>
									<th colspan = "2" class = "time_table_th">구장B</th>
									<th colspan = "2" class = "time_table_th">구장C</th>
								</tr>
		
								<tr class = "time_table_tr">
									<td colspan = "3" class = "time_table_td">08:00 ~ 10:00</td>
									<td colspan = "3" class = "time_table_td">10:00 ~ 12:00</td>
								</tr>
		
								<tr class = "time_table_tr">
									<td colspan = "3" class = "time_table_td">12:00 ~ 14:00</td>
									<td colspan = "3" class = "time_table_td">14:00 ~ 16:00</td>
								</tr>
		
								<tr class = "time_table_tr">
									<td colspan = "3" class = "time_table_td">16:00 ~ 18:00</td>
									<td colspan = "3" class = "time_table_td">18:00 ~ 20:00</td>
								</tr>
		
								<tr class = "time_table_tr">
									<td colspan = "3" class = "time_table_td">20:00 ~ 22:00</td>
									<td colspan = "3" class = "time_table_td">22:00 ~ 24:00</td>
								</tr>
							</table>
						</form>						

					</div>



					<a href="./reservationpay.jsp" class="button">예약 및 결제</a>
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