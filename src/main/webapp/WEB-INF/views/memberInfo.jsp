<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>회원정보 변경 페이지</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/table.css">
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-round.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
</head>
<body>
	<!-- 230314 내용수정 -->
	<%@ include file="include/header.jsp" %>


	<table class="mtable">
		<tr>
			<td>&nbsp;</td>
		</tr>
	</table>

	<div class="wrapper_loginok">


	<table class="tt1" width="90%">
		<tr>
			<td><% if(session.getAttribute("Id") != null) { out.print(session.getAttribute("name")); } else {out.print("GUEST");} %>님 안녕하세요.</td>
		</tr>
	</table>


	<table class="tt2" width="90%">
		<tr>
			<td width="25%">예약하기</td>
			<td width="25%">문의하기</td>
			<td width="25%">회원정보</td>
		</tr>
		<tr  height="200">
			<td><a href="history"><img src="<c:url value="/resources/img/care.png" />"></a></td>
			<td><a href="question"><img src="<c:url value="/resources/img/qna.png" />"></a></td>
			<td><a href="infomodify"><img src="<c:url value="/resources/img/infomodify.png" />"></a></td>
		</tr>
	</table>
				
	</div>

        
        
	<table class="mtable">
		<tr>
			<td>&nbsp;</td>
		</tr>
	</table>

	<%@ include file="include/footer.jsp" %>
</body>
</html>