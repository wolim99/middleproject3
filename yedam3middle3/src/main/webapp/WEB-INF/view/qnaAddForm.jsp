<%@page import="co.yedam.my.Qna"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">문의글 작성</h1>
</div>
<!-- Checkout Page Start -->
<div class="container-fluid py-5">
	<div class="container py-5">
		<form action="addQna.do" method="post">
			<div class="row g-5">
				<div class="col-md-12 col-lg-6 col-xl-7" style="margin: 0 auto;">
					<div class="form-item">
						<label class="form-label my-3">문의글 유형</label> 
						<select name="inqType">
							<option value="상품문의">상품문의</option>
							<option value="배송문의">배송문의</option>
							<option value="기타문의">기타문의</option>
						</select>
					</div>
					<div class="form-item">
						<label class="form-label my-3">문의글 제목 <sup>*</sup></label> <input
							type="text" class="form-control" name="inqTitle">
					</div>
					<div class="form-item">
						<label class="form-label my-3">내용<sup>*</sup></label>
						<textarea class="form-control" cols="30" rows="11" name="inqContent"></textarea>
					</div>
					<div class="form-item">
						<label class="form-label my-3">회원번호</label> <input type="text"
							class="form-control" name="memNo" value="${logMemNo }" placeholder="${logMemNo }" readonly>
					</div>
					<br>
					<div>
						<button type="submit" class="btn btn-outline-primary">작성하기</button>
						<a href="qnaMain.do"><button type="button" class="btn btn-outline-secondary">돌아가기</button></a>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>
<!-- Checkout Page End -->