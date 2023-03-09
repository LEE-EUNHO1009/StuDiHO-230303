<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page language="java"contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="ko">
<head>
<title>예약하기</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reservationCSS.css">

<meta http-equiv="context-type" content="text/html; charset="UTF-8">
</head>
<body>
	<form name="calendarFrm" id="calendarFrm" action="register_list" method="GET">
	<SPAN ID=calendar1 STYLE="position:relative;"></SPAN>
	<input type="button" class="today_button" onclick="admin" value="관리자"/>
	<script type="text/javascript"> showCalendar(nowd,nowm,nowy);</script>
	<center><br /> 예약을 원하는 것을 선택해주세요.<br />
	(클릭시 해당 날짜의 예약 현황 페이지로 이동합니다.)<br />
	<a href="main">홈으로 이동</a></center> //아직 안검
	
	
	
	
	<div class="calendar">
	
	<!-- 날짜 네비게이션 -->
	<div class="navigation">
		<a class="before_after_year" href="./calendar.do?year=${today_info.search_year-1}&month=${today_info.search_month-1 }">
			&lt;&lt;
	<!-- 이전해 -->
	</a>
	<a class="before_after_month" href="./calendar.do?year=${today_info.before_year}&month=${today_info.before_month}">
			&lt;
	<!-- 이전달 -->
	</a>
	<span class="this_month">
	&nbsp;&{today_info.search_year}.
	<c:if test="&{today_info.search_month<10}">0</c:if>c:if>${today_info.search_month}
	</span>
	<a class="before_after_month" href="/calendar.do?year=${today_info.after_year}&month=${today_info.after_month}">
	<!-- 다음날 -->
	 	&gt;&gt;
	 	</a>
	 </div>		
	
	
	<div class
	</form>

</body>
</html>