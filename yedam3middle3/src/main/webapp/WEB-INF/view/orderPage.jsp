<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<style>
div.orderInfoLabel {
	display: inline-block;
	margin-right: 300px;
	width: 50px;
}

div.orderInfo {
	display: inline-block;
}
</style>



<!-- 헤더 바디 사이 영역 -->
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">주문/결제</h1>
	<ol class="breadcrumb justify-content-center mb-0">
		<li class="breadcrumb-item"><a href="#">Home</a></li>
		<li class="breadcrumb-item"><a href="#">Pages</a></li>
		<li class="breadcrumb-item active text-white">Cart</li>
	</ol>
</div>


<!-- 바디 영역 -->
<div class="container-fluid py-5">
	<div class="container py-5">
		<h1>주문/결제</h1>
		<hr>
		<br>
		<h4>주문자정보</h4>
		<!-- 주문자정보 시작 -->
		<div class="table-responsive">
			<hr>
			<div>
				<div class="orderInfoLabel">이름</div>
				<div class="orderInfo">로그인아이디</div>
			</div>
			<hr>
			<div>
				<div class="orderInfoLabel">이메일</div>

				<div class="orderInfo">
					<input type="text">
				</div>
				<div class="orderInfo">@</div>
				<div class="orderInfo">
					<input type="text">
				</div>
				<div class="orderInfo">
					<select>
						<option selected disabled>---</option>
						<option>naver.com</option>
						<option>nate.com</option>
						<option>gmail.com</option>
						<option>hanmail.com</option>
					</select>
				</div>
			</div>
			<hr>
			<div>
				<div class="orderInfoLabel">연락처</div>
				<div class="orderInfo">
					<input type="text">
				</div>
				<div class="orderInfo">-</div>
				<div class="orderInfo">
					<input type="text">
				</div>
				<div class="orderInfo">-</div>
				<div class="orderInfo">
					<input type="text">
				</div>
			</div>
			<hr>
		</div>
		<!-- 주문자정보 끝 -->


		<h4>배송정보</h4>
		<hr>
		<!-- 배송정보 시작 -->
		<div class="table-responsive"></div>
		<!-- 배송정보 끝 -->



		<h4>상품정보</h4>
		<!-- 상품정보 시작 -->
		<div class="table-responsive">
			<table class="table">
				<thead>
					<tr>
						<th scope="col">제품</th>
						<th scope="col">제품명</th>
						<th scope="col">수량</th>
						<th scope="col">배송비</th>
						<th scope="col">적립</th>
						<th scope="col">가격</th>
					</tr>
				</thead>
				<tbody>
					<!-- 첫번째 행 -->
					<tr>
						<th scope="row">
							<div class="d-flex align-items-center">
								<img src="static/img/pre-crunch-hotdog.jpg"
									class="img-fluid me-5 rounded-circle"
									style="width: 80px; height: 80px;" alt="">
							</div>
						</th>
						<td>
							<p class="mb-0 mt-4">제품명1</p>
						</td>
						<td>
							<p class="mb-0 mt-4">수량</p>
						</td>
						<td>
							<p class="mb-0 mt-4">배송비</p>
						</td>
						<td>
							<p class="mb-0 mt-4">적립</p>
						</td>
						<td>
							<p class="mb-0 mt-4">가격</p>
						</td>
					</tr>
					<!-- 두번째 행 -->
					<tr>
						<th scope="row">
							<div class="d-flex align-items-center">
								<img src="static/img/pre-crunch-hotdog-mo.jpg"
									class="img-fluid me-5 rounded-circle"
									style="width: 80px; height: 80px;" alt="" alt="">
							</div>
						</th>
						<td>
							<p class="mb-0 mt-4">제품명2</p>
						</td>
						<td>
							<p class="mb-0 mt-4">수량</p>
						</td>
						<td>
							<p class="mb-0 mt-4">배송비</p>
						</td>
						<td>
							<p class="mb-0 mt-4">적립</p>
						</td>
						<td>
							<p class="mb-0 mt-4">가격</p>
						</td>
					</tr>
					<!-- 세번째 행 -->
					<tr>
						<th scope="row">
							<div class="d-flex align-items-center">
								<img src="static/img/pre-kimbob-jobchae.jpg"
									class="img-fluid me-5 rounded-circle"
									style="width: 80px; height: 80px;" alt="" alt="">
							</div>
						</th>
						<td>
							<p class="mb-0 mt-4">제품명3</p>
						</td>
						<td>
							<p class="mb-0 mt-4">수량</p>
						</td>
						<td>
							<p class="mb-0 mt-4">배송비</p>
						</td>
						<td>
							<p class="mb-0 mt-4">적립</p>
						</td>
						<td>
							<p class="mb-0 mt-4">가격</p>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- 상품정보 끝 -->




		<div class="mt-5">
			<input type="text"
				class="border-0 border-bottom rounded me-5 py-3 mb-4"
				placeholder="Coupon Code">
			<button
				class="btn border-secondary rounded-pill px-4 py-3 text-primary"
				type="button">Apply Coupon</button>
		</div>
		<div class="row g-4 justify-content-end">
			<div class="col-8"></div>
			<div class="col-sm-8 col-md-7 col-lg-6 col-xl-4">
				<div class="bg-light rounded">
					<div class="p-4">
						<h1 class="display-6 mb-4">
							Cart <span class="fw-normal">Total</span>
						</h1>
						<div class="d-flex justify-content-between mb-4">
							<h5 class="mb-0 me-4">Subtotal:</h5>
							<p class="mb-0">$96.00</p>
						</div>
						<div class="d-flex justify-content-between">
							<h5 class="mb-0 me-4">Shipping</h5>
							<div class="">
								<p class="mb-0">Flat rate: $3.00</p>
							</div>
						</div>
						<p class="mb-0 text-end">Shipping to Ukraine.</p>
					</div>
					<div
						class="py-4 mb-4 border-top border-bottom d-flex justify-content-between">
						<h5 class="mb-0 ps-4 me-4">Total</h5>
						<p class="mb-0 pe-4">$99.00</p>
					</div>
					<button
						class="btn border-secondary rounded-pill px-4 py-3 text-primary text-uppercase mb-4 ms-4"
						type="button">Proceed Checkout</button>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Cart Page End -->