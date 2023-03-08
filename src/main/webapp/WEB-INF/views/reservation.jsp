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
								<a href="idpic" class="click01" id="tip">
									<img src="${pageContext.request.contextPath }/resources/img/Dia.png" width="500">
										<span>증명사진</span>
								</a>
							</td>
							<td width="70px">
								&nbsp;&nbsp;&nbsp;
							</td>
							<td  class="click01">
								<a href="profile" class="click01" id="tip">
									<img src="${pageContext.request.contextPath }/resources/img/eunho.png" width="500" height="665">
										<span>프로필사진</span>
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