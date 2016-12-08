<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="com.oreilly.servlet.MultipartRequest,com.oreilly.servlet.multipart.DefaultFileRenamePolicy,java.util.*,java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="DAO.FutsalcenterDAO"%>
<%@ page import="java.io.*"%>
<%
		/******************/

		fscDao = new FutsalcenterDAO(hostNo, centerName, "대전광역시", guName, centerDetailAddress, baseCharge,
				centerSectionNum, centerPhoneNum, imgFileName);

		if (fscDao.enroll()) {
		%>
		<script>
			alert("풋살장 등록에 성공하였습니다.");
			location.replace("./home.jsp");
		</script>
		<%
			} else {
		%>
		<script>
			alert("존재하는 풋살장 이름입니다.");
			history.go(-1);
		</script>
		<%
			}
		
			} catch (Exception e) {
				e.printStackTrace();
			}
		%>