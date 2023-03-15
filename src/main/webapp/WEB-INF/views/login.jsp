<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<title>로그인</title>
</head>
<body>
	<!-- 230314 수정내용 -->
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
								<form action="loginOk" method="post">
									<tr>
							             <td><span class="content_text01">아 이 디 : &nbsp;</span></td>
										<td><input class="input_type01" type="text" id="email" placeholder="아이디" name="id" ></td>
							         </tr>
							         <tr>
							            <td><span class="content_text01">비밀번호 : </span></td>
							            <td><input class="input_type01" type="password" id="password" placeholder="비밀번호" name="pw"></td>
							           </tr>
							           <tr>
							            <td colspan="2">
											&nbsp;<input class="button_type01" id="button" type="submit" value="로그인" >&nbsp;&nbsp;&nbsp;&nbsp;
											<input class="button_type01" id="button" type="button" value="회원가입" onclick="javascript:window.location='join'">
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