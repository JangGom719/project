/**
 * 
 */

function infoConfirm() {

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
	
	if(document.reg_frm.pw_check.value.length == 0) {
		alert("비밀번호 체크는 필수사항입니다.");
		reg_frm.pw_check.focus();
		return;
	}
	
	if(document.reg_frm.pw.value != document.reg_frm.pw_check.value) {
		alert("비밀번호가 일치하지 않습니다. 다시 확인 후 입력해주세요.");
		reg_frm.pw.focus();
		return;
	}
	
	if(document.reg_frm.name.value.length == 0) {
		alert("이름은 필수사항입니다.");
		reg_frm.name.focus();
		return;
	}
	
	
	if(document.reg_frm.birth.value.length == 0) {
		alert("생일은 필수사항입니다.");
		reg_frm.birth.focus();
		return;
	}
	
	if(document.reg_frm.gender.value.length == 0) {
		alert("성별은 필수사항입니다.");
		reg_frm.gender.focus();
		return;
	}

	if(document.reg_frm.phone.value.length == 0) {
		alert("전화번호 필수사항입니다.");
		reg_frm.phone.focus();
		return;
	}	

	if(document.reg_frm.depart.value.length == 0) {
		alert("전공은 필수사항입니다.");
		reg_frm.depart.focus();
		return;
	}
	
	document.reg_frm.submit();
}