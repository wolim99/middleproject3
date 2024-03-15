<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- Checkout Page Start -->
<div class="container-fluid py-5">
	<div class="container py-5">
		<h1 class="mb-4">회원정보 수정</h1>
		<form action="#">
			<div class="row g-5">
				<div class="col-md-12 col-lg-6 col-xl-7">
					<div class="row">
						<div class="col-md-12 col-lg-6">
							<div class="form-item w-100">
								<label class="form-label my-3">이름<sup>*</sup></label> <input
									type="text" class="form-control" placeholder="${logName }">
							</div>
						</div>
					</div>
					<div class="form-item">
						<label class="form-label my-3">연락처 <sup>*</sup></label> <input
							type="text" class="form-control">
					</div>
					<div class="form-item">
						<label class="form-label my-3">E-mail<sup>*</sup></label> <input
							type="text" class="form-control">
					</div>
					<div class="form-item">
						<label class="form-label my-3">주소<sup>*</sup></label> <input
							type="text" class="form-control">
					</div>
					<div
						class="row g-4 text-center align-items-center justify-content-center pt-4">
						<a href="#"><button type="button"
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