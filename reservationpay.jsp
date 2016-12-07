<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="DAO.HostDAO" %>
<%@page import="DAO.UserDAO" %>
<%@page import="DAO.ReservationDAO" %>
<%@page import="java.util.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	String centerNo = request.getParameter("centerNo");
	String centerName = request.getParameter("centerName");
	String centerCharge = request.getParameter("centerCharge");
/* 	String sectionNo = request.getParameter();
	String paymentOption = request.getParameter();
	String bookingDate = request.getParameter();
	String hoursOfUse = request.getParameter(); */
	
%>
<script>
	alert(<%=centerName%>);
</script>
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
		<title id = "title">예약 및 결제</title>
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
		<script type = "text/javascript" src = "./assets/js/reservationpay.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	</head>
	<body class="is-loading" onload="bodyOnload()">

		<!-- Wrapper -->
		<div id="wrapper">

			<jsp:include page="./banner.jsp"></jsp:include>

			<div id="main">

				<hr/>
				<form  method="post" action="#">
					<table>
						<tr>
							<td class="tdTitle">풋살장 이름 : </td>
							<td>
								<span id="span_fut_name" class="futInfo"><%=centerName%></span>
							</td>
						</tr>
						<tr>
							<td class="tdTitle">대관 날짜 : </td>
							<td>
								<span id="span_date" class="futInfo"><%=centerName%></span>
							</td>
						</tr>
						<tr>
							<td class="tdTitle">이용 시간 : </td>
							<td>
								<span id="span_time" class="futInfo"><%=centerName%></span>
							</td>
						</tr>
						<tr>
							<td class="tdTitle">이용 금액 : </td>
							
								<span id="span_rate" class="futInfo"><%=centerCharge%></span>
							</td>
						</tr>
						<tr>
							<td class="tdTitle">결제 방식 : </td>
							<td style="text-align:left;">
								<span id="span_paymentplan">
									<input type="radio" id="craditcard" name="paymentplan" value = "cardit"  onclick = "div_show(this.value)" />
									<label for="craditcard" style="margin:0px;">신용카드</label>
									<input type="radio" id="online_payment" name="paymentplan" value = "online"  onclick = "div_show(this.value)"/>
									<label for="online_payment" style="margin:0px;" >온라인 입금</label>
								</span>
							</td>
						</tr>
						<tr id = "choice_card1" style="display:none;">
							<td class="tdTitle">카드사 : </td>
							<td>
								<div class="select-wrapper" style="width:90px;">
									<select name="card_company" id="card_company" style="width:80px; ">
										<option value="카드사선택" selected>선택</option>
										<option value="국민">국민</option>
										<option value="하나">하나</option>
										<option value="BC">BC</option>
										<option value="신한">신한</option>
										<option value="롯데">롯데</option>
										<option value="농협">농협</option>
									</select>
								</div>	
							</td>
						</tr>
						<tr id = "choice_card2" style="display:none;">
							<td class="tdTitle">카드 번호 : </td>
							<td>
								<input type = "text" name = "cardnums" id = "cardnum_1" maxlength = "4" /><span class = "span_cardnum"> - </span>
								<input type = "password" name = "cardnums" id = "cardnum_2" maxlength = "4"/><span class = "span_cardnum"> - </span>
								<input type = "password" name = "cardnums" id = "cardnum_3" maxlength = "4"/><span class = "span_cardnum"> - </span>
								<input type = "text" name = "cardnums" id = "cardnum_4" maxlength = "4"/>
							</td>
							<td class="tdTitle">비밀번호 앞자리 2개 : </td>
							<td>
								<input type = "password" name = "pw_2" id = "pw_2" maxlength = "2"/>
							</td>
						</tr>
						<tr id = "choice_online1" style="display:none;">
							<td class="tdTitle">입금 은행 : </td>
							<td>
								<div class="select-wrapper" style="width:100px;">
									<select name="card_company" id="card_company" style="width:90px; ">
										<option value="카드사선택" selected>선택</option>
										<option value="국민">국민</option>
										<option value="하나">하나</option>
										<option value="BC">BC</option>
										<option value="신한">신한</option>
										<option value="롯데">롯데</option>
										<option value="농협">농협</option>
									</select>
								</div>	
							</td>
						</tr>
						<tr id = "choice_online2" style="display:none;">
							<td class="tdTitle">입금자 이름 : </td>
							<td>
								<input type ="text" id = "account_holder"/>
							</td>
						</tr>
					</table>
					<input type="submit" value="결제" formnovalidate formaction="#"/>
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