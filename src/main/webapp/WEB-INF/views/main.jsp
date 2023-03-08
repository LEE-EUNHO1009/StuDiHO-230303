<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Link Swiper's CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/swiper.css">
<title>우리들의 스튜디호</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	 <!-- Swiper -->
	 <center>
		 <div class="swiper mySwiper">
		    <div class="swiper-wrapper">
		      <div class="swiper-slide";>
		      	<a href="company01" >
		      		<img src="${pageContext.request.contextPath }/resources/img/gran.png">
		      	</a>
		      </div>
		      <div class="swiper-slide">
			     <a href="login01">
			      	<img src="${pageContext.request.contextPath }/resources/img/main1.png">
		      	</a>
		      </div>
		      <div class="swiper-slide">
		     	 <a href="gallery01" >
		      		<img src="${pageContext.request.contextPath }/resources/img/main2.png" height="100%" width="100%" >
		      	</a>
		      </div>
		      <div class="swiper-slide">
		      	<a href="question01" >
		      		<img src="${pageContext.request.contextPath }/resources/img/main3.png" width="100%" height="100%">
		      	</a>
		      </div>
		    </div>
		    <div class="swiper-button-next"></div>
		    <div class="swiper-button-prev"></div>
		    <div class="swiper-pagination"></div>
		    <div class="autoplay-progress">
		    <!--  <div>
		    	<script id="mbi-simpletalk-kakao-tpl" type="text/template">

		    	</script>
		    </div>
		    <div class="mbi-simpletalk-kakao" data-bridge-display="Y" data-device="pc" data-position="right"> 
		    	<a class="badge" data-type="kakaotalk" style="width:100px; margin-bottom: 150px;">
		    		<img alt="카카오톡 상담하기" src="https://simple.happytalkio.com/images/components/buttons/btn_kakao05.png" title>
		    	</a>
		    </div>
		    -->
		    <div></div>
		    <svg viewBox="0 0 48 48">
	        <circle cx="24" cy="24" r="20"></circle>
		     </svg>
		     <span></span>
		    </div>
		  </div>
		   <script>
			    const progressCircle = document.querySelector(".autoplay-progress svg");
			    const progressContent = document.querySelector(".autoplay-progress span");
			    var swiper = new Swiper(".mySwiper", {
			      spaceBetween: 30,
			      centeredSlides: true,
			      autoplay: {
			        delay: 2500,
			        disableOnInteraction: false
			      },
			      pagination: {
			        el: ".swiper-pagination",
			        clickable: true
			      },
			      navigation: {
			        nextEl: ".swiper-button-next",
			        prevEl: ".swiper-button-prev"
			      },
			      on: {
			        autoplayTimeLeft(s, time, progress) {
			          progressCircle.style.setProperty("--progress", 1 - progress);
			          progressContent.textContent = `${Math.ceil(time / 1000)}s`;
			        }
			      }
			    });
			 </script>
		</center>
	<%@ include file="include/footer.jsp" %>
</body>
</html>