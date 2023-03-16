<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>회원 탈퇴 확인</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/table.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/tabmenu.css"> 
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-round.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/members.js"></script>
</head>
<body>
	<!-- 23014 수정내용 -->
	<%@ include file="include/header.jsp" %>
	
	
	

	<%
		int checkId = Integer.parseInt(request.getAttribute("checkIdFlag").toString());
		int checkPw = Integer.parseInt(request.getAttribute("checkPwFlag").toString());
	
		if(checkPw == 0) {								
	%>				
		<script language="JavaScript">
			alert("입력하신 비밀번호가 틀립니다. 다시 확인해 주세요.");
			history.go(-1);
		</script>
	<% 
		}
	%>
<!--Content 영역-->
 <div id="content" >
 	
		<!-- 본문 컨테이너 : main -->
        <div id="main">

	            
				<table class="tt1">
					<tr>
						<td><span id="menu">회원 탈퇴</span></td>
					</tr>
				</table>
					
					
				<table width="900px">
					<tr class="contentbox">
						<td class="content">
							<center>
								<table border="0" cellspacing="0" cellpadding="10">
									<!--  <form action="memberCancelOk" method="post" name="reg_frm">-->
									<form>
										<!-- <input type="hidden" name="id" value="${memberDto.mid }"> -->
										<tr>
											<td colspan="2" align="center"><span class="content_text01">그동안 이용해주셔서 감사합니다. </span></td>
											
										</tr>
										<tr>
											<td><br></td>
										</tr>
										<tr>
											<td colspan="2" align="center">
												<input class="button_type01" type="button" value="처음으로" onclick="javascript:window.location='main'">&nbsp;
												<input class="button_type01" type="button" value="회원가입" onclick="javascript:window.location='join'">
											</td>
										</tr>
									</form>	
								</table>
							</center>
						</td>
					</tr>
				</table>
			
        </div>
		    <table>
	            <tr>
	                <td>&nbsp;</td>
	            </tr>
		    </table>

<!--  왼쪽 메뉴 추가 -->
 </div>
<!--  푸터 뜨는 현상 수정 -->
 <div style="height: 100px">
</div>	  
	

	<%@ include file="include/footer.jsp" %>
</body>
</html>