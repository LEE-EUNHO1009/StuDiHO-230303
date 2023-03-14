<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보수정 페이지</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/members.js"></script>
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-round.css" rel="stylesheet">
</head>
<body>

	<!-- 230314 내용수정 -->
	
	
		<%@ include file="include/header.jsp" %>
	<center> 
	
	<% if(session.getAttribute("Id") != null) {
		%>
		
		
	<!--Content 영역-->
	    <div>
	       
	        <!-- 왼쪽 메뉴 영역 -->
	        <div id="leftColumn">
	            <h2>${memberDto.mname }님</h2>
	            <ul>
	                <li><a href="history">예약내역</a></li>
	                <li><a href="QnA">문의내역</a></li>
					<li><a href="infomodify">회원정보</a></li>
	            </ul>
	      </div>
	       
	       
	        <!-- 본문 컨테이너 : main -->
	        
	        <div>
	        
			 <div>
			 
				<table>
					<tr>
						<td><span>회원정보</span></td>
					</tr>
				</table>
				
						
				<center>						
				<table width="60%" border="0" cellspacing="0" cellpadding="10">
					
					<tr class="contentbox">
						<td class="content">
							<center>	
								<table border="0" cellspacing="0" cellpadding="10">
									<form action="infomodifyOk" method="post" name="reg_frm" >
										<!--<input type="hidden" name="id" value="${memberDto.mid }">-->
											<tr>
												<td>&nbsp;</td>
												<td class="content_text01">아이디</td>
												<td>
													<input type="text" class="input_type01" value="${memberDto.mid }" readonly="readonly">
													</span>
												</td>
												<td>&nbsp;</td>
											</tr >
											<tr>
												<td>&nbsp;</td>
												<td>비밀번호</td>
												<td>
												 <input type="password" id="password" class="input_type01" placeholder="비밀번호" name="pw">
												</td>
												<td >&nbsp;</td>
											</tr>
											<tr>
												<td >&nbsp;</td>
												<td>비밀번호 확인</td>
												<td >
												 <input type="password" id="password" class="input_type01" placeholder="비밀번호 확인" name="pw_check">
												</td>
												<td>&nbsp;</td>
											</tr>
											<tr>
												<td >&nbsp;</td>
												<td>이름</td>
												<td >
												<input type="text" id="password" class="input_type01" placeholder="이름" value="${memberDto.mname }" name="name">
												</td>
												<td width>&nbsp;</td>
											</tr>
											
											<tr>
												<td>&nbsp;</td>
												<td>전화번호</td>
												<td><input type="text" id="password" class="input_type01" placeholder="전화번호"  value="${memberDto.mphone }" name="phone"></td>
												<td>&nbsp;</td>
											</tr>
											<tr>
												<td>&nbsp;</td>
												<td>가입일자</td>
												<td ><input type="text" id="password" class="input_type01" value="${memberDto.mdate}" readonly></td>
												<td >&nbsp;</td>
											</tr>
											
											<tr>
												<td colspan="2">
													<input class="button_type01"  type="button" value="정보수정" onclick="infoModifyConfirm()">&nbsp;&nbsp;
													<input class="button_type01" type="button" value="회원탈퇴" onclick="javascript:window.location='memberCancel'">
													
												</td>
											</tr>
									</form>
								</table>
							</center>
						</td>
					</tr>
				</table>
				</center>	
	
	<% } else {out.print("로그인 후 이용 가능합니다.");} %>
	
	</div>
	        <table class="mtable">
				<tr>
					<td>&nbsp;</td>
				</tr>
			</table>
	
	<!--  왼쪽 메뉴 추가 -->
	
	 </div>
	  </div>
	</center>
	<%@ include file="include/footer.jsp" %>
</body>
</html>