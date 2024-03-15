<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- event Start -->
<div class="container-fluid py-5 mb-5 testimonial">
	<div class="testimonial-header text-center" style="width: 100%;">
		<h1 class="text-primary">
			EVENT
			</h4>
	</div>
	<div class="owl-carousel eventBanner-carousel">
		<div>
			<a href="event.do?event=1"> <img src="static/img/main/eventBanner1.jpg"
				style="width: 100%; height: auto;" alt="">
			</a>
		</div>
		<div>
			<a href="event.do?event=2"> <img src="static/img/main/eventBanner2.jpg"
				style="width: 100%; height: auto;" alt="">
			</a>
		</div>
		<div>
			<a href="event.do?event=3"> <img src="static/img/main/eventBanner3.jpg"
				style="width: 100%; height: auto;" alt="">
			</a>
		</div>
		<div>
			<a href="event.do?event=4"> <img src="static/img/main/eventBanner4.jpg"
				style="width: 100%; height: auto;" alt="">
			</a>
		</div>
		<div>
			<a href="event.do?event=5"> <img src="static/img/main/eventBanner5.jpg"
				style="width: 100%; height: auto;" alt="">
			</a>
		</div>
	</div>
</div>
<!-- event End -->
<!-- Hero Start -->
<div class="container-fluid py-5 mb-5 hero-header">
	<div class="container py-5">
		<div class="row g-5 align-items-center">
			<div class="col-md-12 col-lg-7">
				<h4 class="mb-3 text-secondary">식단을 위한 최고의 선택!</h4>
				<h1 class="mb-5 display-3 text-primary">닭가슴살,  닭다리살,<br>
					소시지, 도시락까지</h1>
				<div class="position-relative mx-auto">
					<input
						class="form-control border-2 border-secondary w-75 py-3 px-4 rounded-pill"
						type="number" placeholder="검색어 입력">
					<button type="submit"
						class="btn btn-primary border-2 border-secondary py-3 px-4 position-absolute rounded-pill text-white h-100"
						style="top: 0; right: 25%;">검색</button>
				</div>
			</div>
			<div class="col-md-12 col-lg-5">
				<div id="carouselId" class="carousel slide position-relative"
					data-bs-ride="carousel">
					<div class="carousel-inner" role="listbox">
						<div class="carousel-item active rounded">
							<img src="static/img/hero-img-1.png"width="600px" height="400px"
								class="img-fluid w-100 h-100 bg-secondary rounded"
								alt="First slide"> <a href="#"
								class="btn px-4 py-2 text-white rounded">닭가슴살</a>
						</div>
						<div class="carousel-item rounded">
							<img src="static/img/hero-img-2.jpg" 
								class="img-fluid w-100 h-100 rounded" alt="Second slide">
							<a href="#" class="btn px-4 py-2 text-white rounded">닭다리살</a>
						</div>
						<div class="carousel-item rounded">
							<img src="static/img/hero-img-3.jpg"
								class="img-fluid w-100 h-100 rounded" alt="Second slide">
							<a href="#" class="btn px-4 py-2 text-white rounded">소시지</a>
						</div>
						<div class="carousel-item rounded">
							<img src="static/img/hero-img-4.jpg"
								class="img-fluid w-100 h-100 rounded" alt="Second slide">
							<a href="#" class="btn px-4 py-2 text-white rounded">도시락</a>
						</div>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselId" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselId" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Hero End -->


<!-- Bestseller Start-->
<div class="container-fluid fruite py-5">
	<div class="container py-5 p-5 rounded bg-light">
		<div class="tab-class text-center">
			<div class="row g-4">
				<div class="col-lg-4 text-start">
					<h1>베스트</h1>
				</div>
				<div style="text-align: right;">
						<button type="button" href="#" class="btn btn-outline-secondary">
							<span>view more</span>
						</button>
				</div>
			</div>
					<div class="row g-4" style="margin-top: 5px;"">
						<div class="col-lg-12">
							<div class="row g-4">
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">
											<img src="static/img/fruite-item-5.jpg"
												class="img-fluid w-100 rounded-top" alt="">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>
										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>Grapes</h4>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit sed do eiusmod te incididunt</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">
											<img src="static/img/fruite-item-5.jpg"
												class="img-fluid w-100 rounded-top" alt="">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>
										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>Grapes</h4>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit sed do eiusmod te incididunt</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">
											<img src="static/img/fruite-item-2.jpg"
												class="img-fluid w-100 rounded-top" alt="">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>
										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>Raspberries</h4>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit sed do eiusmod te incididunt</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">
											<img src="static/img/fruite-item-4.jpg"
												class="img-fluid w-100 rounded-top" alt="">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>
										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>Apricots</h4>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit sed do eiusmod te incididunt</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
								
							</div>
						</div>
					</div>
				</div>
		</div>
	</div>
</div>
<!-- Bestseller End-->

<!-- New product Start-->
<div class="container-fluid fruite py-5">
	<div class="container py-5 fruite p-5 rounded" style="background-color:rgb(236, 238, 144);">
		<div class="tab-class text-center">
			<div class="row g-4">
				<div class="col-lg-4 text-start">
					<h1>신상품</h1>
				</div>
				<div style="text-align: right;">
					<button type="button" href="#" class="btn btn-outline-primary">
						<span>view more</span>
					</button>
				</div>
			</div>
					<div class="row g-4" style="margin-top: 5px;">
						<div class="col-lg-12">
							<div class="row g-4">
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">
											<img src="static/img/fruite-item-5.jpg"
												class="img-fluid w-100 rounded-top" alt="">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>
										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>Grapes</h4>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit sed do eiusmod te incididunt</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">
											<img src="static/img/fruite-item-5.jpg"
												class="img-fluid w-100 rounded-top" alt="">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>
										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>Grapes</h4>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit sed do eiusmod te incididunt</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">
											<img src="static/img/fruite-item-2.jpg"
												class="img-fluid w-100 rounded-top" alt="">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>
										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>Raspberries</h4>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit sed do eiusmod te incididunt</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">
											<img src="static/img/fruite-item-4.jpg"
												class="img-fluid w-100 rounded-top" alt="">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>
										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>Apricots</h4>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit sed do eiusmod te incididunt</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
								
							</div>
						</div>
					</div>
				</div>
		</div>
	</div>
</div>
<!-- New Product End-->

<!-- 1 pack Start-->
<div class="container-fluid fruite py-5">
	<div class="container py-5 fruite p-5 rounded bg-light">
		<div class="tab-class text-center">
			<div class="row g-4">
				<div class="col-lg-4 text-start">
					<h1>1팩담기</h1>
				</div>
				<div style="text-align: right;">
					<button type="button" href="#" class="btn btn-outline-secondary">
						<span>view more</span>
					</button>
				</div>
			</div>
					<div class="row g-4" style="margin-top: 5px;">
						<div class="col-lg-12">
							<div class="row g-4">
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">
											<img src="static/img/fruite-item-5.jpg"
												class="img-fluid w-100 rounded-top" alt="">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>
										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>Grapes</h4>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit sed do eiusmod te incididunt</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">
											<img src="static/img/fruite-item-5.jpg"
												class="img-fluid w-100 rounded-top" alt="">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>
										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>Grapes</h4>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit sed do eiusmod te incididunt</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">
											<img src="static/img/fruite-item-2.jpg"
												class="img-fluid w-100 rounded-top" alt="">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>
										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>Raspberries</h4>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit sed do eiusmod te incididunt</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="rounded position-relative fruite-item">
										<div class="fruite-img">
											<img src="static/img/fruite-item-4.jpg"
												class="img-fluid w-100 rounded-top" alt="">
										</div>
										<div
											class="text-white bg-secondary px-3 py-1 rounded position-absolute"
											style="top: 10px; left: 10px;">Fruits</div>
										<div
											class="p-4 border border-secondary border-top-0 rounded-bottom">
											<h4>Apricots</h4>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing
												elit sed do eiusmod te incididunt</p>
											<div class="d-flex justify-content-between flex-lg-wrap">
												<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
												<a href="#"
													class="btn border border-secondary rounded-pill px-3 text-primary"><i
													class="fa fa-shopping-bag me-2 text-primary"></i> Add to
													cart</a>
											</div>
										</div>
									</div>
								</div>
								
							</div>
						</div>
					</div>
				</div>
		</div>
	</div>
</div>
<!-- 1 pack End-->



