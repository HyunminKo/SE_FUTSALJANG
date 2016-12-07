<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String centerNo = request.getParameter("centerNo");
	String centerImg = request.getParameter("centerImg");
	String centerName = request.getParameter("centerName");
	String centerCharge = request.getParameter("centerCharge");
	String centerSectionNum = request.getParameter("centerSectionNum");
	String centerPhone = request.getParameter("centerPhone");
	String centerKu = request.getParameter("centerKu");
	String centerDetailAddress = request.getParameter("centerDetailAddress");
	
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
	<body class="is-loading" onload="bodyOnload(<%=centerSectionNum%>)">

		<!-- Wrapper -->
		<div id="wrapper">

			<jsp:include page="./banner.jsp"></jsp:include>

			<div id="main">

				<hr/>
				<img src="images/FUTSALJANG/<%=centerImg %>" alt="" class="w3-image" id = "center_picture_1">

					<div id = "center_info">


						<form  method="post" action="./reservationpay.jsp">
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
							<div id = "time_div">

							</div>
							<input type="hidden" name="centerNo" value="<%=centerNo%>"/>
							<input type="hidden" name="centerName" value="<%=centerName%>"/>
							<input type="hidden" name="centerCharge" value="<%=centerCharge %>"/>
							<!-- <input type="hidden" name="sectionNo" value=""/>-->
							<input type="hidden" name="paymentOption" value=""/>
							<input type="hidden" name="bookingDate" value=""/>
							<input type="hidden" name="hoursOfUse" value=""/>
							<input type ="submit" name = "btn_reservation" value ="예약 및 결제"/>
						</form>						

					</div>



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