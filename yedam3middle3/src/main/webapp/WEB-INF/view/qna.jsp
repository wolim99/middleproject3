<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="co.yedam.my.Qna"%>
<%@page import="co.yedam.my.PageDTO"%>
<%@page import="java.util.List"%>
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
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">1:1 문의 게시판</h1>
</div>
<div id="qnalist">
	<br>
	<div style="text-align: right;">
		<a href="qnaAddForm.do"><button type="button" class="btn btn-outline-primary">문의글 작성</button></a>
		<a href="myPage.do"><button type="button"class="btn btn-outline-secondary">돌아가기</button></a>
	</div>
	<table class="table" id="tableList">
		<thead>
			<tr>
				<th>글번호</th>
				<th>카테고리</th>
				<th>제목</th>
				<th>답변</th>
				<th>작성일자</th>
			</tr>
		</thead>
		<tbody id="qnalist2">
			
		</tbody>
	</table>
</div>

<div class="col-12">
	<div class="pagination d-flex justify-content-center mt-5">
		<a href="#" class="rounded">&laquo;</a> 
		<a href="#" class="active rounded">1</a> 
		<a href="#" class="rounded">2</a> 
		<a href="#" class="rounded">3</a>
		<a href="#" class="rounded">4</a> 
		<a href="#" class="rounded">5</a> 
		<a href="#" class="rounded">6</a>
		<a href="#" class="rounded">&raquo;</a>
	</div>
</div>
<br>

<script>
let qpage = 1;
let totalCnt = 0;
let memNo = ${logMemNo};

//페이징 버튼
function pagingFunc() {
	qpage = 1;
    $('div .pagination a').on('click', function (e) {
    	e.preventDefault(); //a태그의 링크기능 차단.
		qpage = $(this).data("page");
		showlist(qpage, memNo);
		pageList(memNo);
	})
}

function showlist(qpage = 1,memNo) {
	$('#qnalist2').html('');
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
    		$('#qnalist2').append($('<tr />').append(
    				$('<td />').text(item.inqNo),
    				$('<td />').text(item.inqType),
    				$('<td />').append($('<a href="qnaDetail.do?inqNo='+item.inqNo+'" />').text(item.inqTitle)),
    				$('<td />').text(item.inqResp),
    				$('<td />').text(item.inqDate)
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
        	$('div .pagination').html('');
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
    			document.querySelector('div.pagination').appendChild(aTag);
    		}
    		for (let p = startPage; p <= endPage; p++) {
    			let aTag = document.createElement('a');
    			aTag.innerText = p;
    			aTag.setAttribute('data-page', p);
    			aTag.href = '#';
    			if (p == qpage) {
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

showlist(qpage, memNo);
pageList(memNo);
</script>	

