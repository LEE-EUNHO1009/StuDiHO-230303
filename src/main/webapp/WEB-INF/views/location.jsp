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
<title>찾아오시는 길</title>
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
            <li><a href="company">스튜디호 소개</a></li>
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
												Address : 대한민국 인천광역시 남구 주안동 136-1, 경향프라자 7층<br>
												Tel : 032-456-789/ 010-456-7894<br>
												<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3166.876839588016!2d126.67953491558637!3d37.46362973777194!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b7943ae58537b%3A0x1a2d126297c6823d!2z6rK97Zal7ZSE65287J6Q!5e0!3m2!1sko!2sus!4v1678262644101!5m2!1sko!2sus" width="800" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
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