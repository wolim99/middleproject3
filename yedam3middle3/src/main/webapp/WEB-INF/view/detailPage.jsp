<%@ page import="co.yedam.order.Product" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Product 임포트 -->
<%@page import="co.yedam.order.Product" %>


<!-- Single Page Header start -->
<!-- 헤더와 바디 사이 영역 -->
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">Shop Detail</h1>
	<ol class="breadcrumb justify-content-center mb-0">
		<li class="breadcrumb-item"><a href="#">Home</a></li>
		<li class="breadcrumb-item"><a href="#">Pages</a></li>
		<li class="breadcrumb-item active text-white">Shop Detail</li>
	</ol>
</div>
<!-- Single Page Header End -->
<!-- Single Product Start -->
<!-- 바디 영역 -->
<div class="container-fluid py-5 mt-5">
	<div class="container py-5">
		<div class="row g-4 mb-5">
			<div class="col-lg-8 col-xl-12">
				<div class="row g-4">
					<!-- 좌측 이미지 영역 -->
					<div class="col-lg-6">
						<div style="text-align: center">
							<a href="#"> <img src="static/img/dak1.jpg" class="img-fluid"
								alt="닭가슴살" width="500px" height="500px">
							</a>
						</div>
					</div>
					<!-- 우측 데이터 영역 -->
					<!--  ${param.pName } -->
					<div class="col-lg-6">
						<h4 class="fw-bold mb-3">${param.pName }</h4>
						<div class="d-flex mb-4">
							<i class="fa fa-star text-secondary"></i> <i
								class="fa fa-star text-secondary"></i> <i
								class="fa fa-star text-secondary"></i> <i
								class="fa fa-star text-secondary"></i> <i class="fa fa-star">
							</i>
							<p>(100)</p>
						</div>
						<h1 class="fw-bold mb-3">2500</h1>
						<hr>
						<label>배송비</label>
						<hr>
						<label>브랜드</label>
						<hr>
						<label>원산지</label>
						<hr>
						<!-- 옵션선택 -->
						<div class="input-group quantity mb-5" style="width: 100px;">
							<!-- -버튼 -->
							<div class="input-group-btn">
								<button
									class="btn btn-sm btn-minus rounded-circle bg-light border">
									<i class="fa fa-minus"></i>
								</button>
							</div>
							<!-- 직접 값 입력 -->
							<input type="text"
								class="form-control form-control-sm text-center border-0"
								value="1">
							<!-- +버튼 -->
							<div class="input-group-btn">
								<button
									class="btn btn-sm btn-plus rounded-circle bg-light border">
									<i class="fa fa-plus"></i>
								</button>
							</div>
							<!-- 드롭다운 옵션선택 -->
							<label>옵션선택</label> <select>
								<option selected>1+1</option>
								<option>2+2</option>
								<option>3+3</option>
								<option>4+4</option>
								<option>5+5</option>
							</select>
							<!-- 드롭다운 추가선택 -->
							<label>추가선택</label> 
							<select>
								<option selected>---</option>
								<option>1+1</option>
								<option>2+2</option>
								<option>3+3</option>
								<option>4+4</option>
								<option>5+5</option>
							</select>
						</div>
						<a href="#"
							class="btn border border-secondary rounded-pill px-4 py-2 mb-4 text-primary"><i
							class="fa fa-shopping-bag me-2 text-primary"></i>장바구니</a> <a href="#"
							class="btn border border-secondary rounded-pill px-4 py-2 mb-4 text-primary"><i
							class="fa fa-shopping-bag me-2 text-primary"></i>바로구매</a>
					</div>
					<br>
					<p>관련상품 영역입니다.</p>
					<br>
				</div>
				<!-- 탭 영역  -->
				<div class="col-lg-12">
					<!-- 한 페이지에서 서브 페이지로 이동하는 탭 -->
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
								type="button" role="tab" id="nav-mission-tab" data-bs-toggle="tab" 
								data-bs-target="#nav-mission" aria-controls="nav-mission" 
								aria-selected="false">리뷰</button>
						</div>
					</nav>
					<!-- 탭 영역 -->
					<div class="tab-content mb-5">
						<!-- 탭1: 상품설명 -->
						<div class="tab-pane active" id="nav-about" role="tabpanel"
							aria-labelledby="nav-about-tab">
							<p>상품설명</p>
							<p>The generated Lorem Ipsum is therefore always free from
								repetition injected humour, or non-characteristic words etc.
								Susp endisse ultricies nisi vel quam suscipit</p>
							<p>Sabertooth peacock flounder; chain pickerel hatchetfish,
								pencilfish snailfish filefish Antarctic icefish goldeye
								aholehole trumpetfish pilot fish airbreathing catfish, electric
								ray sweeper.</p>
							<div class="px-2">
								<div class="row g-4">
									<div class="col-6">
										<div
											class="row bg-light align-items-center text-center justify-content-center py-2">
											<div class="col-6">
												<p class="mb-0">Weight</p>
											</div>
											<div class="col-6">
												<p class="mb-0">1 kg</p>
											</div>
										</div>
										<div
											class="row text-center align-items-center justify-content-center py-2">
											<div class="col-6">
												<p class="mb-0">Country of Origin</p>
											</div>
											<div class="col-6">
												<p class="mb-0">Agro Farm</p>
											</div>
										</div>
										<div
											class="row bg-light text-center align-items-center justify-content-center py-2">
											<div class="col-6">
												<p class="mb-0">Quality</p>
											</div>
											<div class="col-6">
												<p class="mb-0">Organic</p>
											</div>
										</div>
										<div
											class="row text-center align-items-center justify-content-center py-2">
											<div class="col-6">
												<p class="mb-0">Сheck</p>
											</div>
											<div class="col-6">
												<p class="mb-0">Healthy</p>
											</div>
										</div>
										<div
											class="row bg-light text-center align-items-center justify-content-center py-2">
											<div class="col-6">
												<p class="mb-0">Min Weight</p>
											</div>
											<div class="col-6">
												<p class="mb-0">250 Kg</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 탬1 끝 -->
						<!-- 탭2: 보관방법 -->
						<div class="tab-pane" id="nav-about1" role="tabpanel"
							aria-labelledby="nav-about-tab">
							<p>보관방법</p>
							<p>The generated Lorem Ipsum is therefore always free from
								repetition injected humour, or non-characteristic words etc.
								Susp endisse ultricies nisi vel quam suscipit</p>
							<p>Sabertooth peacock flounder; chain pickerel hatchetfish,
								pencilfish snailfish filefish Antarctic icefish goldeye
								aholehole trumpetfish pilot fish airbreathing catfish, electric
								ray sweeper.</p>
							<div class="px-2">
								<div class="row g-4">
									<div class="col-6">
										<div
											class="row bg-light align-items-center text-center justify-content-center py-2">
											<div class="col-6">
												<p class="mb-0">Weight</p>
											</div>
											<div class="col-6">
												<p class="mb-0">1 kg</p>
											</div>
										</div>
										<div
											class="row text-center align-items-center justify-content-center py-2">
											<div class="col-6">
												<p class="mb-0">Country of Origin</p>
											</div>
											<div class="col-6">
												<p class="mb-0">Agro Farm</p>
											</div>
										</div>
										<div
											class="row bg-light text-center align-items-center justify-content-center py-2">
											<div class="col-6">
												<p class="mb-0">Quality</p>
											</div>
											<div class="col-6">
												<p class="mb-0">Organic</p>
											</div>
										</div>
										<div
											class="row text-center align-items-center justify-content-center py-2">
											<div class="col-6">
												<p class="mb-0">Сheck</p>
											</div>
											<div class="col-6">
												<p class="mb-0">Healthy</p>
											</div>
										</div>
										<div
											class="row bg-light text-center align-items-center justify-content-center py-2">
											<div class="col-6">
												<p class="mb-0">Min Weight</p>
											</div>
											<div class="col-6">
												<p class="mb-0">250 Kg</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 탭2 끝 -->
						<!-- 탭3: 배송/교환/환불 -->
						<div class="tab-pane" id="nav-about2" role="tabpanel"
							aria-labelledby="nav-about-tab">
							<p>배송/교환/환불</p>
							<p>The generated Lorem Ipsum is therefore always free from
								repetition injected humour, or non-characteristic words etc.
								Susp endisse ultricies nisi vel quam suscipit</p>
							<p>Sabertooth peacock flounder; chain pickerel hatchetfish,
								pencilfish snailfish filefish Antarctic icefish goldeye
								aholehole trumpetfish pilot fish airbreathing catfish, electric
								ray sweeper.</p>
							<div class="px-2">
								<div class="row g-4">
									<div class="col-6">
										<div
											class="row bg-light align-items-center text-center justify-content-center py-2">
											<div class="col-6">
												<p class="mb-0">Weight</p>
											</div>
											<div class="col-6">
												<p class="mb-0">1 kg</p>
											</div>
										</div>
										<div
											class="row text-center align-items-center justify-content-center py-2">
											<div class="col-6">
												<p class="mb-0">Country of Origin</p>
											</div>
											<div class="col-6">
												<p class="mb-0">Agro Farm</p>
											</div>
										</div>
										<div
											class="row bg-light text-center align-items-center justify-content-center py-2">
											<div class="col-6">
												<p class="mb-0">Quality</p>
											</div>
											<div class="col-6">
												<p class="mb-0">Organic</p>
											</div>
										</div>
										<div
											class="row text-center align-items-center justify-content-center py-2">
											<div class="col-6">
												<p class="mb-0">Сheck</p>
											</div>
											<div class="col-6">
												<p class="mb-0">Healthy</p>
											</div>
										</div>
										<div
											class="row bg-light text-center align-items-center justify-content-center py-2">
											<div class="col-6">
												<p class="mb-0">Min Weight</p>
											</div>
											<div class="col-6">
												<p class="mb-0">250 Kg</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 탭3 끝 -->
						<!-- 탭4: 리뷰 -->
						<div class="tab-pane" id="nav-mission" role="tabpanel"
							aria-labelledby="nav-mission-tab">
							<div class="d-flex">
								<img src="img/avatar.jpg" class="img-fluid rounded-circle p-3"
									style="width: 100px; height: 100px;" alt="">
								<div class="">
									<p class="mb-2" style="font-size: 14px;">April 12, 2024</p>
									<div class="d-flex justify-content-between">
										<h5>Jason Smith</h5>
										<div class="d-flex mb-3">
											<i class="fa fa-star text-secondary"></i> <i
												class="fa fa-star text-secondary"></i> <i
												class="fa fa-star text-secondary"></i> <i
												class="fa fa-star text-secondary"></i> <i class="fa fa-star"></i>
										</div>
									</div>
									<p>The generated Lorem Ipsum is therefore always free from
										repetition injected humour, or non-characteristic words etc.
										Susp endisse ultricies nisi vel quam suscipit</p>
								</div>
							</div>
							<div class="d-flex">
								<img src="img/avatar.jpg" class="img-fluid rounded-circle p-3"
									style="width: 100px; height: 100px;" alt="">
								<div class="">
									<p class="mb-2" style="font-size: 14px;">April 12, 2024</p>
									<div class="d-flex justify-content-between">
										<h5>Sam Peters</h5>
										<div class="d-flex mb-3">
											<i class="fa fa-star text-secondary"></i> <i
												class="fa fa-star text-secondary"></i> <i
												class="fa fa-star text-secondary"></i> <i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
									</div>
									<p class="text-dark">The generated Lorem Ipsum is therefore
										always free from repetition injected humour, or
										non-characteristic words etc. Susp endisse ultricies nisi vel
										quam suscipit</p>
								</div>
							</div>
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
			</div>
		</div>
	</div>
</div>