<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<!-- <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/join.js"></script> -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/members.js"></script>
<title>회원가입</title>
</head>
<body>

<!-- 230314 내용수정 -->
	
	<%@ include file="include/header.jsp" %>
	<center>
	<table width="75%" border="0" cellspacing="0" cellpadding="20">
		<tr>
			<td align="center">
				<span class="main02">This is the photo studio. Please call me if you have any questions about the reservation.</span>
			</td>
		</tr>
		<tr>
			<td>
				<center>
				<table width="80%" border="0" cellspacing="0" cellpadding="10">
					<tr class="contentbox">
						<td class="content">
							<center>						
							<table border="0" cellspacing="0" cellpadding="10">
								<form action="joinOk" method="post" name="reg_frm">
									<tr>
										<td><span class="content_text01">아 이 디 : &nbsp;</span></td>
										<td><input class="input_type01" type="text" id="email" placeholder="아이디" name="id"><br></td>
									</tr>
									<tr>
										<td><span class="content_text01">비밀번호 : </span></td>
										<td><input class="input_type01" type="password" id="password" placeholder="비밀번호" name="pw"></td>
									</tr>
									<tr>
										<td><span class="content_text01">비밀번호 확인 : </span></td>
										<td><input class="input_type01" type="password" id="password" placeholder="비밀번호 확인" name="pw_check"></td>
									</tr>
									<tr>
										<td><span class="content_text01">이  름 : &nbsp;</span></td>
										<td><input class="input_type01" type="text" id="password" placeholder="이름" name="name"></td>
									</tr>
									<tr>
										<td><span class="content_text01">전화번호 : </span></td>
										<td><input class="input_type01" type="text" id="password" placeholder="전화번호" name="phone"></td>
									</tr>
									<tr >
										<td colspan="2" align="center">
												<input  class="button_type01" id="button" type="button" value="회원가입" onclick="infoConfirm()">&nbsp;
												<input  class="button_type01" id="button" type="button" value="로그인" onclick="javascript:window.location='login'">
										</td>
									</tr>
									
								</form>	
							    </table>
							</center>							
						</td>						
					</tr>
					
				</table>
				</center>			
			</td>
		</tr>
	</table>
	</center>
	<%@ include file="include/footer.jsp" %>

</body>
</html>