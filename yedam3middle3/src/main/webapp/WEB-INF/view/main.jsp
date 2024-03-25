<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!-- event Start -->
		<div class="container-fluid py-5 mb-5 testimonial">
			<div class="testimonial-header text-center" style="width: 100%;">
				<p class="text-primary" style="font-size: 2.5rem;">
					EVENT
				</p>
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
			</div>
		</div>
		<!-- event End -->
		<!-- Hero Start -->
		<div class="container-fluid py-5 mb-5 hero-header">
			<div class="container py-5">
				<div class="row g-5 align-items-center">
					<div class="col-md-12 col-lg-7">
						<h4 class="mb-3 text-secondary">식단을 위한 최고의 선택!</h4>
						<h1 class="mb-5 display-3 text-primary">닭가슴살, 닭다리살 & 소시지, 도시락까지</h1>
						<div id="input" class="position-relative mx-auto">
							<input class="form-control border-2 border-secondary w-75 py-3 px-4 rounded-pill"
								type="text" placeholder="검색어 입력">
							<button type="submit"
								class="btn btn-primary border-2 border-secondary py-3 px-4 position-absolute rounded-pill text-white h-100"
								style="top: 0; right: 25%;">검색</button>
						</div>
					</div>
					<div class="col-md-12 col-lg-5">
						<div id="carouselId" class="carousel slide position-relative" data-bs-ride="carousel">
							<div class="carousel-inner" role="listbox">
								<div class="carousel-item active rounded">
									<img src="static/img/hero-img-1.png" width="600px" height="400px"
										class="img-fluid w-100 h-100 bg-secondary rounded" alt="First slide"> <a
										href="mainsearch.do?type=닭가슴살&pagetype=all"
										class="btn px-4 py-2 text-white rounded">닭가슴살</a>
								</div>
								<div class="carousel-item rounded">
									<img src="static/img/hero-img-2.jpg" class="img-fluid w-100 h-100 rounded"
										alt="Second slide">
									<a href="mainsearch.do?type=스테이크/큐브&pagetype=all"
										class="btn px-4 py-2 text-white rounded">스테이크</a>
								</div>
								<div class="carousel-item rounded">
									<img src="static/img/hero-img-3.jpg" class="img-fluid w-100 h-100 rounded"
										alt="Second slide">
									<a href="mainsearch.do?type=소시지&pagetype=all"
										class="btn px-4 py-2 text-white rounded">소시지</a>
								</div>
								<div class="carousel-item rounded">
									<img src="static/img/hero-img-4.jpg" class="img-fluid w-100 h-100 rounded"
										alt="Second slide">
									<a href="mainsearch.do?type=라이스&pagetype=all"
										class="btn px-4 py-2 text-white rounded">라이스</a>
								</div>
							</div>
							<button class="carousel-control-prev" type="button" data-bs-target="#carouselId"
								data-bs-slide="prev">
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Previous</span>
							</button>
							<button class="carousel-control-next" type="button" data-bs-target="#carouselId"
								data-bs-slide="next">
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
				<div id="best" class="tab-class text-center">
					<div class="row g-4">
						<div class="col-lg-4 text-start">
							<h1>베스트</h1>
						</div>
						<div style="text-align: right; margin: 0;">
							<a href="productList.do?pagetype=best">
								<button type="button" href="productList.do?pagetype=best"
									class="btn btn-outline-secondary">
									<span>view more</span>
								</button>
							</a>
						</div>
					</div>
					<div class="row g-4" style="margin-top: 5px;">
						<div class="col-lg-12">
							<div id="list" class="row g-4">
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
				<div id="new" class="tab-class text-center">
					<div class="row g-4">
						<div class="col-lg-4 text-start">
							<h1>신상품</h1>
						</div>
						<div style="text-align: right; margin:0;">
							<a href="mainsearch.do?pagetype=new">
								<button type="button" class="btn btn-outline-primary">
									<span>view more</span>
								</button>
							</a>
						</div>
					</div>
					<div class="row g-4" style="margin-top: 5px;">
						<div class="col-lg-12">
							<div id="list" class="row g-4">
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
				<div id="pack" class="tab-class text-center">
					<div class="row g-4">
						<div class="col-lg-4 text-start">
							<h1>1팩담기</h1>
						</div>
						<div style="text-align: right;margin: 0;">
							<a href="productList.do?pagetype=single">
								<button type="button" class="btn btn-outline-secondary">
									<span>view more</span>
								</button>
							</a>
						</div>
					</div>
					<div class="row g-4" style="margin-top: 5px;">
						<div class="col-lg-12">
							<div id="list" class="row g-4">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script> -->
		<script>
			let listtype = "prod_comp = 'single'"
			let type = [];
			type.push('닭가슴살', '스테이크/큐브', '소시지', '라이스', '만두/간식');
			let brand = [];
			brand.push('허닭', '프레시지', '발재반점', '포르미', '아침몰', '닭다리살', '양념육', '양식');
			let price = 70000;
			let keyword = '';
			let ppage = 1;
			let sort = "prod_date DESC";
			let listcnt = 0;
			function showlist2(brand, type, price, keyword, ppage = 1, sort, listtype, pos) {
				$('.product-item').html('');
				$.ajax({
					url: 'conlist.do',
					//url: 'plist.do',
					method: 'post',
					traditional: true,
					data: { brand: brand, type: type, price: price, keyword: keyword, ppage: ppage, sort: sort, listtype: listtype },
					dataType: 'json',
					success: function (result) {
						console.log(result);

						result.forEach((item, idx) => {
							if (listcnt >= 4) {
								return;
							}
							console.log(listcnt);
							listcnt++
							let realPrice = 0;
							let salePer = '';
							let soldout = '';
							let soldoutClass = '';
							let soldCk = '';
							let soldDiv = {};
							if (item.prodSale != 0) {
								realPrice = item.prodPrice - (Math.round(item.prodPrice * item.prodSale / 100) * 100);
								salePer = Math.ceil(item.prodSale * 100) + '%';
							} else {
								realPrice = item.prodPrice
							}
							if (item.prodStock == 0) {
								soldoutClass = 'class="text-white bg-danger px-3 py-1 rounded position-absolute" style="top: 30%; left: 33%;"';
								soldout = 'Sold Out';
								soldCk = 'disalbed';
								soldDiv = {
									'position': 'absolute',
									'top': '0',
									'left': '0',
									'width': '100%',
									'height': '100%',
									'border-radius': '10px',
									'backgroundColor': 'rgba(0, 0, 0, 0.2)',
									'zIndex': '9'
								};
							}
							if (item.prodSale != 0) {
								realPrice = item.prodPrice - (Math.round(item.prodPrice * item.prodSale / 100) * 100);
								salePer = Math.ceil(item.prodSale * 100) + '%';
							} else {
								realPrice = item.prodPrice
							}
							$('#' + pos + ' #list').append(
								$('<div class="col-md-6 col-lg-6 col-xl-3"></div>').append($('<a href="detailPage.do?prodNo=' + item.prodNo + '"></a>').append(
									$('<div class="rounded position-relative fruite-item"></div>').append($('<div class="fruite-img">')
										.append(
											$('<img src="static/img/' + item.prodImg + '" class="img-fluid w-100 rounded-top" alt="">'))
										, $('<div class="text-white bg-secondary px-3 py-1 rounded position-absolute" style="top: 10px; left: 10px;">').text(item.prodType)
										, $('<div class="p-4 border border-secondary border-top-0 rounded-bottom"></div>').append(
											$('<p />').text('[' + item.prodBrand + ']' + item.prodName).css({ 'height': '48px', 'color': 'black' })
											, $('<div class="d-flex justify-content-between flex-lg-wrap">').append(
												$('<dl class="d-flex justify-content-between flex-lg-wrap" />').append(
													$('<dt />').append($('<h3 />').text(salePer).css({ 'color': 'red' }).css({ 'margin': '8px 0px' }))
													, $('<dd />').append($('<span />').append($('<del />').text(item.prodPrice + '원')).css({ 'margin': '0px', 'color': 'grey' })
														, $('<span />').append($('<h5 />').text(realPrice + '원').css({ 'margin': '0px' }))).css({ 'margin-left': '8px' })
												).css({ 'margin': '0px' })
												, $('<a href="cart.do?prodNo=' + item.prodNo + '" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag"></i></a>').css({ 'height': '48px', 'padding-top': '9px' })))
									)
								))
							)
							if (item.prodStock == 0) {
							$('.product' + item.prodNo + ' a').on("click", function (e) {
								e.preventDefault();
								alert("매진된 상품입니다.");
							})
						}


						})
					},
					error: function (err) {
						console.log('error=> ' + err);
					}
				});
			}

			function showlist(order, pos) {
				console.log(order)
				$.ajax({
					url: 'mainProducts.do',
					method: 'post',
					data: { order: order },
					dataType: 'json'
				}).done(function (result) {
					console.log(result);
					result.forEach((item, idx) => {
						let realPrice = 0;
						let salePer = '';
						let soldout = '';
						let soldoutClass = '';
						let soldCk = '';
						let soldDiv = {};
						if (item.prodSale != 0) {
							realPrice = item.prodPrice - (Math.round(item.prodPrice * item.prodSale / 100) * 100);
							salePer = Math.ceil(item.prodSale * 100) + '%';
						} else {
							realPrice = item.prodPrice
						}
						if (item.prodStock == 0) {
							soldoutClass = 'class="text-white bg-danger px-3 py-1 rounded position-absolute" style="top: 30%; left: 33%;"';
							soldout = 'Sold Out';
							soldCk = 'disalbed';
							soldDiv = {
								'position': 'absolute',
								'top': '0',
								'left': '0',
								'width': '100%',
								'height': '100%',
								'border-radius': '10px',
								'backgroundColor': 'rgba(0, 0, 0, 0.2)',
								'zIndex': '9'
							};
						}
						if (item.prodSale != 0) {
							realPrice = item.prodPrice - (Math.round(item.prodPrice * item.prodSale / 100) * 100);
							salePer = Math.ceil(item.prodSale * 100) + '%';
						} else {
							realPrice = item.prodPrice
						}
						$('#' + pos + ' #list').append(
							$('<div class="col-md-6 col-lg-6 col-xl-3"></div>').append($('<a href="detailPage.do?prodNo=' + item.prodNo + '"></a>').append(
								$('<div class="rounded position-relative fruite-item"></div>').append($('<div class="fruite-img">')
									.append(
										$('<img src="static/img/' + item.prodImg + '" class="img-fluid w-100 rounded-top" alt="">'))
									, $('<div class="text-white bg-secondary px-3 py-1 rounded position-absolute" style="top: 10px; left: 10px;">').text(item.prodType)
									, $('<div class="p-4 border border-secondary border-top-0 rounded-bottom"></div>').append(
										$('<p />').text('[' + item.prodBrand + ']' + item.prodName).css({ 'height': '48px', 'color': 'black' })
										, $('<div class="d-flex justify-content-between flex-lg-wrap">').append(
											$('<dl class="d-flex justify-content-between flex-lg-wrap" />').append(
												$('<dt />').append($('<h3 />').text(salePer).css({ 'color': 'red' }).css({ 'margin': '8px 0px' }))
												, $('<dd />').append($('<span />').append($('<del />').text(item.prodPrice + '원')).css({ 'margin': '0px', 'color': 'grey' })
													, $('<span />').append($('<h5 />').text(realPrice + '원').css({ 'margin': '0px' }))).css({ 'margin-left': '8px' })
											).css({ 'margin': '0px' })
											, $('<a href="cart.do?prodNo=' + item.prodNo + '" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag"></i></a>').css({ 'height': '48px', 'padding-top': '9px' })))
								)
							))
						)
						if (item.prodStock == 0) {
							$('.product' + item.prodNo + ' a').on("click", function (e) {
								e.preventDefault();
								alert("매진된 상품입니다.");
							})
						}

					})
				}).fail(function (err) {
					console.log(err);
				});
			}


			$('#input').on('change', function () {

				location.href = 'mainsearch.do?pagetype=all&search=' + $('.hero-header input').val()
			}
			)
			// $('div .input-group').on('change', function () {

			// 	location.href = 'mainsearch.do?pagetype=all&search=' + $('div .input-group input').val()
			// }
			// )

			showlist2(brand, type, price, keyword, ppage, sort, listtype, 'pack');
			showlist('prod_ordcnt', 'best');
			showlist('prod_date', 'new');
		</script>
		<!-- 1 pack End-->