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
	
	<%
		int checkId = Integer.parseInt(request.getAttribute("checkIdFlag").toString());
		int checkPw = Integer.parseInt(request.getAttribute("checkPwFlag").toString());
	
		if(checkId == 0) {								
	%>				
		<script language="JavaScript">
			alert("입력하신 아이디는 존재하지 않는 아이디입니다. 아이디를 확인해 주세요.");
			history.go(-1);
		</script>
	<% 
		} else if (checkPw == 0) {
	%>
		<script language="JavaScript">
			alert("입력하신 비밀번호가 틀립니다. 다시 확인해 주세요.");
			history.go(-1);
		</script>
	<% 
		} else {
			
			session.setAttribute("ValidMem", "yes");
		}
	%>
	
	 <!-- Swiper -->
	 <center>
		 <div class="swiper mySwiper">
		    <div class="swiper-wrapper">
		      <div class="swiper-slide";>
		      	<a href="company" >
		      		<img src="${pageContext.request.contextPath }/resources/img/gran.png">
		      	</a>
		      </div>
		      <div class="swiper-slide">
			     <a href="reservation">
			      	<img src="${pageContext.request.contextPath }/resources/img/main1.png">
		      	</a>
		      </div>
		      <div class="swiper-slide">
		     	 <a href="gallery" >
		      		<img src="${pageContext.request.contextPath }/resources/img/main2.png" height="100%" width="100%" >
		      	</a>
		      </div>
		      <div class="swiper-slide">
		      	<a href="question" >
		      		<img src="${pageContext.request.contextPath }/resources/img/main3.png" width="100%" height="100%">
		      	</a>
		      </div>
		    </div>
		    <div class="swiper-button-next"></div>
		    <div class="swiper-button-prev"></div>
		    <div class="swiper-pagination"></div>
		    <div class="autoplay-progress">
		    
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