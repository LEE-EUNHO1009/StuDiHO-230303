<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
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
						<td><span id="menu">증명사진/프로필 예약하기</span></td>
					</tr>
				</table>
					
					
				<table width="900px" >
					<tr class="contentbox">
						<td class="content">
							<center>
								<table border="0" cellspacing="0" cellpadding="10">
									<!-- R_LIST로 넘겨줄 데이터// 아이디, 이름, 예약종류, 예약일자, 요청사항, 예약상태 -->
									<form action="memberwrite" method="post" name="reg_frm">
									<input type="hidden" name="rstatus" value="예약완료">
										<tr>
											<td width="30%">
												<span class="content_text01">아 이 디 : </span>
											</td>
											<td width="70%">
												<input class="input_type01" type="text" name="rid" value="${memberDto.mid }" readonly>
											</td>
										</tr>
										<tr>
											<td width="30%">
												<span class="content_text01">이 &nbsp;&nbsp;&nbsp;&nbsp;름 : </span>
											</td>
											<td width="70%">
												<input class="input_type01" type="text" id="password" value="${memberDto.mname }" name="rname">
											</td>
										</tr>
										<tr>
											<td width="30%">
												<span class="content_text01">사진선택 : </span>
											</td>
											<td width="70%">
												<input type="radio" style="width:15px;height:15px;border:1px;" name="rclass" value="증명사진" id="radio1">&nbsp;
												<label for="radio1">증명사진</label>
												<input type="radio" style="width:15px;height:15px;border:1px;" name="rclass" value="프로필/컨셉사진" checked id="radio2">&nbsp;
												<label for="radio2">프로필/컨셉사진</label>
												
											</td>
										</tr>
										<tr>
											<td width="30%">
												<span class="content_text01">날짜/요일 선택 : </span>
											</td>
											<td width="70%">
												<input class="input_type01" name="rdayof" autocomplete="off" readonly="readonly">&nbsp;
												<select name='rtime'>
												  <option value='' selected>-- 선택 --</option>
												  <option value='1'>10:30~11:30</option>
												  <option value='2'>11:30~12:30</option>
												  <option value='3'>13:30~14:30</option>
												  <option value='4'>14:30~15:30</option>
												  <option value='5'>15:30~16:30</option>
												  <option value='6'>16:30~17:30</option>
												  <option value='7'>17:30~18:30</option>
												</select>
										
												<script language="JavaScript">
												/* 설정 */
												const config = {
													dateFormat: 'yy-mm-dd',
												    prevText: '이전 달',
												    nextText: '다음 달',
												    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
												    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
												    dayNames: ['일','월','화','수','목','금','토'],
												    dayNamesShort: ['일','월','화','수','목','금','토'],
												    dayNamesMin: ['일','월','화','수','목','금','토'],
												    yearSuffix: '년',
											        changeMonth: true,
											        changeYear: true
												}
											
											
												/* 캘린더 */
												$(function() {
												  $( "input[name='rdayof']" ).datepicker(config);
												});
											    </script>
										
											</td>
										</tr>
										<tr>
											<td width="30%">
												<span class="content_text01">요청사항 : </span>
											</td>
											<td width="70%">
												<input  class="input_type01" type="text" id="password" placeholder="요청사항" name="rcontent">
											</td>
										</tr>
					
										
										<tr>
											<td colspan="2" align="center">
												<input class="button_type01" type="button" value="예약하기" onclick="boardConfirm()">&nbsp;&nbsp;&nbsp;&nbsp;
												<input class="button_type01" type="button" value="예약내역" onclick="javascript:window.location='history'">
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
 <div style="height: 200px">
</div>
<%@ include file="include/footer.jsp" %>

</body>
</html>