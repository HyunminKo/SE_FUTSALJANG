<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="DAO.ReservationDAO" %>
<%@page import="java.util.*" %>
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
	
	List<ReservationDAO> rsvList = new ArrayList<>();
	
	ReservationDAO.selectRsvData(rsvList,centerNo);
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

					<div id = "center_info">


						<form  method="post" action="./reservationpay.jsp">
							<img src="images/FUTSALJANG/<%=centerImg %>" alt="" class="w3-image" id = "center_picture_1">
							<table id="center_infoTable">
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
														<select id = "year" name = "year" class = "select_date" onchange="selectDate(this)"/>
													</td>
													<td>년</td>
													<td>
														<select id = "month" name = "month" class = "select_date" onchange="selectDate(this)"/>
													</td>
													<td>월</td>
													<td>
														<select id = "day" name = "day" class = "select_date" onchange="selectDate(this)"/>
													</td>
													<td>일</td>
												</tr>
											</table>
										</span>
									</td>
								</tr>
							</table>


							<input type="hidden" name="centerNo" value="<%=centerNo%>"/>
							<input type="hidden" name="centerName" value="<%=centerName%>"/>
							<input type="hidden" name="centerCharge" value="<%=centerCharge %>"/>
							<input type="hidden" name="sectionNo" id ="sectionNo" value="0"/>
							<input type="hidden" name="paymentOption" id = "paymentOption" value=""/>
							<input type="hidden" name="hoursOfUse" id = "hoursOfUse" value="8:00 ~ 10:00"/>
							<input type="hidden" name="hours" id = "hours" value="8"/>
							

							<div id = "time_div">

							</div>
						</form>						

					</div>
							<div id="rsvbuttonDiv">
							<% 
								String type = (String) session.getAttribute("Type");
								if(type == null){
							%>
									<input type ="button" name = "btn_reservation" value ="예약 및 결제" onclick="alert('예약을 하려면 로그인이 필요합니다'); location.href='./login.html'"/>
							<% 
								}else if(type.equals("user")){
									
							%>
									<input type ="submit" name = "btn_reservation" value ="예약 및 결제"/>
							<% 
								}
							%>
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
				
				var dateArr = [<% for (int i = 0; i < rsvList.size(); i++) { %>"<%= rsvList.get(i).getBookingDate()%>"<%= i + 1 < rsvList.size() ? ",":"" %><% } %>];
				var hoursArr = [<% for (int i = 0; i < rsvList.size(); i++) { %>"<%= rsvList.get(i).getHoursOfUse() %>"<%= i + 1 < rsvList.size() ? ",":"" %><% } %>];
				var sectionArr = [<% for (int i = 0; i < rsvList.size(); i++) { %>"<%= rsvList.get(i).getSectionNo() %>"<%= i + 1 < rsvList.size() ? ",":"" %><% } %>];
				
				var input_var;
				var time;
				var time_div = document.getElementById("time_div");
				var select = document.createElement("select");
				select.setAttribute("onChange","selectSection(this)");
				select.setAttribute("id","sectionSelect");
				for(var i = 0 ; i < <%=centerSectionNum%>; i++){
						var option = document.createElement("option");
						option.setAttribute("value","구장"+String.fromCharCode(i+65));
						option.setAttribute("id",i);
						option.innerHTML = "구장"+String.fromCharCode(i+65);
						select.appendChild(option);
				}
				time_div.appendChild(select);

				for(var k = 0; k < <%=centerSectionNum%>; k++){
					var time_table = document.createElement("table");
					time = 8;
					input_var = 0;
					time_table.setAttribute("class", "timeTD "+k);
					for(var i = 0; i < 4; i++){
						var tr = document.createElement("tr");
						tr.setAttribute("class", "time_table_tr");
						for(var j = 0; j < 2; j++){
							var input = document.createElement("input");
							input.setAttribute("class", "time_table_input");
							input.setAttribute("type","button");
							input.setAttribute("onClick", "settingUseTime(this)")
							input.setAttribute("id",k+"input"+input_var);
							input.value = (parseInt(time) + ":00 ~ " + parseInt(parseInt(time)+2) +":00") ;
							tr.appendChild(input);
							time = time+2;
							input_var = input_var + 2;
						}
						time_table.appendChild(tr);
					}
					time_div.appendChild(time_table);
				}
				
					$(".timeTD").hide();
					$(".0").show();
				

					
			</script>
			<script src = "./assets/js/dropbar.js"></script>
		</body>
	</html>