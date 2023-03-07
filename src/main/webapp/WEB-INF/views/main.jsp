<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/swiper.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/swiper.js">
<title>우리들의 스튜디호</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<center class="swiper01">
		<div class=class="swiper-button-prev">
			<img src="${pageContext.request.contextPath }/resources/img/gran.png" width="100%" height="100%">
		</div>	
		<div class=class="swiper-button-prev">
			<img src="${pageContext.request.contextPath }/resources/img/main.png" width="100%" height="100%">
		</div>
	</center>
	<%@ include file="include/footer.jsp" %>
</body>
</html>