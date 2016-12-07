<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import ="java.sql.*" %>
 <%
	String id = (String) session.getAttribute("Id");
 	String type = (String) session.getAttribute("Type");
 	String memberNo = (String) session.getAttribute("No");
 %>	
	<!-- Main -->
	<div id="banner">
		<div id="bannerMinusTitleDiv">
			<ul class="actions">
				<li>
					<span>
						<a href="./home.jsp">
							<img src="images/1logo_bgDelete2.png" alt="" width="180px" height="120px" style="position:relative; margin-bottom:15px; margin-left:-30px;"/>
						</a>
					</span>
				</li>
				<li>
					<form action = "./home.jsp" method = "post" onsubmit = "return urlCheck();">
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
								<input type="submit" id="searchBtn" value="검색" />
								<input type = "hidden" id = "hiddenInput" name = "hiddenInput" value = ""/>
							</li>
						</ul>
					</div>
					</form>
				</li>
				<li>
					<div id="operationIcons">
						<ul class="icons">
							<% 
								if(type == null){
							%>
								<li>
									<a href="./login.html" title="로그인" class="fa-user">회원가입</a>
								</li>
							<% 
								}else if(type.equals("user")){
							%>
								<li>
									<a href="#" class="fa-user" onclick = "" title="마이페이지" id ="btn_userMypage">마이페이지</a>
									<div id="userMypage" class="dropdown-content1">
										<a href="./userHistory.jsp" class = "dropdown_A" id = "userHistory">이용 내역</a>
										<a href="./teamModify.jsp" class = "dropdown_A" id = "teamModify">팀 수정 및 삭제</a>
										<a href="./logoutService.jsp" class = "dropdown_A" id = "userLogout">로그아웃</a>
									</div>
								</li>
							<% 
								}else if(type.equals("host")){
							%>							
								<li>
									<a href="#" class="fa-user" onclick = "" title="마이페이지" id ="btn_hostMypage">마이페이지</a>
									<div id="hostMypage" class="dropdown-content1">
										<a href="./hostHistory.jsp" class = "dropdown_A" id = "hostHistory">이용 내역</a>
										<a href="./centerEnroll.jsp" class = "dropdown_A" id = "centerEnroll">풋살장 등록</a>
										<a href="./centerModifyAndDelete.jsp" class = "dropdown_A" id = "centerModify">풋살장 수정 및 삭제</a>
										<a href="./logoutService.jsp" class = "dropdown_A" id = "hostLogout">로그아웃</a>
									</div>
								</li>
							<% 
								}else{
							%>
								<li>
									<a href="#" class="fa-user" onclick = "" title="마이페이지" id ="btn_adminMypage">마이페이지</a>
									<div id="adminMypage" class="dropdown-content1">
										<a href="./memberCheck.jsp" class = "dropdown_A" id = "memberCheck">회원 조회</a>
										<a href="./logoutService.jsp" class = "dropdown_A" id = "adminLogout">로그아웃</a>
									</div>
								</li>
							<% 
								}
							%>
							<li>
								<a href="#" title="VIP조회" class="fa-trophy" id = "btn_vip" onclick= "">VIP</a>
								<div id="vip" class="dropdown-content2">
									<table>
										<tr>
											<th>아이디</th>
											<th>예약횟수</th>
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
								<a href="./teamCheck.jsp" title="팀조회" class="fa-users">TEAM</a>
							</li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
		
		<h1 style="font-family: 'Hanna', serif;" id="currentScreenName">대전 전체 풋살장 검색</h1>
	</div>