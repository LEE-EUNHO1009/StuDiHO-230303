<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 사용안함 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/table.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/members.js"></script>
<title>회원가입 성공</title>
</head>
<body>
<!-- 230314 수정 내용 -->

<%@ include file="include/header.jsp" %>
	 <div style="height: 100px">
	</div>
		<div class="wrapper_loginok">
		
			<table width="900px">
				<tr class="contentbox">
					<td class="content">
						<table border="0" cellspacing="0" cellpadding="10">
							
							<tr align="center">
								<td>
									<span id="menu">
										<%
											int checkId = Integer.parseInt(request.getAttribute("checkIdFlag").toString());
										
											if(checkId == 1) {								
										%>				
											<script language="JavaScript">
												alert("입력하신 아이디는 이미 사용중입니다. 다른 아이디를 입력하세요.");
												history.go(-1);
											</script>
										<% 
											} 
										%>
								
										${mname }</b> 님 회원 가입을 축하드립니다!
									</span>
								</td>
							</tr>
							<tr height="40" align="center">
								<td align="center">가입하신 아이디는 ${mid } 입니다.
								</td>
							</tr>
							
						</table>
						<table class="tt2" width="90%">
								
							<tr height="150px">
								<td align="center">
									<input class="button_type01"  type="button" value="로그인 하기" onclick="javascript:window.location='login'" >
								</td >
							
							</tr>
						</table>
					</td>
				</tr>
			</table>
						
		</div>
		    <table>
				<tr>
					<td>&nbsp;</td>
				</tr>
			</table>
	
	<!--  푸터 뜨는 현상 수정 -->
 <div style="height: 100px">
</div>
<%@ include file="include/footer.jsp" %>
</body>
</html>