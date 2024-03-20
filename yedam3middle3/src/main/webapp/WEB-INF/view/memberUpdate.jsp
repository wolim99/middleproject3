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
		<form action="modifyMember.do" method="post" >
			<input type="hidden" value="${logMemNo }" placeholder="${logMemNo}" >
			<div class="row g-5">
				<div class="col-md-12 col-lg-6 col-xl-7">
					<div class="row">
						<div class="col-md-12 col-lg-6">
							<div class="form-item w-100">
								<label class="form-label my-3">이름</label> <input
									type="text" class="form-control" value="${logName }" readonly>
							</div>
						</div>
					</div>
					<div class="form-item">
						<label class="form-label my-3">기존 비밀번호 <sup>*</sup></label> <input
							type="password" class="form-control">
						<label class="form-label my-3">새 비밀번호 <sup>*</sup></label> <input
							type="password" id="pw" class="form-control" >
						<label class="form-label my-3">비밀번호 확인 <sup>*</sup></label> <input
							type="password" id="pw2" class="form-control">		
					</div>
					
					<div class="form-item">
						<label class="form-label my-3">연락처 <sup>*</sup></label> <input
							type="text" id="phone" class="form-control" placeholder="${logPhone }">
					</div>
					<div class="form-item">
						<label class="form-label my-3">E-mail<sup>*</sup></label> <input
							type="text" id="mail" class="form-control" placeholder="${logMail }">
					</div>
					<div class="form-item">
						<label class="form-label my-3">주소<sup>*</sup></label> <input
							type="text" id="addr" class="form-control" placeholder="${logAddr }">
					</div>
					<div
						class="row g-4 text-center align-items-center justify-content-center pt-4">
						<a href="#"><button type="button" onclick="update()"
							class="btn border-secondary py-3 px-4 text-uppercase w-40 text-primary">수정</button></a>
						<a href="myPage.do"><button type="button"
							class="btn border-secondary py-3 px-4 text-uppercase w-40 text-primary">취소</button></a>
					</div>
				</div>
				
			</div>
		</form>
	</div>
</div>
<!-- Checkout Page End -->
<script>



function update() {
	var logPw = $('#pw').val();
	var logPw2 = $('#pw2').val();
	var logPhone = $('#phone').val();
	var logMail = $('#mail').val();
	var logAddr = $('#addr').val();
	
	
	let data={
			
		logPw:$('#pw').val(),
		logPw2:$('#pw2').val(),
		logPhone:$('#phone').val(),
		logMail:$('#mail').val(),
		logAddr:$('#addr').val()
	}
	
	if(logPw == logPw2) {
		fetch('modifyMember.do',{
			method: 'put',
			headers: {
				'Content-Type': 'application/json'
			},
			body: JSON.stringify(data)
		})
		.then(resolve => resolve.json())
		.then(result => {
			alert('ddd');
		})
	}
}
</script>