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
	<img src="${pageContext.request.contextPath }/resources/img/2-1.jpg" width="300">&nbsp;&nbsp;
	<img src="${pageContext.request.contextPath }/resources/img/2-2.jpg" width="300">&nbsp;&nbsp;
	<img src="${pageContext.request.contextPath }/resources/img/2-3.jpg" width="300"><br><br>
	<img src="${pageContext.request.contextPath }/resources/img/2-4.jpg" width="300">&nbsp;&nbsp;
	<img src="${pageContext.request.contextPath }/resources/img/2-5.jpg" width="300">&nbsp;&nbsp;
	<img src="${pageContext.request.contextPath }/resources/img/2-6.jpg" width="300"><br><br>
	<img src="${pageContext.request.contextPath }/resources/img/2-7.jpg" width="300">&nbsp;&nbsp;
	<img src="${pageContext.request.contextPath }/resources/img/2-8.jpg" width="300">&nbsp;&nbsp;
	<img src="${pageContext.request.contextPath }/resources/img/2-9.jpg" width="300"><br><br>
	<br><br>
	<a href="gallery">1</a>&nbsp;&nbsp;<a href="gallery2">2</a>&nbsp;&nbsp;<a href="gallery3">3</a><br><br>
	<br><br><br><br>
	</center>
			<%@ include file="include/footer.jsp" %>
</body>
</html>