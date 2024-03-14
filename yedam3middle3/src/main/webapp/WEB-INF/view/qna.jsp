<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="co.yedam.my.Qna"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<h3>1:1 문의</h3>
<div id="show">
	<table class="table" id="tableList">
		<thead>
			<tr>
				<th>글번호</th>
				<th>카테고리</th>
				<th>내용</th>
				<th>답변</th>
				<th>회원번호</th>
			</tr>
		</thead>
		<tbody>

		</tbody>
	</table>
</div>

<script>
fetch('qna.do')
.then(resolve => resolve.json())
.then(result => {
	console.log(result);
	result.forEach(item => {
		console.log(item);
	})
	
	$(result).each((idx, item, ary) => {
		console.log(item.inqNo)
		$('<tr />').append(
			$('<td />').text(item.inqNo),
			$('<td />').text(item.inqType),
			$('<td />').text(item.inqContent),
			$('<td />').text(item.inqResp),
			$('<td />').text(item.memNo)
		).appendTo($('tbody'));
	})
	
	// 데이터.
	

})
.catch(err => console.log(err,"errrrrrrrrrr"));
	
</script>
