<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/qBoard.js"></script>
<title>Question</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<center>
	<table width="75%" border="0" cellspacing="0" cellpadding="20">
		<tr>
			<td align="center">
				<span class="main01">StuDiHo Company</span>
			</td>
		</tr>	
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
								<form action="questionOk" method="post" name="board_frm">
									<tr>
										<td><span class="content_text01">아 이 디 : </span></td>
										<td><input class="input_type01" type="text" name="qid" value="${memberId }" readonly="readonly"></td>
									</tr>
									<tr>
										<td><span class="content_text01">제 목 : </span></td>
										<td><input class="input_type01" type="text" name="qtitle"></td>
									</tr>
				
									<tr>
										<td><span class="content_text01">질문내용 : </span></td>
										<td><textarea class="textarea_type01" rows="5" cols="30" name="qcontent"></textarea></td>
									</tr>									
									
									
									<tr>
										<td colspan="2">
											<input class="button_type01" type="submit" value="질문하기">
											<input class="button_type01" type="button" value="글목록" onclick="script:window.location='list'">
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