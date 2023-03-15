<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/submenu.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/table.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/tabmenu.css"> 

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/board.js"></script>
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-round.css" rel="stylesheet">
<title>스튜디호 소개</title>
</head>
<body>
<%@ include file="include/header.jsp" %>


<% if(session.getAttribute("Id") != null) {
	%>
	
<!--Content 영역-->
 <div id="content" >
      
    <!-- 왼쪽 메뉴 영역 -->
    <div id="leftColumn">
        <h2>안녕하세요.</h2>
        <ul>
            <li><a href="company01">스튜디호 소개</a></li>
            <li><a href="location">스튜디호 오시는 길</a></li>
        </ul>
    </div>
       
        <!-- 본문 컨테이너 : main -->
        <div id="main">


	 		
	            
				<table align="center">
					<tr>
						<td align="center">
							<span class="main01">StuDIHO Company</span>
						</td>
					</tr>	
					<tr>
						<td align="center">
							<span class="main02">This is the photo studio. Please call me if you have any questions about the reservation.</span>
						</td>
					</tr>
				</table>
				
				<table width="900px">
					<tr class="contentbox">
						<td class="content">
							<center>	
								<table border="0" cellspacing="0" cellpadding="10">
									<form>
										<tr>
											<td style="text-align: center;">
												안녕하세요. 우리들의 스튜디호입니다.<br>
												저희 사진관에 찾아주셔서 감사합니다.<br>
												우리들의 스튜디호는 2인으로 운영되는 사진관으로<br>
												각자의 개성을 살릴 수 있는 프로필 사진이나<br>
												기본적인 증명사진을 촬영하실 수 있습니다.<br>
												사진에 관련하여 궁금하신 분은 StuDIHOCompany@gmail.com으로 연락주세요.<br>	
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