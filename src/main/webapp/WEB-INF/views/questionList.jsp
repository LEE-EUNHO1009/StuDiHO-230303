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
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/Board.js"></script>
<title>Question</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<center>
	<table width="75%" border="0" cellspacing="0" cellpadding="20">
		<tr>
			<td align="center">
				<span class="main02">This is the photo studio. Please call me if you have any questions about the reservation.</span>
			</td>
		</tr>	
		<tr>
			<td align="center">
				<span class="main03">궁금하신 사항을 자유롭게 남겨주세요.</span>
			</td>
		</tr>
		<tr>
			<td>
				<center>
				<table width="80%" border="0" cellspacing="0" cellpadding="10">
					<tr class="contentbox">
						<td class="content">
							<br><br>
							<center>
							<table width="80%" border="0" cellspacing="0" cellpadding="10">
								<tr>
									<th class="board_title">번호</th>
									<th class="board_title">아이디</th>
									<th class="board_title" width="50%">질문내용</th>
									<th class="board_title">글쓴이</th>
									<th class="board_title">등록일</th>
								</tr>
								<c:forEach items="${qdtos }" var="qdto">
								<tr>
									<td class="board_content01">${qdto.qnum }</td>
									<td class="board_content01">${qdto.qid }</td>
									<td class="board_content02">
									<a href="questionView?qnum=${qdto.qnum }">
									<c:choose>
										<c:when test="${fn:length(qdto.qcontent) > 23 }">
											<c:out value="${fn:substring(qdto.qcontent,0,22) }"></c:out>...
										</c:when>
										<c:otherwise>
											<c:out value="${qdto.qcontent }"></c:out>
										</c:otherwise>
									</c:choose>
									</a>
									</td>
									<td class="board_content01">${qdto.qname }</td>
									<td class="board_content01">
										<c:out value="${fn:substring(qdto.qdate,0,10) }"></c:out>										
									</td>
								</tr>						
								</c:forEach>
								<tr>
									<td colspan="5" align="center">
										<c:if test="${pageMaker.prev }">
											<a href="list?pageNum=${pageMaker.startPage-5 }">Prev</a>&nbsp;&nbsp;&nbsp;
										</c:if>										
										<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="num">
											<c:choose>
											<c:when test="${currPage == num}">
											<u>${num}</u>&nbsp;&nbsp;&nbsp;
											</c:when>
											<c:otherwise>
											<a href="list?pageNum=${num}">${num}</a>&nbsp;&nbsp;&nbsp;
											</c:otherwise>
											</c:choose>																					
										</c:forEach>
										<c:if test="${pageMaker.next }">
											<a href="list?pageNum=${pageMaker.startPage+5 }">Next</a>
										</c:if>	
									</td>
								</tr>	
								<tr>
									<td colspan="5" align="right">
										<input type="button" value="질문하기" class="button_type01" onclick="script:window.location='question'">
									</td>
								</tr>
								
							</table>
							</center>
							<br>						
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