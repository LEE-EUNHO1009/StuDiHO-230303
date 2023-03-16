<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>회원정보 변경 페이지</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/table.css">
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-round.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
</head>
<body>
	<!-- 230314 내용수정 -->
	<%@ include file="include/header.jsp" %>
	<center height="100%">
		<div class="wrapper_loginok">
	
			<table class="tt1" width="100%">
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td align="center">
						<span class="main01">StuDIHO Company</span>
					</td>
				</tr>	
				<tr>
					<td>
						&nbsp;
					</td>
				</tr>
				<tr>
					<td align="center">
						<span class="main02">This is the photo studio. Please call me if you have any questions about the reservation.</span>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				
			</table>


			<table class="tt1" width="100%" >
				<tr>
					<td colspan="3"><% if(session.getAttribute("Id") != null) { out.print(session.getAttribute("name")); } else {out.print("GUEST");} %>님 안녕하세요.</td>
				</tr>
				<tr height="300px">
					<td>
						<input class="button_type01"  type="button" value="예약내역" onclick="javascript:window.location='history'" >&nbsp;
					</td>
					<td>
						<input class="button_type01"  type="button" value="문의하기" onclick="javascript:window.location='question'" >&nbsp;
					</td>
					<td>
						<input class="button_type01"  type="button" value="회원정보" onclick="javascript:window.location='infomodify'" >&nbsp;
					</td>
				</tr>
			</table>
				
	</div>
</center>
<!--  푸터 뜨는 현상 수정 -->
 <div style="height: 300px">
</div>	
<%@ include file="include/footer.jsp" %>
</body>
</html>