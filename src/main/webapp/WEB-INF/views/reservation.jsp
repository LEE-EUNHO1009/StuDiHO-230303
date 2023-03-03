<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/hyperlink.css">
<title>우리들의 스튜디호</title>
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
							<td>
								<a href="idpic">
									<img src="${pageContext.request.contextPath }/resources/img/Dia.png" width="500">
								</a>
							</td>
							<td width="70px">
								&nbsp;&nbsp;&nbsp;
							</td>
							<td>
								<a href="profile">
									<img src="${pageContext.request.contextPath }/resources/img/eunho.png" width="500" height="665">
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