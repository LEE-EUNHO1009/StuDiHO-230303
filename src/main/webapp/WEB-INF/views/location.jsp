<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/submenu.css">
<title>찾아오시는 길</title>
</head>
<body>
<%@ include file="include/header.jsp" %>
	<center>
	<!--Content 영역-->
	  <div>  
		<!-- 왼쪽 메뉴 영역 -->
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
								<td class="content01">
									Address : 대한민국 인천광역시 남구 주안동 136-1, 경향프라자 7층<br>
									Tel : 032-456-789/ 010-456-7894<br>
									<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3166.876839588016!2d126.67953491558637!3d37.46362973777194!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b7943ae58537b%3A0x1a2d126297c6823d!2z6rK97Zal7ZSE65287J6Q!5e0!3m2!1sko!2sus!4v1678262644101!5m2!1sko!2sus" width="800" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</td>
								
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