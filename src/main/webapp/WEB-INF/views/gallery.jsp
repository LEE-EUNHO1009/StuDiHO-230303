<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/hyperlink.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/submenu.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/tabmenu.css"> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/board.js"></script>
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-round.css" rel="stylesheet"></script>
<title>온라인 갤러리</title>
</head>
<body>
<%@ include file="include/header.jsp" %>

	
<!--Content 영역-->
 <div id="content" >
      
    <!-- 왼쪽 메뉴 영역 -->
    <div id="leftColumn">
        <h2>안녕하세요</h2>
        <ul>
            <li><a href="/company">증명사진</a></li>
            <li><a href="/location">프로필/ 컨셉</a></li>
            <li><a href="/location">반려견/ 반려묘</a></li>
        </ul>
    </div>
	
		
		<table>
			<tr>
				<td>
					<a href="${pageContext.request.contextPath }/resources/img/1.jpg">
					<img src="${pageContext.request.contextPath }/resources/img/1.jpg" width="300" height="380">&nbsp;&nbsp;
					</a>
				</td>
				<td>
					<a href="${pageContext.request.contextPath }/resources/img/2.jpg">
					<img src="${pageContext.request.contextPath }/resources/img/2.jpg" width="300" height="380">&nbsp;&nbsp;
					</a>
				</td>
				<td>
					<a href="${pageContext.request.contextPath }/resources/img/3.jpg">
					<img src="${pageContext.request.contextPath }/resources/img/3.jpg" width="300" height="380">&nbsp;&nbsp;
					</a>
				</td>
			</tr>
			<tr>
				<td>
					<a href="${pageContext.request.contextPath }/resources/img/4.jpg">
					<img src="${pageContext.request.contextPath }/resources/img/4.jpg" width="300" height="380">&nbsp;&nbsp;
					</a>
				</td>
				<td>
					<a href="${pageContext.request.contextPath }/resources/img/5.jpg">
					<img src="${pageContext.request.contextPath }/resources/img/5.jpg" width="300" height="380">&nbsp;&nbsp;
					</a>
				</td>
				<td>
					<a href="${pageContext.request.contextPath }/resources/img/6.jpg">
					<img src="${pageContext.request.contextPath }/resources/img/6.jpg" width="300" height="380">&nbsp;&nbsp;
					</a>
				</td>
			</tr>
			<tr>
				<td>
					<a href="${pageContext.request.contextPath }/resources/img/7.jpg">
					<img src="${pageContext.request.contextPath }/resources/img/7.jpg" width="300" height="380">&nbsp;&nbsp;
					</a>
				</td>
				<td>
					<a href="${pageContext.request.contextPath }/resources/img/8.jpg">
					<img src="${pageContext.request.contextPath }/resources/img/8.jpg" width="300" height="380">&nbsp;&nbsp;
					</a>
				</td>
				<td>
					<a href="${pageContext.request.contextPath }/resources/img/9.jpg">
					<img src="${pageContext.request.contextPath }/resources/img/9.jpg" width="300" height="380">&nbsp;&nbsp;
					</a>
				</td>
			</tr>
			<tr>
				<td><br><br>
					<a href="gallery">1</a>&nbsp;&nbsp;<a href="gallery2">2</a>&nbsp;&nbsp;<a href="gallery3">3</a><br><br>
					<br><br><br><br>
				</td>
			</tr>
		</table>
		
		
	</div>	
<%@ include file="include/footer.jsp" %>
</body>
</html>