<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/submenu.css">
<title>스튜디호 소개</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<center>
	<div class="submenu01" style="height: 40%">
	<ul class="mm1_sub" style="display:block;">
		<li class="sub01">
			<a href="company" class="submenu02">스튜디호 소개</a>
		</li>
		<li class="sub01">
			<a href="location" class="submenu02">스튜디호 오시는 길</a>
		</li>
	</ul>
	</div>
	<table width="75%" border="0" cellspacing="0" cellpadding="20">
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
			<td align="center">
				<table width="80%" border="0" cellspacing="0" cellpadding="10">
					<tr class="contentbox">
						<td class="content">
							안녕하세요. 우리들의 스튜디호입니다.<br>
							저희 사진관에 찾아주셔서 감사합니다.<br>
							우리들의 스튜디호는 2인으로 운영되는 사진관으로<br>
							각자의 개성을 살릴 수 있는 프로필 사진이나<br>
							기본적인 증명사진을 촬영하실 수 있습니다.<br>
							사진에 관련하여 궁금하신 분은 StuDiHoCompany@gmail.com으로 연락주세요.<br>	
						</td>
					</tr>
				</table>
			</td>
		</tr>	
	</table>
	</center>
	<%@ include file="include/footer.jsp" %>
</body>
</html>