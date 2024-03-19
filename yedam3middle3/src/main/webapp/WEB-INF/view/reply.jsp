<%@page import="co.yedam.my.Qna"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">리뷰 작성</h1>
</div>
<!-- Checkout Page Start -->
<div class="container-fluid py-5">
	<div class="container py-5">
		<form action="#">
			<div class="row g-5">
				<div class="col-md-12 col-lg-6 col-xl-7">
					<div class="form-item">
						<label class="form-label my-3">문의글 유형</label> <select>
							<option>상품문의</option>
							<option>배송문의</option>
							<option>기타문의</option>
						</select>
					</div>
					<div class="form-item">
						<label class="form-label my-3">문의글 제목 <sup>*</sup></label> <input
							type="text" class="form-control">
					</div>
					<div class="form-item">
						<label class="form-label my-3">내용<sup>*</sup></label>
						<textarea name="text" class="form-control" spellcheck="false"
							cols="30" rows="11"></textarea>
					</div>
					<div class="form-item">
						<label class="form-label my-3">회원번호</label> <input type="text"
							class="form-control" placeholder="${logMemNo }" readonly>
					</div>

				</div>
				<div class="col-md-12 col-lg-6 col-xl-5">
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th scope="col">상품명</th>
									<th scope="col">가격</th>
									<th scope="col">수량</th>
									<th scope="col">Total</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					
					<div
						class="row g-4 text-center align-items-center justify-content-center pt-4">
						<button type="button"
							class="btn border-secondary py-3 px-4 text-uppercase w-100 text-primary">Place
							Order</button>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>
<!-- Checkout Page End -->