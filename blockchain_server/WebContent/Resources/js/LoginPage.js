$(function() {
    $('#login-form-link').click(function(e) {
		$("#login-form").delay(100).fadeIn(100);
 		$("#register-form").fadeOut(100);
		$('#register-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
	$('#register-form-link').click(function(e) {
		$("#register-form").delay(100).fadeIn(100);
 		$("#login-form").fadeOut(100);
		$('#login-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
	
});

var random;
var authok = false;

var ethtest = function(){
	var addr = '0x30432d52a783967a936e7d87eeb543fa193fe498';
}

window.onload = function(){
	var ebtn = document.getElementById('emailbutton');
	var id = document.getElementById('id');
	var authcode = document.getElementById('authcode');
	authcode.style.display= 'none';
	var pattern = /^[a-zA-Z0-9._-]+@mail.hongik.ac.kr$/;
	ebtn.addEventListener('click',function(){
		if(!pattern.test(id.value)){
			alert("홍익대학교 메일 계정을 사용해주세요.");
			return;
		}
	
		
		if(ebtn.value == '인증'){
			ebtn.value = '확인';
			authcode.style.display= 'block';
			random = Math.floor(Math.random() * 1000000) + 1;
			Email.send("hongik@block.chain", id.value, "이메일 인증", random, "smtp.elasticemail.com", "simsimjae@naver.com", "710839a4-f12d-42c4-84f1-2ec09e27e49e");
		}else{
			document.getElementById('authcode').style.display= 'none';
			ebtn.value = '인증';
			
			if(random.toString() == document.getElementById('authcode').value){
				alert('인증에 성공 하셨습니다.');
				document.getElementById('emailbutton').style.display = 'none';
				authok = true;
			}
			else{
				alert('인증에 실패 하셨습니다.');
				authok = false;
			}
			
		}
		
	});
}

function submit_check(){
	if(authok){
		document.getElementById('register-form').action = "http://localhost:8181/blockchain_server/register.do";
		document.getElementById('register-form').submit();
	}else{
		alert("이메일을 인증해주세요");
	}
}