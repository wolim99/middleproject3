<%@page import="co.yedam.my.Reply"%>
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
		<form action="addReply.do" method="post">
		<input type="hidden" value="${reply.listNo }" name="listNo">
			<div class="row g-5">
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
				<div class="col-md-12 col-lg-6 col-xl-7" style="margin: 0 auto;">
					<div class="form-item">
						<label class="form-label my-3">별점</label> 
						<select name="revStar">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5" selected>5</option>
						</select>
					</div>
					<div class="form-item">
						<label class="form-label my-3">리뷰 내용<sup>*</sup></label>
						<textarea name="revContent" class="form-control" cols="30" rows="11"></textarea>
					</div>
					<div class="form-item">
					<input type="hidden" class="form-control" name="prodNo" value="${reply.prodNo }">
					</div>
					<div class="form-item">
						<label class="form-label my-3">회원번호</label> <input type="text"
							class="form-control" name="memNo" placeholder="${logMemNo }" value="${logMemNo }" readonly>
					</div>
					<br>
					<div>
						<button type="submit" class="btn btn-outline-primary">작성하기</button>
						<a href="orderList.do"><button type="button" class="btn btn-outline-secondary">돌아가기</button></a>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>
<!-- Checkout Page End -->
<script>
fetch('orderL.do')
.then(resolve => resolve.json())
.then(result => {
	console.log(result);
	result.forEach(item => {
		console.log(item);
	})
	
	$(result).each((idx, item, ary) => {
		console.log(item.listNo)
		if(${reply.listNo } == item.listNo) {
			$('<tr />').append(
				$('<td />').text(item.prodName),
				$('<td />').text(item.ordPrice),
				$('<td />').text(item.listQuant),
				$('<td />').text(item.ordTotal),
			).appendTo($('tbody'));
		}
	})		
})
.catch(err => console.log(err,"errrrrrrrrrr"));

</script>