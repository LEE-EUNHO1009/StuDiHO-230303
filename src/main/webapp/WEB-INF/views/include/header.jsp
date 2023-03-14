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
		String sessionId = (String) session.getAttribute("Id");
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
			<!-- 마우스오버 테스트 시작 -->
			<!-- <div id="menu">
			<ul>
				<li>
			<a href="company">COMPANY</a>
					<ul>
						<li><a href="#">회사 소개</a></li>
						<li><a href="#">찾아오시는길</a></li>
					</ul>
				</li>
						<ul>
				<li>
				
			<a href="reservation">RESERVATION</a>

			<a href="gallery">GALLERY</a>
					<ul>
						<li><a href="#">프로필 사진</a></li>
						<li><a href="#">반려견/묘 사진</a></li>
						<li><a href="#">컨셉 사진</a></li>
					</ul>
				</li>
			</div> -->
            <!-- 마우스오버 테스트 끝 -->

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