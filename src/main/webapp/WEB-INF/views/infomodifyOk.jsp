<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보수정 페이지</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/table.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/tabmenu.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/members.js"></script>
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
            <li><a href="question">문의하기</a></li>
            <li><a href="infomodify">회원정보</a></li>
        </ul>
    </div>
       
        <!-- 본문 컨테이너 : main -->
        <div id="main">


	 		<div class="wrapper_loginok">
	            
				<table class="tt1">
					<tr>
						<td><span id="menu">회원정보</span></td>
					</tr>
				</table>
					
					
				<table width="900px">
					<tr class="contentbox">
						<td class="content">
							<center>	
								<table border="0" cellspacing="0" cellpadding="10">
									<form action="infomodifyOk" method="post" name="reg_frm" >
											<input type="hidden" name="id" value="${memberDto.mid }">
											<tr>								
												<td><span class="content_text01">아 이 디 : </span></td>
												<td>
													<input class="input_type01" type="text" id="email" value="${memberDto.mid }" readonly name="id">
												</td>
											</tr>
											<tr>
												<td><span class="content_text01">변경된 비밀번호 : </span></td>
												<td>
													 <input class="input_type01" type="password" id="password" value="<c:forEach begin="1" end="${fn:length(memberDto.mpw)}" step="1">*</c:forEach>" readonly name="pw">
												</td>
											</tr>
											<tr>
												<td><span class="content_text01">이   름 : </span></td>
												<td >
													<input class="input_type01" type="text" id="password"  readonly value="${memberDto.mname }" name="name">
												</td>
											</tr>
											<tr>
												<td><span class="content_text01">전화번호 : </span></td>
												<td>
													<input class="input_type01" type="text" id="password" readonly  value="${memberDto.mphone }" name="phone">
												</td>
											</tr>
											<tr>
												<td><span class="content_text01">가입일자 : </span></td>
												<td>
													<input class="input_type01" type="text" id="password" value="${memberDto.mdate}" readonly>
												</td>
			
											<tr>
										
												<td colspan="2" align="right">
												<input class="button_type01" type="button" value="확인" onclick="javascript:window.location='memberInfo'">
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
</html>