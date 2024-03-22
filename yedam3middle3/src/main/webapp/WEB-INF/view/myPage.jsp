<%@page import="co.yedam.my.Qna"%>
<%@page import="co.yedam.my.OrderList"%>
<%@page import="co.yedam.my.PageDTO"%>
<%@page import="co.yedam.my.OrdPageDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<!-- Single Page Header start -->
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">마이페이지</h1>
</div>
<!-- Single Page Header End -->

<!-- Fruits Shop Start-->
<div class="container-fluid fruite py-5">
	<div class="container py-5">
		<h1 class="mb-4">My Page</h1>
		<div class="row g-4">
			<div class="col-lg-12">
				<div class="row g-4">
					<div class="col-lg-3">
						<div class="row g-4">
							<div class="col-lg-12">
								<div class="mb-3">
									<h4>쇼핑정보</h4>
									<ul class="list-unstyled fruite-categorie">
										<li>
											<div class="d-flex justify-content-between fruite-name">
												<a href="orderList.do"><i class="fas fa-apple-alt me-2"></i>주문내역</a>
											</div>
										</li>
									</ul>
									<h4>쇼핑문의</h4>
									<ul class="list-unstyled fruite-categorie">
										<li>
											<div class="d-flex justify-content-between fruite-name">
												<a href="qnaMain.do"><i class="fas fa-apple-alt me-2"></i>1:1문의</a>
											</div>
										</li>
									</ul>
									<h4>회원정보</h4>
									<ul class="list-unstyled fruite-categorie">
										<li>
											<div class="d-flex justify-content-between fruite-name">
												<a href="memberUpdate.do"><i
													class="fas fa-apple-alt me-2"></i>회원정보 수정</a>
											</div>
										</li>
										<li>
											<div class="d-flex justify-content-between fruite-name">
												<a href="removeForm.do"><i class="fas fa-apple-alt me-2"></i>회원
													탈퇴</a>
											</div>
										</li>
									</ul>

								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-9">
						<div class="row g-4 justify-content-center">
							<div class="p-4 border border-secondary">
								<c:choose>
									<c:when test="${!empty logid }">
										<h4>${logName }님
											(회원번호 ${logMemNo })<button onClick="window.location.href='memberUpdate.do'"
												class="btn btn-outline-secondary"> 정보 수정</button>
										</h4>
									</c:when>
									<c:otherwise>
										<h4>로그인 안되어있음</h4>
									</c:otherwise>
								</c:choose>

								<p>전화번호:${logPhone }</p>
								<p>이메일:${logMail }</p>
								<p>주 소:${logAddr }</p>
							</div>
							<div class="p-4 border border-secondary">
								<h4>총 주문금액</h4>
								<p>적립금: ${logPoint}</p>
								<p>총 구매금액: ${logTotal}</p>
								<p>쿠 폰:</p>
							</div>
						</div>
					</div>
					<div id="order">
						<h3>최근 주문 정보</h3>
						<table class="table" id="tableList">
							<thead>
								<tr>
									<th>주문일자</th>
									<th>상품명</th>
									<th>결제금액</th>
									<th>주문상세</th>
								</tr>
							</thead>
							<tbody id="ordlist">
								
							</tbody>
						</table>
					</div>
					<div class="col-12">
						<div id="opg" class="pagination d-flex justify-content-center mt-5">
							<a href="#" class="rounded">&laquo;</a> 
							<a href="#"
							class="active rounded">1</a> 
							<a href="#" class="rounded">2</a> 
							<a href="#" class="rounded">3</a> 
							<a href="#" class="rounded">4</a> 
							<a href="#" class="rounded">5</a> 
							<a href="#" class="rounded">6</a> 
							<a href="#" class="rounded">&raquo;</a>
						</div>
					</div>
					<div id="show">
						<h3>최근 등록 게시글</h3>
						<table class="table" id="tableList2">
							<thead>
								<tr>
									<th>등록일자</th>
									<th>제목</th>
									<th>게시판</th>
								</tr>
							</thead>
							<tbody id="qnalist">
								
							</tbody>
						</table>
					</div>
					<div class="col-12">
						<div id="qpg" class="pagination d-flex justify-content-center mt-5">
							<a href="#" class="rounded">&laquo;</a> 
							<a href="#"
							class="active rounded">1</a> 
							<a href="#" class="rounded">2</a> 
							<a href="#" class="rounded">3</a> 
							<a href="#" class="rounded">4</a> 
							<a href="#" class="rounded">5</a> 
							<a href="#" class="rounded">6</a> 
							<a href="#" class="rounded">&raquo;</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Fruits Shop End-->
<script>
let opage = 1;
let qpage = 1;	 
let totalCnt = 0;
let memNo = ${logMemNo};
// 주문내역 목록+페이징	 
function opagingFunc() {
	opage = 1;
    $('div #opg a').on('click', function (e) {
    	e.preventDefault(); //a태그의 링크기능 차단.
		opage = $(this).data("page");
		oshowlist(opage, memNo);
		opageList(memNo);
	})
}

function oshowlist(opage = 1,memNo) {
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
    				 $('<td />').text(item.ordDate),
    				 $('<td />').text(item.prodName+' 등...'),
    				 $('<td />').text(item.ordTotal),
    				 $('<td />').text(item.ordStat)
    		));
		})
    },
    error: function (err) { 
        console.log('error=> ' + err);
    }
});
}

function opageList(memNo) {
	
	$.ajax({
        url: 'ordCount.do',
        method: 'post',
        traditional : true,
        data: {memNo: memNo},
        dataType: 'json',
        success: function (result) {
        	totalCnt = result.totalCount;
        	$('div #opg').html('');
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
    			document.querySelector('div#opg').appendChild(aTag);
    		}
    		for (let p = startPage; p <= endPage; p++) {
    			let aTag = document.createElement('a');
    			aTag.innerText = p;
    			aTag.setAttribute('data-page', p);
    			aTag.href = '#';
    			if (p == opage) {
    				aTag.className = 'active';
    			}
    			document.querySelector('div#opg').appendChild(aTag);
    		}
    		if (next) {
    			let aTag = document.createElement('a');
    			//aTag.innerText = endPage + 1;
    			aTag.innerHTML = '&raquo;';
    			aTag.setAttribute('data-page', endPage + 1);
    			aTag.href = '#';
    			document.querySelector('div#opg').appendChild(aTag);
    		}
    		opagingFunc();
        },
        error: function (err) { 
            console.log('error=> ' + err);
        }
});
}

oshowlist(opage, memNo);
opageList(memNo);
// end 주문내역 목록+페이징

// 문의내역 목록+페이징	 
function qpagingFunc() {
	qpage = 1;
    $('div #qpg a').on('click', function (e) {
    	e.preventDefault(); //a태그의 링크기능 차단.
		qpage = $(this).data("page");
		qshowlist(qpage, memNo);
		qpageList(memNo);
	})
}

function qshowlist(qpage = 1,memNo) {
	$('#qnalist').html('');
$.ajax({
    url: 'qnaTotal.do',
    method: 'post',
    traditional : true,
    data: {qpage: qpage, memNo: memNo},
    dataType: 'json',
    success: function (result) { 
    	console.log(result);
    	
    	result.forEach((item,idx) => {
    		console.log(item.inqNo);
    		$('#qnalist').append($('<tr />').append(
    				$('<td />').text(item.inqDate),
    				 $('<td />').text(item.inqTitle),
    				 $('<td />').text(item.inqType)
    			 ));
		})
    },
    error: function (err) { 
        console.log('error=> ' + err);
    }
});
}


function qpageList(memNo) {
	
	$.ajax({
        url: 'qnaCount.do',
        method: 'post',
        traditional : true,
        data: {memNo: memNo},
        dataType: 'json',
        success: function (result) {
        	totalCnt = result.totalCount;
        	/* if(totalCnt == 0){
        		$('.listhead').text("조회된 상품이 없습니다.");
        	}else{
            	$('.listhead').text("상품: "+totalCnt+"개");
        	} */
        	$('div #qpg').html('');
    		let startPage, endPage; // 1~5, 6~10,...
    		let next, prev;
    		let realEnd = Math.ceil(totalCnt / 5);
    		endPage = Math.ceil(qpage / 5) * 5;
    		startPage = endPage - 4;
    		endPage = endPage > realEnd ? realEnd : endPage;
    		next = endPage < realEnd ? true : false;
    		prev = startPage > 1;
    		if (prev) {
    			let aTag = document.createElement('a');
    			//aTag.innerText = startPage - 1;
    			aTag.innerHTML = '&laquo;';
    			aTag.setAttribute('data-page', startPage - 1);
    			aTag.href = '#';
    			document.querySelector('div#qpg').appendChild(aTag);
    		}
    		for (let p = startPage; p <= endPage; p++) {
    			let aTag = document.createElement('a');
    			aTag.innerText = p;
    			aTag.setAttribute('data-page', p);
    			aTag.href = '#';
    			if (p == qpage) {
    				aTag.className = 'active';
    			}
    			document.querySelector('div#qpg').appendChild(aTag);
    		}
    		if (next) {
    			let aTag = document.createElement('a');
    			//aTag.innerText = endPage + 1;
    			aTag.innerHTML = '&raquo;';
    			aTag.setAttribute('data-page', endPage + 1);
    			aTag.href = '#';
    			document.querySelector('div#qpg').appendChild(aTag);
    		}
    		qpagingFunc();
        },
        error: function (err) { 
            console.log('error=> ' + err);
        }
});
}

qshowlist(qpage, memNo);
qpageList(memNo);
// end 문의내역 목록+페이징	 
</script>


