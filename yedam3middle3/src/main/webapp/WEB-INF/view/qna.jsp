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
		<tbody>

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
<a href="qnaAddForm.do"><button type="button">문의글 작성</button></a>
<a href="myPage.do"><button type="button">돌아가기</button></a>

<script>
/* fetch('qna.do')
.then(resolve => resolve.json())
.then(result => {
	$(result).each((idx, item, ary) => {
		if(${logMemNo } == item.memNo) {
		$('<tr />').append(
			$('<td />').text(item.inqNo),
			$('<td />').text(item.inqType),
			$('<td />').append($('<a href="qnaDetail.do?inqNo='+item.inqNo+'" />').text(item.inqTitle)),
			$('<td />').text(item.inqResp),
			$('<td />').text(item.inqDate)
		 ).appendTo($('tbody'));
		}
	})
})
.catch(err => console.log(err,"errrrrrrrrrr")); */

let page = 1;
let totalCnt = 0;

//페이징 버튼
function pagingFunc() {
	ppage = 1;
    $('div .pagination a').on('click', function (e) {
    	e.preventDefault(); //a태그의 링크기능 차단.
		ppage = $(this).data("page");
		showlist(page);
		pageList();
	})
}

function showlist(page = 1) {
	$('#qnalist').html('');
$.ajax({
    url: 'qna.do',
    method: 'post',
    traditional : true,
    data: {page: page},
    dataType: 'json',
    success: function (result) { 
    	console.log(result);
    	
    	result.forEach((item,idx) => {
    		$('<tr />').append(
    				$('<td />').text(item.inqNo),
    				$('<td />').text(item.inqType),
    				$('<td />').append($('<a href="qnaDetail.do?inqNo='+item.inqNo+'" />').text(item.inqTitle)),
    				$('<td />').text(item.inqResp),
    				$('<td />').text(item.inqDate)
    			 ).appendTo($('tbody'));
		})
    },
    error: function (err) { 
        console.log('error=> ' + err);
    }
});
}

function pageList() {
	
	$.ajax({
        url: 'qnaTotal.do',
        method: 'post',
        traditional : true,
        data: {},
        dataType: 'json',
        success: function (result) {
        	totalCnt = result.totalCount;
        	if(totalCnt == 0){
        		$('.listhead').text("조회된 상품이 없습니다.");
        	}else{
            	$('.listhead').text("상품: "+totalCnt+"개");
        	}
        	$('div .pagination').html('');
    		let startPage, endPage; // 1~5, 6~10,...
    		let next, prev;
    		let realEnd = Math.ceil(totalCnt / 6);
    		endPage = Math.ceil(ppage / 6) * 5;
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
    			if (p == ppage) {
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

showlist(page);
pageList();
</script>
