<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<!-- <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/join.js"></script> -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/members.js"></script>
<title>우리들의 스튜디호</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<table width="75%" border="0" cellspacing="0" cellpadding="20">
		<tr>
			<center><td class="titlebox">
				<span class="title01">회원 가입 페이지 입니다.</span>
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
								<form action="joinOk" method="post" name="join_frm">
									<tr>
										<td><span class="content_text01">아 이 디 : </span></td>
										<td><input class="input_type01" type="text" name="mid"></td>
									</tr>
									<tr>
										<td><span class="content_text01">비밀번호 : </span></td>
										<td><input class="input_type01" type="password" name="mpw"></td>
									</tr>
									<tr>
										<td><span class="content_text01">비밀번호체크 : </span></td>
										<td><input class="input_type01" type="password" name="mpw_check"></td>
									</tr>
									<tr>
										<td><span class="content_text01">이&nbsp;&nbsp;&nbsp;&nbsp;름 : </span></td>
										<td><input class="input_type01" type="text" name="mname"></td>
									</tr>
									<tr>
										<td><span class="content_text01">이 메 일 : </span></td>
										<td><input class="input_type01" type="text" name="memail"></td>
									</tr>
									
									<tr>
										<td colspan="2">
											<input class="button_type01" type="submit" value="가입완료" onclick="script:window.location='joinOk'">&nbsp;&nbsp;
											<input class="button_type01" type="button" value="로그인" onclick="script:window.location='login'">
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