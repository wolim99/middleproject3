<%@page import="co.yedam.product.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- Cart Page Start -->
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">주문 내역</h1>
</div>
<div class="container-fluid py-5">
	<div class="container py-5">
		<div class="table-responsive">
			<table class="table">
				<thead>
					<tr>
						<th scope="col">상품명</th>
						<th scope="col">주문일자</th>
						<th scope="col">수량</th>
						<th scope="col">결제금액</th>
						<th scope="col"></th>
					</tr>
				</thead>
				<tbody>
				
				</tbody>
			</table>
		</div>
		<div class="mt-5">
			<a href="myPage.do"><button
				class="btn border-secondary rounded-pill px-4 py-3 text-primary"
				type="button">돌아가기</button></a>
		</div>
	</div>
</div>
<!-- Cart Page End -->
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
		if(${logMemNo } == item.memNo) {
			$('<tr />').append(
				$('<td />').text(item.prodName),
				$('<td />').text(item.ordDate),
				$('<td />').text(item.listQuant),
				$('<td />').text(item.ordPrice),
				$('<td><a href="reply.do?listNo='+item.listNo+'"><button class="btn btn-md bg-light border mt-4">리뷰작성</button></a></td>')
			).appendTo($('tbody'));
		}
	})		
})
.catch(err => console.log(err,"errrrrrrrrrr"));


</script>