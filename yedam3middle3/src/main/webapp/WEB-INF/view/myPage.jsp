<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
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
												<a href="#"><i class="fas fa-apple-alt me-2"></i>회원 탈퇴</a>
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
									<c:when test="${!empty logId }">
										<h4>${logName }님</h4>
										<a href="memberUpdate.do"
									class="btn border rounded-pill px-2 text-primary"> 정보 수정</a>
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
								<p>예치금:</p>
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

							</tbody>
						</table>
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

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Fruits Shop End-->
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
			$('<td />').text(item.inqDate),
			$('<td />').text(item.inqTitle),
			$('<td />').text(item.inqType)
		).appendTo($('#tableList2 tbody'));
	})
	
	// 데이터.
	

})
.catch(err => console.log(err,"errrrrrrrrrr"));
	
</script>