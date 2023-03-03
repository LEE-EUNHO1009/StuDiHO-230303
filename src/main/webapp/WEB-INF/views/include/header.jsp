<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/hyperlink.css">
<title>header</title>
</head>
<body>
<%
		String sessionId = (String) session.getAttribute("memberId");
		//로그인 성공시 memberId 이름으로 아이디가 세션에 set	
	%>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">		
		<tr class="header01">
			<td class="margin01">&nbsp;</td><!-- 여백 -->
			<td class="headertext01"><a href="main">HOME</a></td>
			<td class="margin02">&nbsp;</td>
			<%
				if(sessionId == null) {
			%>			
			<td class="headertext01"><a href="login">LOGIN</a></td>
			<%
				} else {
			%>
			<td class="headertext01"><a href="logout">LOGOUT</a></td>
			<%
				}
			%>
			<td class="margin02">&nbsp;</td>
			<%
				if(sessionId == null) {
			%>	
			<td class="headertext01"><a href="join">JOIN</a></td>
			<%
				} else {
			%>
			<td class="headertext01"><a href="memberModify">MODIFY</a></td>
			<%
				}
			%>
			<td class="margin02">&nbsp;</td>
			<td class="headertext01"><a href="company">COMPANY</a></td>
			<td class="margin02">&nbsp;</td>
			<td class="headertext01"><a href="reservation">RESERVATION</a></td>
			<td class="margin02">&nbsp;</td>
			<td class="headertext01"><a href="gallery">GALLERY</a></td>
			<td class="margin02">&nbsp;</td>
			<td class="headertext01"><a href="question">QUESTION</a></td>
			<td class="margin02">&nbsp;</td>
		</tr>		
			
	</table>
</body>
</html>