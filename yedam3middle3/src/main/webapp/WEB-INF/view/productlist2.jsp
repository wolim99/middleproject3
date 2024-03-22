<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    
        <!-- Single Page Header start -->
        <div class="container-fluid page-header py-5">
            <h1 class="text-center text-white display-6 headtitle"></h1>
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
                <h1 class="mb-4 sidetitle"></h1>
                <div class="row g-4">
                    <div class="col-lg-12">
                        <div class="row g-4">
                            <div class="col-xl-3">
                                <div class="input-group w-100 mx-auto d-flex">
                                    <input type="text" class="form-control p-3 searchCk" placeholder="keywords" aria-describedby="search-icon-1">
                                    <button id="search-icon-1" class="input-group-text p-3 searchBtn"><i class="fa fa-search"></i></button>
                                </div>
                            </div>
                            <div class="col-6 listhead" style="padding-top: 20px"></div>
                            <div class="col-xl-3" style="padding-left: 80px">
                                <div class="bg-light ps-3 py-3 rounded d-flex justify-content-between mb-4" style="width: 180px">
                                    <label for="fruits" style="padding-top: 2px">정렬:</label>
                                    <select id="fruits" name="fruitlist" class="sortbar border-0 form-select-sm bg-light me-3" form="fruitform">
                                        <option value="prod_date DESC">최신순</option>
                                        <option value="prod_price-(round(prod_price*prod_sale/100)*100) DESC">높은 가격순</option>
                                        <option value="prod_price-(round(prod_price*prod_sale/100)*100)">낮은 가격순</option>
                                        <option value="prod_name">이름순</option>
                                        <option value="prod_ordcnt DESC">인기순</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row g-4">
                            <div class="col-lg-3">
                                <div class="row g-4">
                                    
                                    <div class="col-lg-12">
                                        <div class="mb-3 priceCk" style="padding-top: 15px">
                                            <h4 class="mb-2">가격</h4>
                                            <input type="range" class="form-range w-100" id="rangeInput" name="rangeInput" min="1000" max="70000" step="1000" value="70000" oninput="amount.value=rangeInput.value">
                                            <output id="amount" name="amount" min-value="1000" max-value="70000" for="rangeInput">70000</output>원 이하
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
                                                <input type="checkbox" class="me-2 brandbox" id="brand-3" name="prodBrand" value="fresheasy">
                                                <label for="brand-3">프레시지</label>
                                            </div>
                                            <div class="mb-2">
                                                <input type="checkbox" class="me-2 brandbox" id="brand-4" name="prodBrand" value="baljae">
                                                <label for="brand-4">발재반점</label>
                                            </div>
                                            <div class="mb-2">
                                                <input type="checkbox" class="me-2 brandbox" id="brand-5" name="prodBrand" value="forme">
                                                <label for="brand-5">포르미</label>
                                            </div>
                                            <div class="mb-2">
                                                <input type="checkbox" class="me-2 brandbox" id="brand-6" name="prodBrand" value="achim">
                                                <label for="brand-6">아침몰</label>
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
                                            <div class="mb-2">
                                                <input type="checkbox" class="me-2 typebox" id="type-7" name="prodType" value="Beverages">
                                                <label for="type-7">닭다리살</label>
                                            </div>
                                            <div class="mb-2">
                                                <input type="checkbox" class="me-2 typebox" id="type-8" name="prodType" value="Beverages">
                                                <label for="type-8">양념육</label>
                                            </div>
                                            <div class="mb-2">
                                                <input type="checkbox" class="me-2 typebox" id="type-9" name="prodType" value="Beverages">
                                                <label for="type-9">양식</label>
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
								const urlParams = new URLSearchParams(window.location.search);
                                let param1 = urlParams.get('type');
                                let param2 = urlParams.get('search');
                               	let listtype = '';
                                if(${pagetype} === 'all'){
                                	$('.headtitle').text('전체 상품');
                                	$('.sidetitle').text('전체 상품');
									$('.navbar-nav > a:nth-child(1)').addClass('active');
                                	listtype = 'prod_no = prod_no';
                                }else if(${pagetype} === 'new'){
                                	$('.headtitle').text('신상품');
                                	$('.sidetitle').text('신상품');
									$('.navbar-nav > a:nth-child(2)').addClass('active');
                                	listtype = 'rownum<11';
                                }else if(${pagetype} === 'sale'){
                                	$('.headtitle').text('할인 상품');
                                	$('.sidetitle').text('할인 상품');
									$('.navbar-nav > a:nth-child(3)').addClass('active');
                                	listtype = 'prod_sale != 0';
                                }else if(${pagetype} === 'best'){
                                	$('.headtitle').text('베스트 상품');
                                	$('.sidetitle').text('베스트 상품');
									$('.navbar-nav > a:nth-child(4)').addClass('active');
                                	listtype = 'prod_ordcnt > 50';
                                }else if(${pagetype} === 'single'){
                                	$('.headtitle').text('1팩 담기');
                                	$('.sidetitle').text('1팩 담기');
									$('.navbar-nav > a:nth-child(5)').addClass('active');
                                	listtype = "prod_comp = 'single'"
                                }
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
                                let sort = "prod_date DESC";
								
                                //정렬 버튼
                                $('.sortbar').on('change', function (e) {
                                	ppage = 1;
									sort = $(this).val();
                                	showlist(brand, type, price, keyword, ppage, sort, listtype);
                    				pageList(brand, type, price, keyword, listtype);
								})
                                //페이징 버튼
                                function pagingFunc() {
                                	ppage = 1;
	                                $('div .pagination a').on('click', function (e) {
	                                	e.preventDefault(); //a태그의 링크기능 차단.
	                    				ppage = $(this).data("page");
	                    				showlist(brand, type, price, keyword, ppage, sort, listtype);
	                    				pageList(brand, type, price, keyword, listtype);
									})
								}
                                //검색창 버튼
                                $('.searchBtn').on('click', function (e) {
                                	ppage = 1;
                                	keyword = "%"+$('.searchCk').val()+"%";
                                	showlist(brand, type, price, keyword, ppage, sort, listtype);
                                	pageList(brand, type, price, keyword, listtype);
								})
								//검색창
								$('.searchCk').on('change', function (e) {
									ppage = 1;
                                	keyword = "%"+$('.searchCk').val()+"%";
                                	showlist(brand, type, price, keyword, ppage, sort, listtype);
                                	pageList(brand, type, price, keyword, listtype);
								})
								//브랜드 전체체크박스
								$('.brandall').on('click', function (e) {
									ppage = 1;
									if($(".brandall").is(":checked")){
										$("input[name=prodBrand]").prop("checked", true);
										brand = [];
										brand.push('허닭','프레시지','발재반점','포르미','아침몰','닭다리살','양념육','양식');
										console.log(brand);
										showlist(brand, type, price, keyword, ppage, sort, listtype);
										pageList(brand, type, price, keyword, listtype);
									}else {
										$("input[name=prodBrand]").prop("checked", false);
										brand = [];
										showlist(brand, type, price, keyword, ppage, sort, listtype);
										pageList(brand, type, price, keyword, listtype);
									}
								})
								//브랜드 개별체크박스
                                $('.brandCk').on('change', '.brandbox', function (e) {
                                	ppage = 1;
    	                            if($(".brandbox:checked").length == 7){
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
										showlist(brand, type, price, keyword, ppage, sort, listtype);
										pageList(brand, type, price, keyword, listtype);
                                	}else {
                                		for(let i = 0; i < brand.length; i++) {
                                		    if (brand[i] === param) {
                                		        brand.splice(i, 1);
                                		    }
                                		}
                                		console.log(brand);
                                		showlist(brand, type, price, keyword, ppage, sort, listtype);
                                		pageList(brand, type, price, keyword, listtype);
                                	}
								})
								//종류 전체체크박스
								$('.typeall').on('click', function (e) {
									ppage = 1;
									if($(".typeall").is(":checked")){
										$("input[name=prodType]").prop("checked", true);
										type = [];
										type.push('닭가슴살','스테이크/큐브','소시지','라이스','만두/간식','닭다리살','양념육','양식');
										showlist(brand, type, price, keyword, ppage, sort, listtype);
										pageList(brand, type, price, keyword, listtype);
									}else {
										$("input[name=prodType]").prop("checked", false);
										type = [];
										showlist(brand, type, price, keyword, ppage, sort, listtype);
										pageList(brand, type, price, keyword, listtype);
									}
								})
								//종류 개별체크박스
								$('.typeCk').on('change', '.typebox', function (e) {
									ppage = 1;
    	                            if($(".typebox:checked").length == 8){
    	                            	$(".typeall").prop("checked", true);
    	                            }else {
    	                                $(".typeall").prop("checked", false);
    	                            }
    	                            param = $(this).next().text();
                                	if($(this).is(":checked")){
										type.push(param);
										showlist(brand, type, price, keyword, ppage, sort, listtype);
										pageList(brand, type, price, keyword, listtype);
                                	}else {
                                		for(let i = 0; i < type.length; i++) {
                                		    if (type[i] === param) {
                                		        type.splice(i, 1);
                                		    }
                                		}
                                		showlist(brand, type, price, keyword, ppage, sort, listtype);
                                		pageList(brand, type, price, keyword, listtype);
                                	}
								})
								
								//가격슬라이더
								$('.priceCk').on('change', 'input', function (e) {
									ppage = 1;
									price = $(this).next().text();
									showlist(brand, type, price, keyword, ppage, sort, listtype);
									pageList(brand, type, price, keyword, listtype);
								})
                               
                                function showlist(brand, type, price, keyword, ppage = 1, sort, listtype) {
                                	$('.product-item').html('');
                                $.ajax({
						            url: 'conlist.do',
						            //url: 'plist.do',
						            method: 'post',
						            traditional : true,
						            data: {brand: brand, type: type, price: price, keyword: keyword, ppage: ppage, sort: sort, listtype: listtype},
						            dataType: 'json',
						            success: function (result) { 
						            	console.log(result);
						            	
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
                                                                            , $('<a href=""cart.do?prodno='+item.prodNo+'"" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag"></i></a>').css({ 'height': '48px', 'padding-top': '9px' })))
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
                                
                                function pageList(brand, type, price, keyword, listtype) {
                                	
                                	$.ajax({
    						            url: 'productcount.do',
    						            method: 'post',
    						            traditional : true,
    						            data: {brand: brand, type: type, price: price, keyword: keyword, listtype: listtype},
    						            dataType: 'json',
    						            success: function (result) {
    						            	totalCnt = result.totalCount;
    						            	if(totalCnt == 0){
    						            		$('.listhead').text("조회된 상품이 없습니다.");
    						            	}else{
    							            	$('.listhead').text("상품: "+totalCnt+"개");
    						            	}
    						            	$('div .pagination').html('');
    						        		let startPage, endPage; // 1~5, 6~10,...
    						        		let next, prev;
    						        		let realEnd = Math.ceil(totalCnt / 6);
    						        		endPage = Math.ceil(ppage / 6) * 5;
    						        		startPage = endPage - 4;
    						        		endPage = endPage > realEnd ? realEnd : endPage;
    						        		next = endPage < realEnd ? true : false;
    						        		prev = startPage > 1;
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
								let t1=${type};
								let s1=${search};
								let p1=${pagetype};
								console.log(t1,s1,p1);
								console.log(t1!='null')
								if (t1!='null') {
                                        type.push(t1) ;
                                        showlist(brand, type, price, keyword, ppage, sort, listtype);
                                		pageList(brand, type, price, keyword, listtype);
                                        console.log('t1')
										if(t1=='전체'){
											$('.typeCk input').attr('checked', true);
											$('.brandCk input').attr('checked', true);
										}else{
											$('.brandCk input').attr('checked', true);
											$("label:contains(" + t1 +")").prev().attr('checked', true);	
										}
                                    } else if (s1!='null') {
										console.log('s1')
                                        keyword = "%" + s1 + "%";
                                        showlist(brand, type, price, keyword, ppage, sort, listtype);
                                		pageList(brand, type, price, keyword, listtype);
                                        $(".w-100 input").val(s1);
										$('.typeCk input').attr('checked', true);
                                        $('.brandCk input').attr('checked', true);
                                    } else {
                                        showlist(brand, type, price, keyword, ppage, sort, listtype);
                                		pageList(brand, type, price, keyword, listtype);
                                        $('.brandCk input').attr('checked', true);
										console.log('else')
                                        $('.typeCk input').attr('checked', true);
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