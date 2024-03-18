<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    
        <!-- Single Page Header start -->
        <div class="container-fluid page-header py-5">
            <h1 class="text-center text-white display-6">전체 상품 조회</h1>
            <!-- <ol class="breadcrumb justify-content-center mb-0">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Pages</a></li>
                <li class="breadcrumb-item active text-white">Shop</li>
            </ol> -->
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
                                    <input type="search" class="form-control p-3 searchCk" placeholder="keywords" aria-describedby="search-icon-1">
                                    <span id="search-icon-1" class="input-group-text p-3 searchBtn"><i class="fa fa-search"></i></span>
                                </div>
                            </div>
                            <div class="col-6 listhead"></div>
                            <div class="col-xl-3">
                                <!-- <div class="bg-light ps-3 py-3 rounded d-flex justify-content-between mb-4">
                                    <label for="fruits">Default Sorting:</label>
                                    <select id="fruits" name="fruitlist" class="border-0 form-select-sm bg-light me-3" form="fruitform">
                                        <option value="volvo">Nothing</option>
                                        <option value="saab">Popularity</option>
                                        <option value="opel">Organic</option>
                                        <option value="audi">Fantastic</option>
                                    </select>
                                </div> -->
                            </div>
                        </div>
                        <div class="row g-4">
                            <div class="col-lg-3">
                                <div class="row g-4">
                                    
                                    <div class="col-lg-12">
                                        <div class="mb-3 priceCk">
                                            <h4 class="mb-2">가격</h4>
                                            <input type="range" class="form-range w-100" id="rangeInput" name="rangeInput" min="1000" max="10000" step="1000" value="10000" oninput="amount.value=rangeInput.value">
                                            <output id="amount" name="amount" min-value="1000" max-value="10000" for="rangeInput">10000</output>원 이하
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="mb-3 brandCk">
                                            <h4>브랜드</h4>
                                            <div class="mb-2">
                                                <input type="radio" class="me-2" id="Categories-1" name="Categories-1" value="Beverages" checked = "checked">
                                                <label for="Categories-1">전체</label>
                                            </div>
                                            <div class="mb-2">
                                                <input type="radio" class="me-2" id="Categories-2" name="Categories-1" value="Beverages">
                                                <label for="Categories-2">허닭</label>
                                            </div>
                                            <div class="mb-2">
                                                <input type="radio" class="me-2" id="Categories-3" name="Categories-1" value="Beverages">
                                                <label for="Categories-3">프레시지</label>
                                            </div>
                                            <div class="mb-2">
                                                <input type="radio" class="me-2" id="Categories-4" name="Categories-1" value="Beverages">
                                                <label for="Categories-4">발재반점</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="mb-3 typeCk">
                                            <h4>종류</h4>
                                            <div class="mb-2">
                                                <input type="radio" class="me-2" id="Categories-1" name="Categories-2" value="Beverages" checked = "checked">
                                                <label for="Categories-1">전체</label>
                                            </div>
                                            <div class="mb-2">
                                                <input type="radio" class="me-2" id="Categories-2" name="Categories-2" value="Beverages">
                                                <label for="Categories-2">닭가슴살</label>
                                            </div>
                                            <div class="mb-2">
                                                <input type="radio" class="me-2" id="Categories-3" name="Categories-2" value="Beverages">
                                                <label for="Categories-3">스테이크/큐브</label>
                                            </div>
                                            <div class="mb-2">
                                                <input type="radio" class="me-2" id="Categories-4" name="Categories-2" value="Beverages">
                                                <label for="Categories-3">소시지</label>
                                            </div>
                                            <div class="mb-2">
                                                <input type="radio" class="me-2" id="Categories-5" name="Categories-2" value="Beverages">
                                                <label for="Categories-4">라이스</label>
                                            </div>
                                            <div class="mb-2">
                                                <input type="radio" class="me-2" id="Categories-6" name="Categories-2" value="Beverages">
                                                <label for="Categories-4">만두/간식</label>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="col-lg-12">
                                        <div class="position-relative eventPg">
                                            <!-- <img src="static/img/banner-fruits.jpg" class="img-fluid w-100 rounded" alt=""> -->
                                            <div class="position-absolute" style="top: 50%; right: 10px; transform: translateY(-50%);">
                                                <!-- <h3 class="text-secondary fw-bold">Fresh <br> Fruits <br> Banner</h3> -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-9">
                                <div class="row g-4 justify-content-center product-item">
                                
                               <script>
                                let rndEvnt = Math.floor(Math.random() * (5)) + 1; //1~5
                                //const val = encodeURI('[발재반점]중화식 구운 주먹밥 게살맛')
                                $('.eventPg').append($('<a href="event.do?event='+rndEvnt+'">').append($('<img src="static/img/main/eventIcon'+rndEvnt+'.jpg" class="img-fluid w-100 rounded" alt="">')))
                               
                                let cond = "prod_brand"; //=>prod_brand='프레시지'
                                let param = "'허닭'";
                                let brand = null;
                                let type = null;
                                let price = 10000;
                                let keyword = '';
                                $('.searchBtn').on('click', function (e) {
                                	keyword = "%"+$('.searchCk').val()+"%";
                                	console.log(keyword);
                                	showlist(brand, type, price, keyword);
								})
                                $('.brandCk').on('change', 'input', function (e) {
									console.log($(this).next().text());
									//param = "'"+$(this).next().text()+"'"
									param = $(this).next().text();
									brand = "'"+$(this).next().text()+"'";
									//console.log(param == "전체");
									//console.log(param);
									if(param == "전체"){
										brand = 'prod_brand';
									}
										console.log(brand);
									showlist(brand, type, price, keyword);
								})
								
								$('.typeCk').on('change', 'input', function (e) {
									console.log($(this).next().text());
									param = $(this).next().text();
									type = "'"+$(this).next().text()+"'";
									if(param == "전체"){
										type = 'prod_type';
									}
										console.log(type);
									showlist(brand, type, price, keyword);
								})
								
								$('.priceCk').on('change', 'input', function (e) {
									console.log($(this).next().text());
									price = $(this).next().text();
									console.log(price);
									
									showlist(brand, type, price, keyword);
									
								})
                               
                                function showlist(brand, type, price) {
                                	
                                	$('.product-item').html('');
                                let sql = 'AND prod_type = "a"'
                                $.ajax({
						            url: 'conlist.do',
						            //url: 'plist.do',
						            method: 'post',
						            data: {brand: brand, type: type, price: price, keyword: keyword}, 
						            dataType: 'json',
						            success: function (result) { 
						            	console.log(result);
						            	if(result.length == 0){
						            		$('.listhead').text("조회된 상품이 없습니다.");
						            	}else{
							            	$('.listhead').text("상품: "+result.length+"개");
						            	}
						            	result.forEach((item,idx) => {
						            		
											let realPrice = 0;
											let salePer = '';
											if(item.prodSale != 0){
												realPrice = item.prodPrice - (Math.round(item.prodPrice*item.prodSale/100)*100);
												salePer = Math.ceil(item.prodSale*100) + '%';
											}else{
												realPrice = item.prodPrice
											}
											$('.product-item').append(	
											$('<div class="col-md-6 col-lg-6 col-xl-4"></div>').append(
													$('<div class="rounded position-relative fruite-item"></div>').append($('<div class="fruite-img">')
															.append(
															$('<img src="static/img/'+item.prodImg+'" class="img-fluid w-100 rounded-top" alt="">'))
															,$('<div class="text-white bg-secondary px-3 py-1 rounded position-absolute" style="top: 10px; left: 10px;">').text(item.prodType)
															,$('<div class="p-4 border border-secondary border-top-0 rounded-bottom"></div>').append(
																	/* $('<h4 />').text(item.prodBrand) */$('<p />').text('['+item.prodBrand+']'+item.prodName).css({'height':'48px'})
																	,$('<div class="d-flex justify-content-between flex-lg-wrap">').append(
																			$('<dl class="d-flex justify-content-between flex-lg-wrap" />').append(
																					$('<dt />').append($('<h3 />').text(salePer).css({'color': 'red'}).css({'margin': '8px 0px'}))
																					,$('<dd />').append($('<span />').append($('<del />').text(item.prodPrice + '원')).css({'margin': '0px'})
																							,$('<span />').append($('<h5 />').text(realPrice + '원').css({'margin': '0px'}))).css({'margin-left': '8px'})
																					).css({'margin': '0px'})
																			,$('<a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag"></i></a>').css({'height':'48px','padding-top':'9px'})))
															)
														)
													)
						            		
										})
						            },
						            error: function (err) { 
						                console.log('error=> ' + err);
						            }
						        });
                                }
                                showlist(null, null, price, keyword);
                               	
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