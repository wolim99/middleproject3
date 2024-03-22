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
				<tbody id="ordlist">
					
				</tbody>
			</table>
		</div>
		<div class="col-12">
			<div class="pagination d-flex justify-content-center mt-5">
				<a href="#" class="rounded">&laquo;</a> <a href="#"
					class="active rounded">1</a> <a href="#" class="rounded">2</a> <a
					href="#" class="rounded">3</a> <a href="#" class="rounded">4</a> <a
					href="#" class="rounded">5</a> <a href="#" class="rounded">6</a> <a
					href="#" class="rounded">&raquo;</a>
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
let opage = 1;
let totalCnt = 0;
let memNo = ${logMemNo};	 

//페이징 버튼
function pagingFunc() {
	opage = 1;
    $('div .pagination a').on('click', function (e) {
    	e.preventDefault(); //a태그의 링크기능 차단.
		opage = $(this).data("page");
		showlist(opage, memNo);
		pageList(memNo);
	})
}

function showlist(opage = 1,memNo) {
	$('#ordlist').html('');
$.ajax({
    url: 'ordTotal.do',
    method: 'post',
    traditional : true,
    data: {opage: opage, memNo: memNo},
    dataType: 'json',
    success: function (result) { 
    	console.log(result);
    	
    	result.forEach((item,idx) => {
    		$('#ordlist').append($('<tr />').append(
    			$('<td />').text(item.prodName),
    			$('<td />').text(item.ordDate),
    			$('<td />').text(item.listQuant),
    			$('<td />').text(item.ordPrice),
    			$('<td><a href="reply.do?listNo='+item.listNo+'"><button class="btn btn-md bg-light border mt-4">리뷰작성</button></a></td>')
    		));
		})
    },
    error: function (err) { 
        console.log('error=> ' + err);
    }
});
}

function pageList(memNo) {
	
	$.ajax({
        url: 'ordCount.do',
        method: 'post',
        traditional : true,
        data: {memNo: memNo},
        dataType: 'json',
        success: function (result) {
        	totalCnt = result.totalCount;
        	$('div .pagination').html('');
    		let startPage, endPage; // 1~5, 6~10,...
    		let next, prev;
    		let realEnd = Math.ceil(totalCnt / 5);
    		endPage = Math.ceil(opage / 5) * 5;
    		startPage = endPage - 4;
    		endPage = endPage > realEnd ? realEnd : endPage;
    		next = endPage < realEnd ? true : false;
    		prev = startPage > 1;
    		console.log(endPage);
    		console.log(realEnd);
    		console.log(totalCnt);
    		if (prev) {
    			let aTag = document.createElement('a');
    			//aTag.innerText = startPage - 1;
    			aTag.innerHTML = '&laquo;';
    			aTag.setAttribute('data-page', startPage - 1);
    			aTag.href = '#';
    			document.querySelector('div.pagination').appendChild(aTag);
    		}
    		for (let p = startPage; p <= endPage; p++) {
    			let aTag = document.createElement('a');
    			aTag.innerText = p;
    			aTag.setAttribute('data-page', p);
    			aTag.href = '#';
    			if (p == opage) {
    				aTag.className = 'active';
    			}
    			document.querySelector('div.pagination').appendChild(aTag);
    		}
    		if (next) {
    			let aTag = document.createElement('a');
    			//aTag.innerText = endPage + 1;
    			aTag.innerHTML = '&raquo;';
    			aTag.setAttribute('data-page', endPage + 1);
    			aTag.href = '#';
    			document.querySelector('div.pagination').appendChild(aTag);
    		}
    		pagingFunc();
        },
        error: function (err) { 
            console.log('error=> ' + err);
        }
});
}

showlist(opage, memNo);
pageList(memNo);
</script>