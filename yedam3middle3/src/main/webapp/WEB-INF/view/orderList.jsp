<%@page import="co.yedam.my.OrderList"%>
<%@page import="co.yedam.my.PageDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<style>
.center {
	text-align: center;
	width: 60%;
	margin: auto;
}

.pagination {
	display: inline-block;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
	border: 1px solid #ddd;
	margin: 0 4px;
}

.pagination a.active {
	background-color: #4CAF50;
	color: white;
	border: 1px solid #4CAF50;
}

.pagination a:hover:not(.active) {
	background-color: #ddd;
}
</style>
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
					<c:forEach var="ordList" items="${list }">
						<tr>
							<td>${ordList.prodName }</td>
							<td><fmt:formatDate value="${ordList.ordDate }"
									pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></td>
							<td>${ordList.listQuant }</td>
							<td>${ordList.ordTotal }</td>
							<td><a href="reply.do?listNo='+${ordList.listNo}+'"><button class="btn btn-md bg-light border mt-4">리뷰작성</button></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="center">
			<div class="pagination">
				<c:if test="${page.prev }">
					<a href="orderList.do?page=${page.starPage -1 }"> &laquo; </a>
				</c:if>
				<c:forEach begin="${page.starPage }" end="${page.endPage }" var="p">
					<c:choose>
						<c:when test="${p eq page.page }">
							<a href="orderList.do?page=${p }" class="active">${p }</a>
						</c:when>
						<c:otherwise>
							<a href="orderList.do?page=${p }">${p }</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${page.next }">
					<a href="orderList.do?page=${page.endPage +1 }"> &raquo; </a>
				</c:if>
			</div>
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
	/* fetch('orderL.do')
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
	 .catch(err => console.log(err,"errrrrrrrrrr")); */
</script>