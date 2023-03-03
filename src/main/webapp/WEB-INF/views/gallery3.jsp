<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/hyperlink.css">
<title>온라인 갤러리</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<center>
	<br>
	<a href="${pageContext.request.contextPath }/resources/img/8.jpg">
		<img src="${pageContext.request.contextPath }/resources/img/8.jpg" width="300" height="380">&nbsp;&nbsp;
	</a>
	<a href="${pageContext.request.contextPath }/resources/img/4.jpg">
		<img src="${pageContext.request.contextPath }/resources/img/4.jpg" width="300" height="380">&nbsp;&nbsp;
	</a>
	<a href="${pageContext.request.contextPath }/resources/img/6.jpg">
		<img src="${pageContext.request.contextPath }/resources/img/6.jpg" width="300" height="380"><br><br>
	</a>
	<a href="${pageContext.request.contextPath }/resources/img/1.jpg">
		<img src="${pageContext.request.contextPath }/resources/img/1.jpg" width="300" height="380">&nbsp;&nbsp;
	</a>
	<a href="${pageContext.request.contextPath }/resources/img/3.jpg">
		<img src="${pageContext.request.contextPath }/resources/img/3.jpg" width="300" height="380">&nbsp;&nbsp;
	</a>
	<a href="${pageContext.request.contextPath }/resources/img/7.jpg">
		<img src="${pageContext.request.contextPath }/resources/img/7.jpg" width="300" height="380"><br><br>
	</a>
	<a href="${pageContext.request.contextPath }/resources/img/5.jpg">
		<img src="${pageContext.request.contextPath }/resources/img/5.jpg" width="300" height="380">&nbsp;&nbsp;
	</a>
	<a href="${pageContext.request.contextPath }/resources/img/2.jpg">
		<img src="${pageContext.request.contextPath }/resources/img/2.jpg" width="300" height="380">&nbsp;&nbsp;
	</a>
	<a href="${pageContext.request.contextPath }/resources/img/9.jpg">
		<img src="${pageContext.request.contextPath }/resources/img/9.jpg" width="300" height="380"><br><br>
	</a>
	<br><br>
	<a href="gallery">1</a>&nbsp;&nbsp;<a href="gallery2">2</a>&nbsp;&nbsp;<a href="gallery3">3</a><br><br>
	<br><br><br><br>
	</center>
	<%@ include file="include/footer.jsp" %>
</body>
</html>