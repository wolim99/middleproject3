<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    
        <!-- Single Page Header start -->
        <div class="container-fluid page-header py-5">
            <h1 class="text-center text-white display-6">전체 상품</h1>
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
                                    <input type="text" class="form-control p-3 searchCk" placeholder="keywords" aria-describedby="search-icon-1">
                                    <button id="search-icon-1" class="input-group-text p-3 searchBtn"><i class="fa fa-search"></i></button>
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
                                        <div class="mb-3 priceCk" style="padding-top: 15px">
                                            <h4 class="mb-2">가격</h4>
                                            <input type="range" class="form-range w-100" id="rangeInput" name="rangeInput" min="1000" max="70000" step="1000" value="70000" oninput="amount.value=rangeInput.value">
                                            <output id="amount" name="amount" min-value="1000" max-value="70000" for="rangeInput">70,000</output>원 이하
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="mb-3 brandCk">
                                            <h4>브랜드</h4>
                                            <div class="mb-2">
                                                <input type="checkbox" class="me-2 brandall" id="brand-1" name="prodBrandall" value="all">
                                                <label for="brand-1">전체</label>
                                            </div>
                                            <div class="mb-2">
                                                <input type="checkbox" class="me-2 brandbox" id="brand-2" name="prodBrand" value="heodak">
                                                <label for="brand-2">허닭</label>
                                            </div>
                                            <div class="mb-2">
                                                <input type="checkbox" class="me-2 brandbox" id="brand-2" name="prodBrand" value="fresheasy">
                                                <label for="brand-3">프레시지</label>
                                            </div>
                                            <div class="mb-2">
                                                <input type="checkbox" class="me-2 brandbox" id="brand-2" name="prodBrand" value="baljae">
                                                <label for="brand-4">발재반점</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="mb-3 typeCk">
                                            <h4>종류</h4>
                                            <div class="mb-2">
                                                <input type="checkbox" class="me-2 typeall" id="type-1" name="prodTypeall" value="Beverages">
                                                <label for="type-1">전체</label>
                                            </div>
                                            <div class="mb-2">
                                                <input type="checkbox" class="me-2 typebox" id="type-2" name="prodType" value="Beverages">
                                                <label for="type-2">닭가슴살</label>
                                            </div>
                                            <div class="mb-2">
                                                <input type="checkbox" class="me-2 typebox" id="type-3" name="prodType" value="Beverages">
                                                <label for="type-3">스테이크/큐브</label>
                                            </div>
                                            <div class="mb-2">
                                                <input type="checkbox" class="me-2 typebox" id="type-4" name="prodType" value="Beverages">
                                                <label for="type-4">소시지</label>
                                            </div>
                                            <div class="mb-2">
                                                <input type="checkbox" class="me-2 typebox" id="type-5" name="prodType" value="Beverages">
                                                <label for="type-5">라이스</label>
                                            </div>
                                            <div class="mb-2">
                                                <input type="checkbox" class="me-2 typebox" id="type-6" name="prodType" value="Beverages">
                                                <label for="type-6">만두/간식</label>
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
                                let rndEvnt = Math.floor(Math.random() * (4)) + 1; //1~4
                                //const val = encodeURI('[발재반점]중화식 구운 주먹밥 게살맛')
                                $('.eventPg').append($('<a href="event.do?event='+rndEvnt+'">').append($('<img src="static/img/main/eventIcon'+rndEvnt+'.jpg" class="img-fluid w-100 rounded" alt="">')))
                               
                                let cond = "prod_brand"; //=>prod_brand='프레시지'
                                let param = "'허닭'";
                                let brand = [];
                                let type = [];
                                let price = 70000;
                                let keyword = '';
                                let ppage = 1;
                                let totalCnt = 0;
								const urlParams = new URLSearchParams(window.location.search);
                                let param1 = urlParams.get('type');
                                let param2 = urlParams.get('search');
                                //페이징 버튼
                                
                                /* function pagingFunc() {
									document.querySelectorAll('.pagination>a') // NodeList
										.forEach(item => {
											item.addEventListener('click', function(e) {
												e.preventDefault(); //a태그의 링크기능 차단.
												page = item.dataset.page;
								
												showlist(brand, type, price, keyword, ppage);
			                    				pageList(brand, type, price, keyword);
											})
										});
								} */
                                
                                function pagingFunc() {
	                                $('div .pagination a').on('click', function (e) {
	                                	e.preventDefault(); //a태그의 링크기능 차단.
	                    				ppage = $(this).data("page");
	                                	
	                    				showlist(brand, type, price, keyword, ppage);
	                    				pageList(brand, type, price, keyword);
			                    		console.log("paging");
									})
								}
                                //검색창 버튼
                                $('.searchBtn').on('click', function (e) {
                                	keyword = "%"+$('.searchCk').val()+"%";
									console.log(keyword)
									pageList(brand, type, price, keyword);
                                	showlist(brand, type, price, keyword, ppage);
								})
								//검색창
								$('.searchCk').on('change', function (e) {
                                	keyword = "%"+$('.searchCk').val()+"%";
									pageList(brand, type, price, keyword);
                                	showlist(brand, type, price, keyword, ppage);
								})
								//브랜드 전체체크박스
								$('.brandall').on('click', function (e) {
									if($(".brandall").is(":checked")){
										$("input[name=prodBrand]").prop("checked", true);
										brand = [];
										brand.push('허닭','프레시지','발재반점');
										console.log(brand);
										pageList(brand, type, price, keyword);
										showlist(brand, type, price, keyword, ppage);
									}else {
										$("input[name=prodBrand]").prop("checked", false);
										brand = [];
										pageList(brand, type, price, keyword);
										showlist(brand, type, price, keyword, ppage);
									}
								})
								//브랜드 개별체크박스
                                $('.brandCk').on('change', '.brandbox', function (e) {
    	                            if($(".brandbox:checked").length == 3){
    	                            	console.log("full");
    	                            	$(".brandall").prop("checked", true);
    	                            }else {
    	                                console.log("empty");
    	                                $(".brandall").prop("checked", false);
    	                            }
    	                            param = $(this).next().text();
                                	if($(this).is(":checked")){
										brand.push(param);
										console.log(brand);
										pageList(brand, type, price, keyword);
										showlist(brand, type, price, keyword, ppage);
                                	}else {
                                		for(let i = 0; i < brand.length; i++) {
                                		    if (brand[i] === param) {
                                		        brand.splice(i, 1);
                                		    }
                                		}
                                		console.log(brand);
										pageList(brand, type, price, keyword);
                                		showlist(brand, type, price, keyword, ppage);
                                	}
								})
								//종류 전체체크박스
								$('.typeall').on('click', function (e) {
									if($(".typeall").is(":checked")){
										$("input[name=prodType]").prop("checked", true);
										type = [];
										type.push('닭가슴살','스테이크/큐브','소시지','라이스','만두/간식');
										pageList(brand, type, price, keyword);
										showlist(brand, type, price, keyword);
									}else {
										$("input[name=prodType]").prop("checked", false);
										type = [];
										pageList(brand, type, price, keyword);
										showlist(brand, type, price, keyword, ppage);
									}
								})
								//종류 개별체크박스
								$('.typeCk').on('change', '.typebox', function (e) {
    	                            if($(".typebox:checked").length == 5){
    	                            	$(".typeall").prop("checked", true);
    	                            }else {
    	                                $(".typeall").prop("checked", false);
    	                            }
    	                            param = $(this).next().text();
                                	if($(this).is(":checked")){
										type.push(param);
										pageList(brand, type, price, keyword);
										showlist(brand, type, price, keyword, ppage);
                                	}else {
                                		for(let i = 0; i < type.length; i++) {
                                		    if (type[i] === param) {
                                		        type.splice(i, 1);
                                		    }
                                		}
										pageList(brand, type, price, keyword);
                                		showlist(brand, type, price, keyword, ppage);
                                	}
								})
								
								//가격슬라이더
								$('.priceCk').on('change', 'input', function () {
									console.log($(this).next().text());
									price = $(this).next().text();
									ppage=1;
									pageList(brand, type, price, keyword);
									showlist(brand, type, price, keyword, ppage);
								})

                                function showlist(brand, type, price, keyword, ppage) {
                                	
                                	$('.product-item').html('');
                                let sql = 'AND prod_type = "a"'
                                $.ajax({
						            url: 'conlist.do',
						            //url: 'plist.do',
						            method: 'post',
						            traditional : true,
						            data: {brand: brand, type: type, price: price, keyword: keyword, ppage: ppage},
						            dataType: 'json',
						            success: function (result) { 
						            	console.log(result);
						            	if(result.length <= 0){
						            		$('.listhead').text("조회된 상품이 없습니다.");
						            	}else{
							            	$('.listhead').text("상품: "+totalCnt+"개");
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
                    if(salePer!=0){
                        $('.product-item').append(
                            $('<div class="col-md-6 col-lg-6 col-xl-4"></div>').append(
                                $('<div class="rounded position-relative fruite-item"></div>').append($('<div class="fruite-img">')
                                    .append(
                                        $('<img src="static/img/' + item.prodImg + '" class="img-fluid w-100 rounded-top" alt="">'))
                                    , $('<div class="text-white bg-secondary px-3 py-1 rounded position-absolute" style="top: 10px; left: 10px;">').text(item.prodType)
                                    , $('<div class="p-4 border border-secondary border-top-0 rounded-bottom"></div>').append(
                                        $('<p />').text('[' + item.prodBrand + ']' + item.prodName).css({ 'height': '48px' })
                                        , $('<div class="d-flex justify-content-between flex-lg-wrap">').append(
                                            $('<dl class="d-flex justify-content-between flex-lg-wrap" />').append(
                                                $('<dt />').append($('<h3 />').text(salePer).css({ 'color': 'red' }).css({ 'margin': '8px 0px' }))
                                                , $('<dd />').append($('<span />').append($('<del />').text(item.prodPrice + '원')).css({ 'margin': '0px' })
                                                    , $('<span />').append($('<h5 />').text(realPrice + '원').css({ 'margin': '0px' }))).css({ 'margin-left': '8px' })
                                            ).css({ 'margin': '0px' })
                                            , $('<a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag"></i></a>').css({ 'height': '48px', 'padding-top': '9px' })))
                                )
                            )
                        )
                    }else{
                        $('.product-item').append(
                            $('<div class="col-md-6 col-lg-6 col-xl-4"></div>').append(
                                $('<div class="rounded position-relative fruite-item"></div>').append($('<div class="fruite-img">')
                                    .append(
                                        $('<img src="static/img/' + item.prodImg + '" class="img-fluid w-100 rounded-top" alt="">'))
                                    , $('<div class="text-white bg-secondary px-3 py-1 rounded position-absolute" style="top: 10px; left: 10px;">').text(item.prodType)
                                    , $('<div class="p-4 border border-secondary border-top-0 rounded-bottom" style="height:169px;"></div>').append(
                                        $('<p />').text('[' + item.prodBrand + ']' + item.prodName).css({ 'height': '48px' })
                                        , $('<div class="d-flex justify-content-between flex-lg-wrap">').append(
                                            $('<dl class="d-flex justify-content-between flex-lg-wrap" />').append(
                                                $('<dt />')
                                                , $('<dd />').append($('<span />').append($('<h5 />').text(realPrice + '원').css({ 'margin': '0px' }))).css({ 'margin-left': '8px' })
                                            ).css({ 'margin': '0px' })
                                            , $('<a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag"></i></a>').css({ 'height': '48px', 'padding-top': '9px' })))
                                )
                            )
                        )
                    }
						            		
										})
						            },
						            error: function (err) { 
						                console.log('error=> ' + err);
						            }
						        });
                                }
                                
                                function pageList(brand, type, price, keyword) {
                                	$.ajax({
    						            url: 'productcount.do',
    						            method: 'post',
    						            traditional : true,
    						            data: {brand: brand, type: type, price: price, keyword: keyword},
    						            dataType: 'json',
    						            success: function (result) {
    						            	console.log(result);
    						            	$('div .pagination').html('');
    						            	totalCnt = result.totalCount;
    						        		let startPage, endPage; // 1~5, 6~10,...
    						        		let next, prev;
    						        		let realEnd = Math.ceil(totalCnt / 5);
    						        		endPage = Math.ceil(ppage / 5) * 5;
    						        		startPage = endPage - 4;
    						        		endPage = endPage > realEnd ? realEnd : endPage;
    						        		next = endPage < realEnd ? true : false;
    						        		prev = startPage > 1;
    						        		console.log("totalCnt:"+totalCnt+",start/end:"+startPage+"/"+endPage+"next/prev:"+next+"/"+prev);
    						        		if (prev) {
    						        			let aTag = document.createElement('a');
    						        			//aTag.innerText = startPage - 1;
    						        			aTag.innerHTML = '&laquo;';
    						        			aTag.setAttribute('data-page', startPage - 1);
    						        			aTag.href = '#';
    						        			document.querySelector('div.pagination').appendChild(aTag);
    						        		}
    						        		for (let p = startPage; p <= endPage; p++) {
    						        			let aTag = document.createElement('a');
    						        			aTag.innerText = p;
    						        			aTag.setAttribute('data-page', p);
    						        			aTag.href = '#';
    						        			if (p == ppage) {
    						        				aTag.className = 'active';
    						        			}
    						        			document.querySelector('div.pagination').appendChild(aTag);
    						        		}
    						        		if (next) {
    						        			let aTag = document.createElement('a');
    						        			//aTag.innerText = endPage + 1;
    						        			aTag.innerHTML = '&raquo;';
    						        			aTag.setAttribute('data-page', endPage + 1);
    						        			aTag.href = '#';
    						        			document.querySelector('div.pagination').appendChild(aTag);
    						        		}
    						        		pagingFunc();
    						            },
    						            error: function (err) { 
    						                console.log('error=> ' + err);
    						            }
								});
                                }
								if (param1 != null) {
                                        type = param1
										pageList(brand, type, price, keyword)
                                        showlist(brand, type, price, keyword, ppage);
                                        $("label:contains(" + param1 + ")").prev().attr('checked', true);
                                        param1 = null;
                                    } else if (param2 != null) {
                                        keyword = "%"+ param2+"%";
										pageList(brand, type, price, keyword)
                                        showlist(brand, type, price, keyword, ppage);
                                        $(".w-100 input").val(param2);
                                        param2 = null;
                                    } else {
										pageList(brand, type, price, keyword)
                                        showlist(brand, type, price, keyword, ppage);
                                        $('label:contains("전체")').prev().attr('checked', true);
                                    }
                               	
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