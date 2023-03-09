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
			
			
			<td class="headertext01" >
				<div id="navi">
					<ul class="dropheader">
						<li class="dropheader01">
						<a href="company" class="dropheader02">COMPANY</a>
							<ul class="dropheader03">
								<li><a href="company" class="dropheader04">스튜디호 소개</a></li>
								<li><a href="location" class="dropheader04">스튜디호 오시는 길</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</td>
			
			
			<td class="margin02">&nbsp;</td>
			
			
			
			<td class="headertext01">
				<div id="navi">
						<ul class="dropheader">
							<li class="dropheader01">
							<a href="reservation">RESERVATION</a>
								
							</ul>
						</li>
					</ul>
				</div>		
			</td>
			
			
			<td class="margin02">&nbsp;</td>
			<td class="headertext01">
				<div id="navi">
						<ul class="dropheader">
							<li class="dropheader01">
							<a href="gallery">GALLERY</a>
								<ul class="dropheader03">
									<li><a href="gallery" class="dropheader04">증명사진</a></li>
									<li><a href="#" class="dropheader04">프로필/ 컨셉</a></li>
									<li><a href="#" class="dropheader04">반려견/ 반려묘</a></li>
										
							</ul>
						</li>
					</ul>
				</div>		
							
			</td>
			
			<td class="margin02">&nbsp;</td>
			<td class="headertext01"><a href="question">QUESTION</a></td>
			<td class="margin02">&nbsp;</td>
		</tr>		
			
	</table>
</body>
</html>