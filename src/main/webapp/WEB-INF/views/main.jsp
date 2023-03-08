<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Link Swiper's CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/swiper.js">
<title>우리들의 스튜디호</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	 <!-- Swiper -->
	  <div class="swiper mySwiper">
	    <div class="swiper-wrapper">
	      <div class="swiper-slide">
	      	<img src="${pageContext.request.contextPath }/resources/img/gran.png" width="100%" height="100%">
	      </div>
	      <div class="swiper-slide">
	      	<img src="${pageContext.request.contextPath }/resources/img/main1.png" width="100%" height="100%">
	      </div>
	      <div class="swiper-slide">
	      	<img src="${pageContext.request.contextPath }/resources/img/main2.png" height="100%" width="100%" >
	      </div>
	      <div class="swiper-slide">
	      	<img src="${pageContext.request.contextPath }/resources/img/main3.png" width="100%" height="100%">
	      </div>
	    </div>
	    <div class="swiper-button-next"></div>
	    <div class="swiper-button-prev"></div>
	    <div class="swiper-pagination"></div>
	  </div>
	   <script>
		   var swiper = new Swiper(".mySwiper", {
		     cssMode: true,
		     navigation: {
		       nextEl: ".swiper-button-next",
		       prevEl: ".swiper-button-prev",
		     },
		     pagination: {
		       el: ".swiper-pagination",
		     },
		     mousewheel: true,
		     keyboard: true,
		   });
	   </script>
	<%@ include file="include/footer.jsp" %>
</body>
</html>