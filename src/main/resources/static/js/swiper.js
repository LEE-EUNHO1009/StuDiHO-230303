 new Swiper('.swiper', {
  direction: 'vertical', // 슬라이드 방향 디폴트값 가로(horizontal)로 지정되어있음
  
  // autoplay: true 도 가능하며 객체 데이터로 할당하면 추가적인 옵션 설정 가능
  autoplay: {
    // 자동재생 여부
    delay: 5000, // 시작시간 설정
  },
  loop: true, // 반복재생 여부
  slidesPerView: 3, // 한번에 보여줄 슬라이드 개수
  spaceBetween: 10, // 슬라이드 사이 여백
  centeredSlides: true, // 1번 슬라이드 가운데 보이기
  
  // 페이저 버튼 사용자 설정
  pagination: {
    // 페이지 번호 요소 선택자
    el: '.promotion .swiper-pagination',
    
    // 사용자의 페이지 번호 요소 제어 가능 요소 (시각적으로만 보는것 외에도 클릭하여 제어할 수 있는지에 대한 여부)
    clickable: true,
  },
  
  // nav 화살표 출력 시 추가
  navigation: {
    prevEl: '.swiper-prev',
    nextEl: '.swiper-next',
  },
	
});

