<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>온라인 갤러리</title>
</head>
<body>
		<%@ include file="include/header.jsp" %>
	<center>
	<img src="${pageContext.request.contextPath }/resources/img/3-8.jpg" height="400" width="300">&nbsp;&nbsp;
	<img src="${pageContext.request.contextPath }/resources/img/3-4.jpg" height="400" width="300">&nbsp;&nbsp;
	<img src="${pageContext.request.contextPath }/resources/img/3-6.jpg" height="400" width="300"><br><br>
	<img src="${pageContext.request.contextPath }/resources/img/3-1.jpg" height="400" width="300">&nbsp;&nbsp;
	<img src="${pageContext.request.contextPath }/resources/img/3-3.jpg" height="400" width="300">&nbsp;&nbsp;
	<img src="${pageContext.request.contextPath }/resources/img/3-7.jpg" height="400" width="300"><br><br>
	<img src="${pageContext.request.contextPath }/resources/img/3-5.jpg" height="400" width="300">&nbsp;&nbsp;
	<img src="${pageContext.request.contextPath }/resources/img/3-2.jpg" height="400" width="300">&nbsp;&nbsp;
	<img src="${pageContext.request.contextPath }/resources/img/3-9.jpg" height="400" width="300"><br><br>
	<br><br>
	<a href="gallery">1</a>&nbsp;&nbsp;<a href="gallery2">2</a>&nbsp;&nbsp;<a href="gallery3">3</a><br><br>
	<br><br><br><br>
	</center>
			<%@ include file="include/footer.jsp" %>
</body>
</html>