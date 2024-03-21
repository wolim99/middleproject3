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
											(회원번호 ${logMemNo })<a href="memberUpdate.do"
												class="btn border px-2 text-primary"> 정보 수정</a>
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
							<tbody>
								<c:forEach var="ordList" items="${olist }">
									<tr>
										<td><fmt:formatDate value="${ordList.ordDate }"
												pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></td>
										<td>${ordList.prodName }</td>
										<td>${ordList.ordTotal }</td>
										<td>${ordList.ordStat }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="center">
						<div class="pagination">
							<c:if test="${opage.prev }">
								<a href="myPage.do?page=1&opage=${opage.starPage -1 }"> &laquo; </a>
							</c:if>
							<c:forEach begin="${opage.starPage }" end="${opage.endPage }"
								var="p">
								<c:choose>
									<c:when test="${p eq opage.opage }">
										<a href="myPage.do?page=1&opage=${p }" class="active">${p }</a>
									</c:when>
									<c:otherwise>
										<a href="myPage.do?page=1&opage=${p }">${p }</a>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<c:if test="${opage.next }">
								<a href="myPage.do?page=1&opage=${opage.endPage +1 }"> &raquo; </a>
							</c:if>
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
							<tbody>
								<c:forEach var="qna" items="${list }">
									<tr>
										<td><fmt:formatDate value="${qna.inqDate }"
												pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></td>
										<td>${qna.inqTitle }</td>
										<td>${qna.inqType }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="center">
						<div class="pagination">
							<c:if test="${page.prev }">
								<a href="myPage.do?page=${page.starPage -1 }&opage=1"> &laquo; </a>
							</c:if>
							<c:forEach begin="${page.starPage }" end="${page.endPage }"
								var="p">
								<c:choose>
									<c:when test="${p eq page.page }">
										<a href="myPage.do?page=${p }&opage=1" class="active">${p }</a>
									</c:when>
									<c:otherwise>
										<a href="myPage.do?page=${p }&opage=1">${p }</a>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<c:if test="${page.next }">
								<a href="myPage.do?page=${page.endPage +1 }&opage=1"> &raquo; </a>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Fruits Shop End-->
<script>
	/* let total = 0;
	 fetch('qna.do')
	 .then(resolve => resolve.json())
	 .then(result => {
	 console.log(result);
	 result.forEach(item => {
	 console.log(item);
	 })
	
	 $(result).each((idx, item, ary) => {
	 //total += item.ord
	 console.log(item.inqNo)
	 if(${logMemNo } == item.memNo) {
	 $('<tr />').append(
	 $('<td />').text(item.inqDate),
	 $('<td />').text(item.inqTitle),
	 $('<td />').text(item.inqType)
	 ).appendTo($('#tableList2 tbody'));
	 }
	 })		
	 })
	 .catch(err => console.log(err,"errrrrrrrrrr")); */

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
	 $('<td />').text(item.ordDate),
	 $('<td />').text(item.prodName+' 등...'),
	 $('<td />').text(item.ordTotal),
	 $('<td />').text(item.ordStat)
	 ).appendTo($('#tableList tbody'));
	 }
	 })		
	 })
	 .catch(err => console.log(err,"errrrrrrrrrr")); */
</script>


