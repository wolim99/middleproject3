<%@ page import="co.yedam.order.Product"%>
<%@ page import="co.yedam.order.Review" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <script src="//ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- css -->
<style>
div.detailInfo {
	display: inline-block;
	margin-right: 30px;
}

div.detailOption, div.detailInfoStar, div.detailInfoTotal1, div.reviewInfo {
	display: inline-block;
}
div.reviewInfo1{
	text-align: left;
	display: inline-block;
}
div.detailInfoTotal, div.detailInfoBtn {
	text-align: right;
}

div select.detailOptionSelect {
	width: 250px;
	height: 30px;
}
button.nav-link{
	width: 324px;
}

</style>


<!-- 헤더와 바디 사이 영역 -->
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">상세페이지</h1>
	<ol class="breadcrumb justify-content-center mb-0">
		<li class="breadcrumb-item"><a href="#">Home</a></li>
		<li class="breadcrumb-item"><a href="#">Pages</a></li>
		<li class="breadcrumb-item active text-white">Shop Detail</li>
	</ol>
</div>

<!-- 
${product } >> 제품 데이터(이름, 가격, 브랜드, 원산지, 이미지경로)
${review1 } >> 리뷰 평점
${review2 } >> 리뷰 개수
 -->


${reviewList }


<!-- 바디 영역 -->
<div class="container-fluid py-5 mt-5">
	<div class="container py-5">
		<div class="row g-4 mb-5">
			<!-- 바디 영역 시작 -->
			<div class="col-lg-8 col-xl-12">
				<!-- 상단 좌측/우측 영역 시작 -->
				<div class="row g-4">
					<!-- 상단 좌측 영역 -->
					<div class="col-lg-6">
						<div style="text-align: center">
							<a href="#"> <img src="static/img/${product.prodImg }"
								class="img-fluid" alt="닭가슴살" width="500px" height="500px">
							</a>
						</div>
					</div>
					<!-- 상단 우측 영역 -->
					<div class="col-lg-6">
						<h4 class="fw-bold mb-3">${product.prodName }</h4>
						<!-- 평점 >> 별 -->
						<div class="detailInfoStar"><h5>${review1 }/5</h5></div>
						<div class="detailInfoStar">
							<i class="fa fa-star text-secondary"></i>
							<i class="fa fa-star text-secondary"></i>
							<i class="fa fa-star text-secondary"></i>
							<i class="fa fa-star text-secondary"></i>
							<i class="fa fa-star text-secondary"></i>
							<div style="display: inline-block;">(${review2 })</div>
						</div>
						<div>
							<h1 class="fw-bold mb-3">${product.prodPrice }</h1>
						</div>
						<hr>
						<div class="detailInfo">배송비</div>
						<div class="detailInfo">2500원</div>
						<hr>
						<div class="detailInfo">브랜드</div>
						<div class="detailInfo">${product.prodBrand }</div>
						<hr>
						<div class="detailInfo">원산지</div>
						<div class="detailInfo">${product.prodFrom }</div>
						<hr>
						<!-- 
						<label>수량선택</label>
						<div class="detailOption">
							<select class="detailOptionSelect">
								<option selected disabled>수량옵션</option>
								<option value="${product.prodPrice }">1팩</option>
								<option value="${product.prodPrice*2 }">2팩</option>
								<option value="${product.prodPrice*3 }">3팩</option>
								<option value="${product.prodPrice*4 }">4팩</option>
								<option value="${product.prodPrice*5 }">5팩</option>
							</select>
						</div>
						<hr>
						 -->
						<!-- 옵션선택 -->
						<label>수량선택</label>
						<div class="detailOption">
							<input id="prodCnt" type="number" min="1" max="50" value="1" style="width: 80px;">
						</div>
						<div class="detailOption">(최대 50개)</div>
						<script>
							$('#prodCnt').on('change', function(){
								$.ajax("./detailPage.do")
								.done(function(){
									let inputVal = document.querySelector('#prodCnt')
									document.querySelector('.changeTotal').innerText = inputVal.value * ${product.prodPrice };
								})
							})
						</script>
						<!-- 옵션 선택시 총금액 바꾸기 -->
						<script>
							/*$('.detailOptionSelect').on('change', function(){
								$.ajax("./detailPage.do")
								.done(function(){
									console.log("요청성공");
									let optionVal = document.querySelector('.detailOptionSelect');
									document.querySelector('.changeTotal').innerText = optionVal.options[optionVal.selectedIndex].value;
								})
								.fail(function(){
									console.log("요청실패");
								})
								.always(function(){
									console.log("요청완료");
								})
							})*/
						</script>
						<hr>
						<!-- 드롭다운 추가선택 
						<label>추가선택</label>
						<div class="detailOption">
							<select class="detailOptionSelect">
								<option selected disabled>추가선택</option>
								<option>선택안함</option>
								<option>1. 프레시지 4팩 +10000</option>
								<option>2. 허닭 4팩 + 10000</option>
								<option>3. 발재반점 4팩 + 10000</option>
								<option>4. 프레시지 8팩 + 20000</option>
								<option>5. 허닭 8팩 + 20000</option>
								<option>5. 발재반점 8팩 + 20000</option>
							</select>
						</div> 
						<hr> -->
						<br>
						<!-- 옵션선택 -->
						<div class="detailInfoTotal">
							<div class="detailInfoTotal1"><h2>총금액</h2></div>
							<div class="detailInfoTotal1"><h2 class="changeTotal" style="color: red">${product.prodPrice }</h2></div>
							<div class="detailInfoTotal1"><h2>원</h2></div>
						</div>
						<br>
						<div class="detailInfoBtn">					
							<a href="#"
							class="btn border border-secondary rounded-pill px-4 py-2 mb-4 text-primary"><i
							class="fa fa-shopping-bag me-2 text-primary"></i>장바구니</a> 
							<a href="http://localhost:8080/yedam3middle3/orderPage.do"
							class="btn border border-secondary rounded-pill px-4 py-2 mb-4 text-primary"><i
							class="fa fa-shopping-bag me-2 text-primary"></i>바로구매</a>
						</div>
					</div>
				</div>
				<!-- 상단 좌측/우측 영역 끝 -->
				<!-- 관련 제품 영역 시작 -->
				<br> <br> <br>
				<h1 class="fw-bold mb-0" style="text-align: center">연관 상품</h1>
				<div class="vesitable">
					<div class="owl-carousel vegetable-carousel justify-content-center">
						<div
							class="border border-primary rounded position-relative vesitable-item">
							<div class="vesitable-img">
								<!-- 연관제품 이미지1 -->
								<img src="static/img/heo-beef-jerky-ori.jpg"
									class="img-fluid w-100 rounded-top" alt="">
							</div>
							<div
								class="text-white bg-primary px-3 py-1 rounded position-absolute"
								style="top: 10px; right: 10px;">닭가슴살</div>
							<div class="p-4 pb-0 rounded-bottom">
								<h4>제품이름1</h4>
								<p>제품설명</p>
								<div class="d-flex justify-content-between flex-lg-wrap">
									<p class="text-dark fs-5 fw-bold">제품가격</p>
									<a href="#"
										class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i
										class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
								</div>
							</div>
						</div>
						<div
							class="border border-primary rounded position-relative vesitable-item">
							<div class="vesitable-img">
								<!-- 연관제품 이미지2 -->
								<img src="static/img/heo-crispy-filet-ch.jpg"
									class="img-fluid w-100 rounded-top" alt="">
							</div>
							<div
								class="text-white bg-primary px-3 py-1 rounded position-absolute"
								style="top: 10px; right: 10px;">닭가슴살</div>
							<div class="p-4 pb-0 rounded-bottom">
								<h4>제품이름2</h4>
								<p>제품설명</p>
								<div class="d-flex justify-content-between flex-lg-wrap">
									<p class="text-dark fs-5 fw-bold">제품가격</p>
									<a href="#"
										class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i
										class="fa fa-shopping-bag me-2 text-primary"></i>장바구니</a>
								</div>
							</div>
						</div>
						<div
							class="border border-primary rounded position-relative vesitable-item">
							<div class="vesitable-img">
								<!-- 연관제품 이미지3 -->
								<img src="static/img/heo-filet-dumpling.jpg"
									class="img-fluid w-100 rounded-top bg-light" alt="">
							</div>
							<div
								class="text-white bg-primary px-3 py-1 rounded position-absolute"
								style="top: 10px; right: 10px;">닭가슴살</div>
							<div class="p-4 pb-0 rounded-bottom">
								<h4>제품이름3</h4>
								<p>제품설명</p>
								<div class="d-flex justify-content-between flex-lg-wrap">
									<p class="text-dark fs-5 fw-bold">제품가격</p>
									<a href="#"
										class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i
										class="fa fa-shopping-bag me-2 text-primary"></i>장바구니</a>
								</div>
							</div>
						</div>
						<div
							class="border border-primary rounded position-relative vesitable-item">
							<div class="vesitable-img">
								<!-- 연관제품 이미지4 -->
								<img src="static/img/heo-filet-dumpling-kimchi.jpg"
									class="img-fluid w-100 rounded-top" alt="">
							</div>
							<div
								class="text-white bg-primary px-3 py-1 rounded position-absolute"
								style="top: 10px; right: 10px;">닭가슴살</div>
							<div class="p-4 pb-0 rounded-bottom">
								<h4>제품이름4</h4>
								<p>제품설명</p>
								<div class="d-flex justify-content-between flex-lg-wrap">
									<p class="text-dark fs-5 fw-bold">제품가격</p>
									<a href="#"
										class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i
										class="fa fa-shopping-bag me-2 text-primary"></i>장바구니</a>
								</div>
							</div>
						</div>
						<div
							class="border border-primary rounded position-relative vesitable-item">
							<div class="vesitable-img">
								<!-- 연관제품 이미지5 -->
								<img src="static/img/heo-filet-jerky-spi.jpg"
									class="img-fluid w-100 rounded-top" alt="">
							</div>
							<div
								class="text-white bg-primary px-3 py-1 rounded position-absolute"
								style="top: 10px; right: 10px;">닭가슴살</div>
							<div class="p-4 pb-0 rounded-bottom">
								<h4>제품이름5</h4>
								<p>제품설명</p>
								<div class="d-flex justify-content-between flex-lg-wrap">
									<p class="text-dark fs-5 fw-bold">제품가격</p>
									<a href="#"
										class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i
										class="fa fa-shopping-bag me-2 text-primary"></i>장바구니</a>
								</div>
							</div>
						</div>
						<div
							class="border border-primary rounded position-relative vesitable-item">
							<div class="vesitable-img">
								<!-- 연관제품 이미지6 -->
								<img src="static/img/heo-filet-Vienna-ch.jpg"
									class="img-fluid w-100 rounded-top" alt="">
							</div>
							<div
								class="text-white bg-primary px-3 py-1 rounded position-absolute"
								style="top: 10px; right: 10px;">닭가슴살</div>
							<div class="p-4 pb-0 rounded-bottom">
								<h4>제품이름6</h4>
								<p>제품설명</p>
								<div class="d-flex justify-content-between flex-lg-wrap">
									<p class="text-dark fs-5 fw-bold">제품가격</p>
									<a href="#"
										class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i
										class="fa fa-shopping-bag me-2 text-primary"></i>장바구니</a>
								</div>
							</div>
						</div>
						<div
							class="border border-primary rounded position-relative vesitable-item">
							<div class="vesitable-img">
								<!-- 연관제품 이미지7 -->
								<img src="static/img/heo-filet-Vienna-origin.jpg"
									class="img-fluid w-100 rounded-top" alt="">
							</div>
							<div
								class="text-white bg-primary px-3 py-1 rounded position-absolute"
								style="top: 10px; right: 10px;">닭가슴살</div>
							<div class="p-4 pb-0 rounded-bottom">
								<h4>제품이름7</h4>
								<p>제품설명</p>
								<div class="d-flex justify-content-between flex-lg-wrap">
									<p class="text-dark fs-5 fw-bold">제품가격</p>
									<a href="#"
										class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i
										class="fa fa-shopping-bag me-2 text-primary"></i>장바구니</a>
								</div>
							</div>
						</div>
						<div
							class="border border-primary rounded position-relative vesitable-item">
							<div class="vesitable-img">
								<!-- 연관제품 이미지8 -->
								<img src="static/img/heo-gril-filet-steak-ggak.jpg"
									class="img-fluid w-100 rounded-top" alt="">
							</div>
							<div
								class="text-white bg-primary px-3 py-1 rounded position-absolute"
								style="top: 10px; right: 10px;">닭가슴살</div>
							<div class="p-4 pb-0 rounded-bottom">
								<h4>제품이름8</h4>
								<p>제품설명</p>
								<div class="d-flex justify-content-between flex-lg-wrap">
									<p class="text-dark fs-5 fw-bold">제품가격</p>
									<a href="#"
										class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i
										class="fa fa-shopping-bag me-2 text-primary"></i>장바구니</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<br> <br> <br>
				<!-- 관련 제품 영역 끝 -->
				<!-- 탭 영역 시작 -->
				<div class="col-lg-12">
					<!-- 탭 내비게이션 -->
					<nav>
						<div class="nav nav-tabs mb-3">
							<button class="nav-link active border-white border-bottom-0"
								type="button" role="tab" id="nav-about-tab" data-bs-toggle="tab"
								data-bs-target="#nav-about" aria-controls="nav-about"
								aria-selected="true">상품설명</button>
							<button class="nav-link border-white border-bottom-0"
								type="button" role="tab" id="nav-about-tab" data-bs-toggle="tab"
								data-bs-target="#nav-about1" aria-controls="nav-about1"
								aria-selected="false">보관방법</button>
							<button class="nav-link border-white border-bottom-0"
								type="button" role="tab" id="nav-about-tab" data-bs-toggle="tab"
								data-bs-target="#nav-about2" aria-controls="nav-about2"
								aria-selected="false">배송/교환/환불</button>
							<button class="nav-link border-white border-bottom-0"
								type="button" role="tab" id="nav-mission-tab"
								data-bs-toggle="tab" data-bs-target="#nav-mission"
								aria-controls="nav-mission" aria-selected="false">리뷰<div style="display: inline-block;">(${review2 })</div></button>
								
						</div>
					</nav>
					<!-- 탭 영역 -->
					<div class="tab-content mb-5" style="text-align: center">
						<!-- 탭1: 상품설명 -->
						<div class="tab-pane active" id="nav-about" role="tabpanel"
							aria-labelledby="nav-about-tab">
							<img src="static/img/detail-${product.prodImg }">
						</div>
						<!-- 탬1 끝 -->
						<!-- 탭2: 보관방법 -->
						<div class="tab-pane" id="nav-about1" role="tabpanel"
							aria-labelledby="nav-about-tab">
							<p>보관방법</p>
							<hr>
							<table border="1">
								<tr>
									<th>구분</th>
									<th>보관방법</th>
									<th>유통기한</th>
									<th>해당제품</th>
								</tr>
								<tr>
									<td>닭가슴살</td>
									<td>1</td>
									<td>1</td>
									<td>1</td>
								</tr>
								<tr>
									<td>도시락</td>
									<td>2</td>
									<td>2</td>
									<td>2</td>
								</tr>
								<tr>
									<td>볶음밥</td>
									<td>3</td>
									<td>3</td>
									<td>3</td>
								</tr>
								<tr>
									<td>고구마</td>
									<td>4</td>
									<td>4</td>
									<td>4</td>
								</tr>
								<tr>
									<td>육포</td>
									<td>5</td>
									<td>5</td>
									<td>5</td>
								</tr>
								<tr>
									<td>간편식</td>
									<td>6</td>
									<td>6</td>
									<td>6</td>
								</tr>
								<tr>
									<td>오일</td>
									<td>7</td>
									<td>7</td>
									<td>7</td>
								</tr>
							</table>
						</div>
						<!-- 탭2 끝 -->
						<!-- 탭3: 배송/교환/환불 -->
						<div class="tab-pane" id="nav-about2" role="tabpanel"
							aria-labelledby="nav-about-tab">
							<p>배송/교환/환불</p>
							<hr>
							<table border="1">
								<tr>
									<th>구분</th>
									<th>보관방법</th>
									<th>유통기한</th>
									<th>해당제품</th>
								</tr>
								<tr>
									<td>1</td>
									<td>1</td>
									<td>1</td>
									<td>1</td>
								</tr>
								<tr>
									<td>2</td>
									<td>2</td>
									<td>2</td>
									<td>2</td>
								</tr>
								<tr>
									<td>3</td>
									<td>3</td>
									<td>3</td>
									<td>3</td>
								</tr>
								<tr>
									<td>4</td>
									<td>4</td>
									<td>4</td>
									<td>4</td>
								</tr>
								<tr>
									<td>5</td>
									<td>5</td>
									<td>5</td>
									<td>5</td>
								</tr>
								<tr>
									<td>6</td>
									<td>6</td>
									<td>6</td>
									<td>6</td>
								</tr>
								<tr>
									<td>7</td>
									<td>7</td>
									<td>7</td>
									<td>7</td>
								</tr>
							</table>
						</div>
						<!-- 탭3 끝 -->
						<!-- 탭4: 리뷰 -->
						<div class="tab-pane" id="nav-mission" role="tabpanel" aria-labelledby="nav-mission-tab">
							<p>리뷰</p>
							<p>평점:${review1 }/5</p>
							<p>개수:${review2 }</p>
							<hr>
							<div>
								<img src="static/img/${product.prodImg }" width="200px" height="200px">
							</div>
							<c:forEach var="review" items="${reviewList }">
								<p>${review.revStar }</p>
								<p>${review.revContent }</p>
								<p>${review.revDate }</p>
								<p>${review.memNo }</p>
								<br>
							</c:forEach>
						</div>
						<!-- 탭4 끝 -->
						<div class="tab-pane" id="nav-vision" role="tabpanel">
							<p class="text-dark">Tempor erat elitr rebum at clita. Diam
								dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos
								labore. 3</p>
							<p class="mb-0">Diam dolor diam ipsum et tempor sit. Aliqu
								diam amet diam et eos labore. Clita erat ipsum et lorem et sit</p>
						</div>
					</div>
				</div>
				<!-- 탭 영역 끝 -->
			</div>
			<!-- 바디 영역 끝 -->
		</div>
	</div>
</div>