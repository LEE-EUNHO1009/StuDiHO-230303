/**
 * 
 */

//===============230314 내용추가
/**
 * 
 */
 
function boardConfirm() {

   if(document.reg_frm.rname.value.length == 0) {
      alert("이름을 입력해주세요.");
      reg_frm.rname.focus();
      return;
   }
   
   if(document.reg_frm.rclass.value.length == 0) {
      alert("예약 종류를 선택해주세요.");
      reg_frm.rclass.focus();
      return;
   }
   
   if(document.reg_frm.rdayof.value.length == 0) {
      alert("예약일자를 입력해주세요.");
      reg_frm.rdayof.focus();
      return;
   }
   
      if(document.reg_frm.rtime.value.length == 0) {
      alert("시간을 선택해주세요.");
      reg_frm.rtime.focus();
      return;
   }
      
   
   document.reg_frm.submit();
}

function del(){
   if (!confirm("정말 취소하시겠습니까?")){ // 아니오
       history.go( -1 );
   }else {
      alert("완료 되었습니다.");
      document.reg_frm.submit();
      return;
   }
}

function admindel(rnum) {
  if (!confirm("정말 취소하시겠습니까?")){ // 아니오
    history.go( -1 );
 }else {
   document.location = "admindelete?rnum="+rnum;
   alert("취소 되었습니다.");
   return ;
}
 }
 
function qdel(){
   if (!confirm("정말 취소하시겠습니까?")){ // 아니오
       history.go( -1 );
   }else {
      alert("완료 되었습니다.");
      document.reg_frm.submit();
      return;
   }
}
 
function qboardConfirm() {
   if(document.reg_frm.qquestion.value.length == 0) {
      alert("문의사항을 입력해주세요.");
      reg_frm.qquestion.focus();
      return;
   }   
   document.reg_frm.submit();
}

function visitCheck(){
   if (!confirm("방문완료")){ // 아니오
       history.go( -1 );
   }else {
      alert("완료 되었습니다.");
      document.reg_frm.submit();
      return;
   }
}

//===================== 기존내용
function infoConfirm() {
	
  
	// 비밀번호 영문자+숫자+특수조합(8~20자리 입력) 정규식
	var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,20}$/;
	// 전화번호 숫자만 입력
	var num_check=/^[0-9]*$/;
	//  이름 특수문자 입력 불가능
	var name_check = /[^(가-힣ㄱ-ㅎㅏ-ㅣa-zA-Z0-9)]/gi;
	
	if(document.reg_frm.id.value.length == 0) {
		alert("아이디는 필수 입력사항입니다.");
		reg_frm.id.focus();
		return;
	}
	
	if(document.reg_frm.id.value.length < 4 ) {
		alert("아이디는 4글자 이상이어야 합니다.");
		reg_frm.id.focus();
		return;
	}
	
	if(document.reg_frm.pw.value.length == 0) {
		alert("비밀번호는 필수 입력사항입니다.");
		reg_frm.pw.focus();
		return;
	}
	
	if(!pwdCheck.test(document.reg_frm.pw.value)) {
		alert("비밀번호는 영문, 숫자, 특수문자 혼용하여 8자리 이상이어야 합니다.");
		reg_frm.pw.focus();
		return;
	}
	
	if(document.reg_frm.pw_check.value.length == 0) {
		alert("비밀번호 확인은 필수사항입니다.");
		reg_frm.pw_check.focus();
		return;
	}
	
	if(document.reg_frm.pw.value != document.reg_frm.pw_check.value) {
		alert("비밀번호가 일치하지 않습니다. 다시 확인 후 입력해주세요.");
		reg_frm.pw_check.focus();
		return;
	}
	
	if(document.reg_frm.name.value.length == 0) {
		alert("이름은 필수사항입니다.");
		reg_frm.name.focus();
		return;
	}
	
	if(name_check.test(document.reg_frm.name.value)) {
		alert("이름에는 특수문자를 입력하실 수 없습니다.");
		reg_frm.name.focus();
		return;
	}
	
	if(document.reg_frm.phone.value.length == 0) {
		alert("전화번호는 필수사항입니다.");
		reg_frm.phone.focus();
		return;
	}
	
	if(!num_check.test(document.reg_frm.phone.value)) {
		alert("전화번호는 숫자로만 입력해주세요.");
		reg_frm.phone.focus();
		return;
	}

	document.reg_frm.submit();
}


function infoModifyConfirm() {
	
  
	// 비밀번호 영문자+숫자+특수조합(8~20자리 입력) 정규식
	var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,20}$/;
	// 전화번호 숫자만 입력
	var num_check=/^[0-9]*$/;
	//  이름 특수문자 입력 불가능
	var name_check = /[^(가-힣ㄱ-ㅎㅏ-ㅣa-zA-Z0-9)]/gi;
	

	
	if(document.reg_frm.pw.value.length == 0) {
		alert("비밀번호는 필수 입력사항입니다.");
		reg_frm.pw.focus();
		return;
	}
	
	if(!pwdCheck.test(document.reg_frm.pw.value)) {
		alert("비밀번호는 영문, 숫자, 특수문자 혼용하여 8자리 이상이어야 합니다.");
		reg_frm.pw.focus();
		return;
	}
	
	if(document.reg_frm.pw_check.value.length == 0) {
		alert("비밀번호 확인은 필수사항입니다.");
		reg_frm.pw_check.focus();
		return;
	}
	
	if(document.reg_frm.pw.value != document.reg_frm.pw_check.value) {
		alert("비밀번호가 일치하지 않습니다. 다시 확인 후 입력해주세요.");
		reg_frm.pw_check.focus();
		return;
	}
	
	if(document.reg_frm.name.value.length == 0) {
		alert("이름은 필수사항입니다.");
		reg_frm.name.focus();
		return;
	}
	
	if(name_check.test(document.reg_frm.name.value)) {
		alert("이름에는 특수문자를 입력하실 수 없습니다.");
		reg_frm.name.focus();
		return;
	}
	
	if(document.reg_frm.phone.value.length == 0) {
		alert("전화번호는 필수사항입니다.");
		reg_frm.phone.focus();
		return;
	}
	
	if(!num_check.test(document.reg_frm.phone.value)) {
		alert("전화번호는 숫자로만 입력해주세요.");
		reg_frm.phone.focus();
		return;
	}
	alert("회원 정보가 수정되었습니다.");
	document.reg_frm.submit();
}


function checkValue() {      

	if(document.reg_frm.pw.value.length == 0) {
		alert("비밀번호를 입력하지 않았습니다.");
		reg_frm.pw.focus();
		return;
	}
	document.reg_frm.submit();
}  
