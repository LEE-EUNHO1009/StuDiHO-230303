<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-round.css" rel="stylesheet">
<title>로그인 성공</title>
</head>
<body>
	<!-- 230314 수정내용 -->
	<%@ include file="include/header.jsp" %>

	<center>
	<div>
	<table width="75%" border="0" cellspacing="0" cellpadding="20">


	<%
		int checkId = Integer.parseInt(request.getAttribute("checkIdFlag").toString());
		int checkPw = Integer.parseInt(request.getAttribute("checkPwFlag").toString());
	
		if(checkId == 0) {								
	%>				
		<script language="JavaScript">
			alert("입력하신 아이디는 존재하지 않는 아이디입니다. 아이디를 확인해 주세요.");
			history.go(-1);
		</script>
	<% 
		} else if (checkPw == 0) {
	%>
		<script language="JavaScript">
			alert("입력하신 비밀번호가 틀립니다. 다시 확인해 주세요.");
			history.go(-1);
		</script>
	<% 
		} else if (session.getAttribute("Id").equals("admin")) {
	%>
		<script language="JavaScript">
		document.location = "adminInfo";
		</script>
	
	<% 
		} else {
			
			session.setAttribute("ValidMem", "yes");
		}
	%>
	 
	 
	<tr>
			<td align="center">
				<span class="main01">StuDIHO Company</span>
			</td>
		</tr>	
		<tr>
			<td align="center">
				<span class="main02">This is the photo studio. Please call me if you have any questions about the reservation.</span>
			</td>
		</tr>
		<tr>
			<td colspan="3" class="content">
				${memberDto.mname }님 안녕하세요.
			</td>
		</tr>
		<tr>
			<td align="center">
				<table width="80%" border="0" cellspacing="0" cellpadding="10">
					
					<tr class="contentbox01">
						<td width="25%" class="content">
							<a href="reservation">예약하기</a></td>
						<td width="25%" class="content">
							<a href="question">문의하기</a></td>
						<td width="25%" class="content">
							<a href="infomodify">정보수정</a></td>
					</tr>
				</table>
			</td>
		</tr>	
	</table>
	</div>
</center>
<%@ include file="include/footer.jsp" %>

</body>
</html>