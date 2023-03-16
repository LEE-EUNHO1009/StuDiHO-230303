<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 페이지</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/table.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/tabmenu.css"> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/board.js"></script>
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-round.css" rel="stylesheet">
</head>
<body>
	
<!-- 230314 내용수정 -->
	
<%@ include file="include/header.jsp" %>


<% if(session.getAttribute("Id") != null) {
	%>
	
<!--Content 영역-->
 <div id="content" >
      
    <!-- 왼쪽 메뉴 영역 -->
    <div id="leftColumn">
        <h2>${memberDto.mname }님</h2>
        <ul>
            <li><a href="history">예약내역</a></li>
            <li><a href="question">문의내역</a></li>
            <li><a href="infomodify">회원정보</a></li>
        </ul>
    </div>
       
        <!-- 본문 컨테이너 : main -->
        <div id="main">


	 		<div class="wrapper_loginok">
	            
				<table class="tt1">
					<tr>
						<td><span id="menu">예약확인</span></td>
					</tr>
				</table>
					
					
				<table width="900px">
					<tr class="contentbox">
						<td class="content">
							<center>	
								<table border="0" cellspacing="0" cellpadding="10">
									<form action="delete" method="post" name="reg_frm">
									
										<input type="hidden" name="rnum" value="${mview.rnum }">
										<input type="hidden" name="rstatus" value="예약취소">
								
										<tr>
											<td width="50%">
												<span class="content_text01">아 이 디 : </span>
											</td>
											<td width="50%">
												<input class="input_type01" type="text" name="rid" value="${mview.rid }" readonly>
											</td>
										</tr>
										<tr>
											<td width="50%">
												<span class="content_text01">이 &nbsp;&nbsp;&nbsp;&nbsp;름 : </span>
											</td>
											<td width="50%">
												<input class="input_type01" type="text"  id="password" value="${mview.rname }" name="rname" readonly>
											</td>
										</tr>
										<tr>
											<td width="50%">
												<span class="content_text01">종 &nbsp;&nbsp;&nbsp;&nbsp;류 : </span>
											</td>
											<td width="50%">
												<input class="input_type01" type="text"  id="password" value="${mview.rclass }" name="rclass" readonly>
											</td>
										</tr>
							
										<tr>
											<td width="50%">
												<span class="content_text01">예약일자 : </span>
											</td>
											<td width="50%">
												<input  class="input_type01" type="text"  id="password" value="<c:out value="${fn:substring(mview.rdayof,0,10) }"></c:out>&nbsp;&nbsp;
												<% 
												if(request.getAttribute("Rtime").equals("1")){
												%>10:30~11:30
												<%
												}if(request.getAttribute("Rtime").equals("2")){
												%>11:30~12:30
												<%
												}if(request.getAttribute("Rtime").equals("3")){
												%>13:30~14:30
												<%
												}if(request.getAttribute("Rtime").equals("4")){
												%>14:30~15:30
												<%
												}if(request.getAttribute("Rtime").equals("5")){
												%>15:30~16:30
												<%
												}if(request.getAttribute("Rtime").equals("6")){
												%>16:30~17:30
												<%
												}if(request.getAttribute("Rtime").equals("7")){
												%>17:30~18:30
												<% } %>
												" readonly>
												
											</td>
											</tr>
											<tr>
												<td width="50%">
													<span class="content_text01">요청사항 : </span>
												</td>
												<td width="50%">
													<input class="input_type01" type="text" id="password" value="${mview.rcontent }" name="rcontent" readonly>
												</td>
											</tr>
											<tr>
												<td colspan="2" align="right">
													<input class="button_type01" type="button" value="돌아가기" onclick="javascript:window.location='history'">&nbsp;&nbsp;
														<%
														if(request.getAttribute("Rstatus").equals("예약완료")) {
														%>
													<input class="button_type01" type="submit" value="예약취소" onclick="del()">
									
														<% } %>
												</td>
											</tr>
									</form>	
								</table>
							</center>
						</td>
					</tr>
				</table>

		<% } else {out.print("로그인 후 이용 가능합니다.");} %>
            </div>
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