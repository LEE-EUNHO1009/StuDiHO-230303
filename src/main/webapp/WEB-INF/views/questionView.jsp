<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/tabmenu.css"> 
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/board.js"></script>
<title>Question</title>
</head>
<body>
<%@ include file="include/header.jsp" %>

	
<!--Content 영역-->
 <div id="content" >
      
    <!-- 왼쪽 메뉴 영역 -->
    <div id="leftColumn">
        <h2>안녕하세요</h2>
        <ul>
            <li><a href="history">예약내역</a></li>
            <li><a href="question">문의하기</a></li>
            <li><a href="infomodify">회원정보</a></li>
        </ul>
    </div>
       
        <!-- 본문 컨테이너 : main -->
        <div id="main">


	 		<div class="wrapper_loginok">
	            
				<table">
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
									<form action="questionModify" method="post" name="board_frm">
									<input type="hidden" value="${qdto.qnum }" name="qnum">
									<tr>
										<td width="40%"><span class="content_text01">아 이 디 : </span></td>
										<td width="60%"><input class="input_type01" type="text" name="qid" value="${qdto.qid }" readonly="readonly"></td>
									</tr>
									<tr>
										<td width="40%"><span class="content_text01">글 쓴 이 : </span></td>
										<td width="60%"><input class="input_type01" type="text" name="qname" value="${qdto.qname }" readonly="readonly"></td>
									</tr>
									<tr>
										<td width="40%"><span class="content_text01">질문내용 : </span></td>
										<td width="60%"><textarea class="textarea_type01" rows="5" cols="30" name="qcontent" readonly="readonly">${qdto.qcontent}</textarea></td>
									</tr>									
									<tr>
										<td width="40%"><span class="content_text01">이 메 일 : </span></td>
										<td width="60%"><input class="input_type01" type="text" name="qemail" value="${qdto.qemail }" readonly="readonly"></td>
									</tr>
									<tr>
										<td width="40%"><span class="content_text01">등 록 일 : </span></td>
										<td width="60%"><input class="input_type01" type="text" name="qdate" value="${qdto.qdate }" readonly="readonly"></td>
									</tr>
									<tr>
										<td colspan="2" align="center">
										<%
											String boardId = (String) request.getAttribute("qid");
										
											if(boardId.equals("GUEST")) {
										%>
										<input class="button_type01" type="submit" value="수정">										
										<input class="button_type01" type="button" value="삭제" onclick="script:window.location='questionDelete?qnum=${qdto.qnum}'">
										<input class="button_type01" type="button" value="글목록" onclick="script:window.location='list'">
										<%
											} else if((sessionId != null ) && (sessionId.equals(boardId))) {
										%>
											<input class="button_type01" type="submit" value="수정">&nbsp;
											<input class="button_type01" type="button" value="삭제" onclick="script:window.location='questionDelete?qnum=${qdto.qnum}'">&nbsp;
											<input class="button_type01" type="button" value="글목록" onclick="script:window.location='list'">
										<%
											} else {
										%>
											<input class="button_type01" type="button" value="글목록" onclick="script:window.location='list'">
										<%
											}
										%>
										</td>
									</tr>
								</table>
							</center>
						</td>
					</tr>
				</table>
			</div>
        </div>
	    <table>
            <tr>
                <td><br></td>
            </tr>
	    </table>

<!--  왼쪽 메뉴 추가 -->
</div>
<!--  푸터 뜨는 현상 수정 -->
 <div style="height: 150px">
</div>
<%@ include file="include/footer.jsp" %>
</body>
</html>