<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import ="java.sql.*" %>
<%@page import="DAO.HostDAO" %>
<%@page import="DAO.UserDAO" %>
<%@page import="java.util.*" %>
<%
	UserDAO userDAO = new UserDAO();
	HostDAO hostDAO = new HostDAO();
	List<UserDAO> userinformationList = new ArrayList<UserDAO>();
	List<HostDAO> hostinformationList = new ArrayList<HostDAO>();
	userDAO.select(userinformationList);
	hostDAO.select(hostinformationList);
%>

<!DOCTYPE HTML>
<!--
	Identity by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>뛰놀자</title>
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
		</style>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		
 	 	<script>

		</script>
	</head>
	<body class="is-loading">

		<!-- Wrapper -->
		<div id="wrapper">

			<!-- Main -->
			<div id="banner">
				<div>
					<ul class="actions">
						<li>
							<span>
								<a href="./home.html">
									<img src="images/1logo_bgDelete2.png" alt="" width="180px" height="120px" style="position:relative; margin-bottom:15px; margin-left:-30px;"/>
								</a>
							</span>
						</li>
						<li>
							<div class="select-wrapper" id="selectGu">
								<ul  class="actions">
									<li>
										<select name="guList" id="guList">
											<option value="전체">전체</option>
											<option value="유성구">유성구</option>
											<option value="동구">동구</option>
											<option value="중구">중구</option>
											<option value="서구">서구</option>
											<option value="대덕구">대덕구</option>
										</select>
									</li>
									<li>
										<a href="#" class="button" style="background: rgba(255, 255, 255, 0.55);">검색</a>
									</li>
								</ul>
							</div>
						</li>
						<li>
							<div id="operationIcons">
								<ul class="icons">
									<li>
										<a href="./login.html" title="회원가입" class="fa-user">회원가입</a>
									</li>
									<li>
										<a href="#" class="fa-user" onclick = "" id ="btn_mypage">마이페이지</a>
										<div id="mypage" class="dropdown-content">
											<a href="#" class = "test" id = "history"/>이용 내역</a>
											<a href="#" class = "test" id = "centerEnroll"/>풋살장 등록</a>
											<a href="#" class = "test" id = "centermodify"/>풋살장 수정 및 삭제</a>
										</div>
									</li>
									<li>
										<a href="#" title="VIP조회" class="fa-trophy" id = "btn_vip" onclick= "">VIP</a>
										<div id="vip" class="dropdown-content">
											<table>
												<tr>
													<td>아이디</td>
													<td>예약횟수</td>
												</tr>
												
												<tr>
													<td>YSJGOOD</td>
													<td>10</td>													
												</tr>
												
												<tr>
													<td>KHMKIN</td>
													<td>8</td>
												</tr>

												<tr>
													<td>JCHBS</td>
													<td>5</td>
												</tr>

											</table>
									 	</div>
									</li>
									<li>
										<a href="#" class="fa-users">TEAM</a>
									</li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
				
				<h1 style="font-family: 'Hanna', serif;" id="currentScreenName">회원 조회</h1>
			</div>

			<div id="main">
					
					<hr/>
						<div>
							<table id= "memberCheck_table" align = "center">
								<tr>
									<th>회원번호</th>
									<th>아이디</th>
									<th>이름</th>
									<th>등급</th>
									<th>전화번호</th>
									<th>수정</th>
									<th>삭제</th>
								</tr>
<% 
			Iterator<UserDAO> it = userinformationList.iterator();
			int i = 0;
			while(it.hasNext()){
				UserDAO temp = it.next();
%>
				<tr>
					<td id="No<%=i%>"><%=temp.getUserNo()%></td>
					<td id="Id<%=i%>"><%=temp.getUserId() %></td>
					<td id="Name<%=i%>"><%= temp.getUserName() %></td>
					<td id="Grade<%=i%>"><%=temp.getUserGrade() %></td>
					<td id="Phone<%=i%>"><%=temp.getUserPhone() %></td>
					<td><input type="button" id = "modify<%=i %>" value="수정" onclick="memberModify(this)"/></td>
					<td><input type="button" value="삭제"/></td>
				</tr>
<%
				i++;
			}
%>
<% 
			Iterator<HostDAO> it_Host = hostinformationList.iterator();
			i = 0;
			while(it_Host.hasNext()){
				HostDAO temp = it_Host.next();
%>
				<tr>
					<td id="No<%=i%>"><%=temp.getHostNo()%></td>
					<td id="Id<%=i%>"><%=temp.getHostId() %></td>
					<td id="Name<%=i%>"><%= temp.getHostName()%></td>
					<td id="Grade<%=i%>"></td>
					<td id="Phone<%=i%>"><%=temp.getHostPhone()%></td>
					<td><input type="button" id = "modify<%=i %>" value="수정" onclick="memberModify(this)"/></td>
					<td><input type="button" value="삭제"/></td>
				</tr>
<%
				i++;
			}
%>								
							</table>
						</div>

						<div id="layer_pop">
							<br>
							<form method="post" action="./memberModifyService.jsp">
								<h3 id ="pop_p">수정하기</h3>
								<p>아이디 : <span id="layer_Id"></span></p>
								<p>이름 : <span id="layer_Name"></span></p>
								<select name="memberGrade" id="memberGrade" required>
										<option value="일반">일반</option>
										<option value="VIP">VIP</option>
								</select>
								<br>
								<input type = "text" id = "modifyPhone" name="modifyPhone" placeholder = "" required/>
								<br>
								<input type = "hidden" name = "memberNo" id="memberNo" value = ""/> 
								<input type = "submit" class = "btn_modify" value = "수정"/> 
								<input type = "button" class = "btn_close" value = "취소" onclick="layerClose(this)"/>
							</form>
						</div>
					<hr/>
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
						document.body.className = document.body.className.replace(/\bis-loading\b/, ''); 
					});
					document.body.className += (navigator.userAgent.match(/(MSIE|rv:11\.0)/) ? ' is-ie' : '');
				}
		</script>
		<script src = "./assets/js/dropbar.js"></script>
		<script src = "./assets/js/memberCheck.js"></script>
	</body>
</html>