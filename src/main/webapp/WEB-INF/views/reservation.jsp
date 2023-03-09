<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/hyperlink.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/reservation.css">
<title>예약</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<center>
		<table width="75%" border="0" cellspacing="0" cellpadding="20">
			<tr>
				<td align="center">
					
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
						<tr>
							<td class="click01">
								<a href="reservationHistory" class="click01" id="banner_bg">
									<img src="${pageContext.request.contextPath }/resources/img/eunho.png" width="500" height="665">
										<p class="hover_text">증명/프로필</p>
								</a>
							</td>
							<td width="70px">
								&nbsp;&nbsp;&nbsp;
							</td>
							<td  class="click01">
								<a href="reservationHistory" class="click01" id="banner_bg">
									<img src="${pageContext.request.contextPath }/resources/img/Dang.jpg" width="500" height="665">
										<p class="hover_text">반려견&묘</p>
								</a>
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