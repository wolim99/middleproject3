<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- Checkout Page Start -->
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">회원정보 수정</h1>
</div>
<div class="container-fluid py-5">
	<div class="container py-5">
		<form action="modifyMember.do" method="post" name="fr">
			<input type="hidden" value="${logMemNo }" placeholder="${logMemNo}" name="memNo">
			<div class="row g-5">
				<div class="col-md-12 col-lg-6 col-xl-7">
					<div class="row">
						<div class="col-md-12 col-lg-6">
							<div class="form-item w-100">
								<label class="form-label my-3">이름</label> <input
									type="text" class="form-control" value="${logName }" readonly name="memName">
							</div>
						</div>
					</div>
					<div class="form-item">
						<label class="form-label my-3">기존 비밀번호 <sup>*</sup></label> <input
							type="password" id="pw" class="form-control">
						<label class="form-label my-3">새 비밀번호 <sup>*</sup></label> <input
							type="password" id="pw2" class="form-control" name="memPw">
						<label class="form-label my-3">비밀번호 확인 <sup>*</sup></label> <input
							type="password" id="pw3" class="form-control">		
					</div>
					
					<div class="form-item">
						<label class="form-label my-3">연락처 <sup>*</sup></label> <input
							type="text" id="phone" class="form-control" placeholder="${logPhone }" name="memPhone">
					</div>
					<div class="form-item">
						<label class="form-label my-3">E-mail<sup>*</sup></label> <input
							type="text" id="mail" class="form-control" placeholder="${logMail }" name="memMail">
					</div>
					<div class="form-item">
						<label class="form-label my-3">주소<sup>*</sup></label> <input
							type="text" id="addr" class="form-control" placeholder="${logAddr }" name="memAddr">
					</div>
						<a href="logout.do"><button type="submit" onclick="return check()">수정</button></a>
						<a href="myPage.do"><button type="button">취소</button></a>
				</div>
			</div>
		</form>
	</div>
</div>
<!-- Checkout Page End -->
<script>

function check() {
	var logPw = $('#pw').val();
	var logPw2 = $('#pw2').val();
	var logPw3 = $('#pw3').val();
	var logPhone = $('#phone').val();
	var logMail = $('#mail').val();
	var logAddr = $('#addr').val();
	
		if(logPw != ${logPw}) {
			alert("비밀번호를 확인해주세요.");
			document.fr.pw.focus();
			return false;
		} else if(logPw2 !=logPw3) {
			alert("비밀번호가 틀립니다.");
			document.fr.pw2.focus();
			return false;
		} else if(logPw2 == "" || logPw3 == ""){
			alert("비밀번호를 입력하세요.");
			document.fr.pw2.focus();
			return false;
		}

		if(logPhone == "") {
			$('#phone').val('${logPhone }');
		}
		if(logMail == "") {
			$('#mail').val('${logMail }');
		} 
		if(logAddr == "") {
			$('#addr').val('${logAddr }');
		}
}

</script>
