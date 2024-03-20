<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="co.yedam.my.Qna"%>
<%@page import="co.yedam.my.PageDTO"%>
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
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">1:1 문의 게시판</h1>
</div>
<div id="show">
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
<div class="center">
	 <div class="pagination">
		<c:if test="${page.prev }">
			<a href="qnaMain.do?page=${page.starPage -1 }"> &laquo; </a>
		</c:if>
		<c:forEach begin="${page.starPage }" end="${page.endPage }" var="p">
			<c:choose>
				<c:when test="${p eq page.page }">
					<a href="qnaMain.do?page=${p }" class="active">${p }</a>
				</c:when>
				<c:otherwise>
					<a href="qnaMain.do?page=${p }">${p }</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if test="${page.next }">
			<a href="qnaMain.do?page=${page.endPage +1 }"> &raquo; </a>
		</c:if>
	 </div>
</div>
<a href="qnaAddForm.do"><button type="button">문의글 작성</button></a>
<a href="myPage.do"><button type="button">돌아가기</button></a>

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
.catch(err => console.log(err,"errrrrrrrrrr"));
	
</script>
