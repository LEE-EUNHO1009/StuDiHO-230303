<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우리들의 스튜디호</title>
</head>
<body>
<%@ include file="include/header.jsp" %>
	<center>
	<table width="75%" border="0" cellspacing="0" cellpadding="20">
		<tr>
			<td align="center">
				<span class="title01">StuDiHo Page</span>
			</td>
		</tr>	
		<tr>
			<td align="center">
				<span class="title02">안녕하세요. 스튜디호에 오신 것을 환영합니다.</span>
			</td>
		</tr>
		<tr>
			<td align="center">
				<table width="80%" border="0" cellspacing="0" cellpadding="10">
					<tr>
						<td class="skillbox">
							<span class="title03">J</span><span class="title04">AVA</span>
						</td>
						<td rowspan="6" class="picbox">
							<img src="${pageContext.request.contextPath }/resources/img/Hao1.jpg">
						</td>
					</tr>
					<tr>
						<td class="skillbox">
							<span class="title03">J</span><span class="title04">SP</span>
						</td>
					</tr>
					<tr>
						<td class="skillbox">
							<span class="title03">S</span><span class="title04">PRINGBOOT</span>
						</td>
					</tr>
					<tr>
						<td class="skillbox">
							<span class="title03">J</span><span class="title04">AVASCRIPT</span>
						</td>
					</tr>
					<tr>
						<td class="skillbox">
							<span class="title03">H</span><span class="title04">TML5</span>
						</td>
					</tr>
					<tr>
						<td class="skillbox">
							<span class="title03">D</span><span class="title04">ATABASE</span>
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