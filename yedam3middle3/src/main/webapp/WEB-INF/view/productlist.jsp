<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    
        <!-- Single Page Header start -->
        <div class="container-fluid page-header py-5">
            <h1 class="text-center text-white display-6">전체 상품 조회</h1>
            <ol class="breadcrumb justify-content-center mb-0">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Pages</a></li>
                <li class="breadcrumb-item active text-white">Shop</li>
            </ol>
        </div>
        <!-- Single Page Header End -->


        <!-- Fruits Shop Start-->
        <div class="container-fluid fruite py-5">
            <div class="container py-5">
                <h1 class="mb-4">전체 조회</h1>
                <div class="row g-4">
                    <div class="col-lg-12">
                        <div class="row g-4">
                            <div class="col-xl-3">
                                <div class="input-group w-100 mx-auto d-flex">
                                    <input type="search" class="form-control p-3" placeholder="keywords" aria-describedby="search-icon-1">
                                    <span id="search-icon-1" class="input-group-text p-3"><i class="fa fa-search"></i></span>
                                </div>
                            </div>
                            <div class="col-6"></div>
                            <div class="col-xl-3">
                                <div class="bg-light ps-3 py-3 rounded d-flex justify-content-between mb-4">
                                    <label for="fruits">Default Sorting:</label>
                                    <select id="fruits" name="fruitlist" class="border-0 form-select-sm bg-light me-3" form="fruitform">
                                        <option value="volvo">Nothing</option>
                                        <option value="saab">Popularity</option>
                                        <option value="opel">Organic</option>
                                        <option value="audi">Fantastic</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row g-4">
                            <div class="col-lg-3">
                                <div class="row g-4">
                                    <div class="col-lg-12">
                                        <div class="mb-3">
                                            <h4>Categories</h4>
                                            <ul class="list-unstyled fruite-categorie">
                                                <li>
                                                    <div class="d-flex justify-content-between fruite-name">
                                                        <a href="#"><i class="fas fa-apple-alt me-2"></i>Apples</a>
                                                        <span>(3)</span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="d-flex justify-content-between fruite-name">
                                                        <a href="#"><i class="fas fa-apple-alt me-2"></i>Oranges</a>
                                                        <span>(5)</span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="d-flex justify-content-between fruite-name">
                                                        <a href="#"><i class="fas fa-apple-alt me-2"></i>Strawbery</a>
                                                        <span>(2)</span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="d-flex justify-content-between fruite-name">
                                                        <a href="#"><i class="fas fa-apple-alt me-2"></i>Banana</a>
                                                        <span>(8)</span>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="d-flex justify-content-between fruite-name">
                                                        <a href="#"><i class="fas fa-apple-alt me-2"></i>Pumpkin</a>
                                                        <span>(5)</span>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="mb-3">
                                            <h4 class="mb-2">Price</h4>
                                            <input type="range" class="form-range w-100" id="rangeInput" name="rangeInput" min="0" max="500" value="0" oninput="amount.value=rangeInput.value">
                                            <output id="amount" name="amount" min-velue="0" max-value="500" for="rangeInput">0</output>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="mb-3">
                                            <h4>Additional</h4>
                                            <div class="mb-2">
                                                <input type="radio" class="me-2" id="Categories-1" name="Categories-1" value="Beverages">
                                                <label for="Categories-1"> Organic</label>
                                            </div>
                                            <div class="mb-2">
                                                <input type="radio" class="me-2" id="Categories-2" name="Categories-1" value="Beverages">
                                                <label for="Categories-2"> Fresh</label>
                                            </div>
                                            <div class="mb-2">
                                                <input type="radio" class="me-2" id="Categories-3" name="Categories-1" value="Beverages">
                                                <label for="Categories-3"> Sales</label>
                                            </div>
                                            <div class="mb-2">
                                                <input type="radio" class="me-2" id="Categories-4" name="Categories-1" value="Beverages">
                                                <label for="Categories-4"> Discount</label>
                                            </div>
                                            <div class="mb-2">
                                                <input type="radio" class="me-2" id="Categories-5" name="Categories-1" value="Beverages">
                                                <label for="Categories-5"> Expired</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <h4 class="mb-3">Featured products</h4>
                                        <div class="d-flex align-items-center justify-content-start">
                                            <div class="rounded me-4" style="width: 100px; height: 100px;">
                                                <img src="static/img/featur-1.jpg" class="img-fluid rounded" alt="">
                                            </div>
                                            <div>
                                                <h6 class="mb-2">Big Banana</h6>
                                                <div class="d-flex mb-2">
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="d-flex mb-2">
                                                    <h5 class="fw-bold me-2">2.99 $</h5>
                                                    <h5 class="text-danger text-decoration-line-through">4.11 $</h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="d-flex align-items-center justify-content-start">
                                            <div class="rounded me-4" style="width: 100px; height: 100px;">
                                                <img src="static/img/featur-2.jpg" class="img-fluid rounded" alt="">
                                            </div>
                                            <div>
                                                <h6 class="mb-2">Big Banana</h6>
                                                <div class="d-flex mb-2">
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="d-flex mb-2">
                                                    <h5 class="fw-bold me-2">2.99 $</h5>
                                                    <h5 class="text-danger text-decoration-line-through">4.11 $</h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="d-flex align-items-center justify-content-start">
                                            <div class="rounded me-4" style="width: 100px; height: 100px;">
                                                <img src="static/img/featur-3.jpg" class="img-fluid rounded" alt="">
                                            </div>
                                            <div>
                                                <h6 class="mb-2">Big Banana</h6>
                                                <div class="d-flex mb-2">
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="d-flex mb-2">
                                                    <h5 class="fw-bold me-2">2.99 $</h5>
                                                    <h5 class="text-danger text-decoration-line-through">4.11 $</h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="d-flex justify-content-center my-4">
                                            <a href="#" class="btn border border-secondary px-4 py-3 rounded-pill text-primary w-100">Vew More</a>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="position-relative">
                                            <img src="static/img/banner-fruits.jpg" class="img-fluid w-100 rounded" alt="">
                                            <div class="position-absolute" style="top: 50%; right: 10px; transform: translateY(-50%);">
                                                <h3 class="text-secondary fw-bold">Fresh <br> Fruits <br> Banner</h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-9">
                                <div class="row g-4 justify-content-center product-item">
                                
                               <script>
                               	fetch('plist.do')
                               	.then((resolve) => resolve.json())
								.then((result) => {
									result.forEach((item,idx) => {
										console.log(item);
										$('.product-item').append(	
										$('<div class="col-md-6 col-lg-6 col-xl-4"></div>').append(
												$('<div class="rounded position-relative fruite-item"></div>').append($('<div class="fruite-img">').append(
														$('<img src="static/img/'+item.pimg+'" class="img-fluid w-100 rounded-top" alt="">'))
														, $('<div class="text-white bg-secondary px-3 py-1 rounded position-absolute" style="top: 10px; left: 10px;">').text(item.ptype)
														,$('<div class="p-4 border border-secondary border-top-0 rounded-bottom"></div>').append(
																$('<h4 />').text(item.prodBrand),$('<p />').text(item.prodName),$('<div class="d-flex justify-content-between flex-lg-wrap">').append(
																		$('<p />').text(item.prodPrice + '원'),$('<a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i>카트에 담기</a>')))
														)
													)
												)										
									})
								})
                               </script>
                                <!-- 
                                    <div class="col-md-6 col-lg-6 col-xl-4">
                                        <div class="rounded position-relative fruite-item">
                                            <div class="fruite-img">
                                                <img src="static/img/bal-chin-griled-crab.jpg" class="img-fluid w-100 rounded-top" alt="">
                                            </div>
                                            <div class="text-white bg-secondary px-3 py-1 rounded position-absolute" style="top: 10px; left: 10px;">Fruits</div>
                                            <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                <h4>Grapes</h4>
                                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te incididunt</p>
                                                <div class="d-flex justify-content-between flex-lg-wrap">
                                                    <p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
                                                    <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                 -->    
<!-- 페이징구간 -->
                                </div>
                                    <div class="col-12">
                                        <div class="pagination d-flex justify-content-center mt-5">
                                            <a href="#" class="rounded">&laquo;</a>
                                            <a href="#" class="active rounded">1</a>
                                            <a href="#" class="rounded">2</a>
                                            <a href="#" class="rounded">3</a>
                                            <a href="#" class="rounded">4</a>
                                            <a href="#" class="rounded">5</a>
                                            <a href="#" class="rounded">6</a>
                                            <a href="#" class="rounded">&raquo;</a>
                                        </div>
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Fruits Shop End-->