<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import ="java.sql.*" %>	
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
								<input type="button"class="button" id="searchBtn" value="검색"/>
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
								<div id="mypage" class="dropdown-content1">
									<a href="#" class = "test" id = "history">이용 내역</a>
									<a href="#" class = "test" id = "centerEnroll">풋살장 등록</a>
									<a href="#" class = "test" id = "centermodify">풋살장 수정 및 삭제</a>
								</div>
							</li>
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
								<a href="#" class="fa-users">TEAM</a>
							</li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
		
		<h1 style="font-family: 'Hanna', serif;" id="currentScreenName"></h1>
	</div>