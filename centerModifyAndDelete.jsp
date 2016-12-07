<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="DAO.FutsalcenterDAO"%>
<%@page import="java.util.*"%>
<%
	List<FutsalcenterDAO> futsalCenterInformationList = new ArrayList<>();

	String type = (String) session.getAttribute("Type");
	String hostNo = (String) session.getAttribute("No");

	FutsalcenterDAO.getMyCenter(futsalCenterInformationList, hostNo);
%>
<!DOCTYPE HTML>
<!--
	Identity by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title id="title">풋살장 수정 및 삭제</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--[if lte IE 8]><script src="assets/js/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="shortcut icon" href="./images/favicon.ico" />
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css" />

<style type="text/css">
.inputRadioLabel {
	margin-left: 23px;
	margin-bottom: 30px;
}

.centerInfoTable td>input {
	text-align: center;
	padding: 0;
}

.centerInfoTable td .futName {
	width: 150px;;
}

.centerInfoTable td .futCharge {
	width: 100px;
}

.centerInfoTable td .futSecNum {
	width: 50px;
}

.centerInfoTable td .futPhone {
	width: 125px;
}

.centerInfoTable td .futDeTailAdd {
	width: 250px;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
<body class="is-loading" onload="bodyOnload()">

	<!-- Wrapper -->
	<div id="wrapper">

		<jsp:include page="./banner.jsp"></jsp:include>

		<div id="main">

			<hr />
			<p>수정하거나 삭제할 풋살장 정보를 선택해주세요.</p>
			<form action="./futModifyService.jsp" method="post">
			<table class="centerInfoTable">
				<tr>
					<th>선택</th>
					<th>풋살장이름</th>
					<th>요금</th>
					<th>구장개수</th>
					<th>전화번호</th>
					<th>상세주소</th>
				</tr>
				<%
					Iterator<FutsalcenterDAO> it = futsalCenterInformationList.iterator();
					int i = 0;
					while (it.hasNext()) {
						FutsalcenterDAO temp = it.next();
				%>
				<tr>
					<td><input class="inputRadio" type="radio" name="centerInfo"
						id="<%=temp.getCenterNo()%>" value="<%=temp.getCenterNo()%>" required/> <label class="inputRadioLabel"
						for="<%=temp.getCenterNo()%>" /></td>
					<td><input class="futName" type="text" id="futName<%=temp.getCenterNo()%>"
						value="<%=temp.getCenterName()%>" name="centerName<%=temp.getCenterNo()%>"/></td>
					<td><input class="futCharge" type="text" id="futChare<%=i%>"
						value="<%=temp.getCharge()%>" name="centerCharge<%=temp.getCenterNo()%>"/></td>
					<td><input class="futSecNum" type="text" id="futSecNum<%=i%>"
						value="<%=temp.getSectionNum()%>" name="centerSectionNum<%=temp.getCenterNo()%>"/></td>
					<td><input class="futPhone" type="text" id="futPhone<%=i%>"
						value="<%=temp.getCenterPhone()%>" name="centerPhone<%=temp.getCenterNo()%>"/></td>
					<td><input class="futDeTailAdd" type="text"
						id="futDeTailAdd<%=i%>" value="<%=temp.getDetailAddress()%>" name="centerDetailAddress<%=temp.getCenterNo()%>"/></td>
				</tr>
				<%
					i++;
					}
				%>
			</table>
			<input type="submit" value="수정" style="margin-top: 50px;"/>
			<input type="submit" value="삭제" formaction="./futDeleteService.jsp"/>
			</form>
			<hr />

		</div>
		<!-- Footer -->

		<footer id="footer">
			<ul class="copyright">
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
				document.body.className = document.body.className.replace(
						/\bis-loading\b/, '');
			});
			document.body.className += (navigator.userAgent
					.match(/(MSIE|rv:11\.0)/) ? ' is-ie' : '');
		}
	</script>
	<script src="./assets/js/dropbar.js"></script>
</body>
</html>