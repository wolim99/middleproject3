<%@ page import="co.yedam.order.Product"%>
<%@ page import="co.yedam.order.Review"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="//ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- css -->
<style>
div.sale {
	display: inline-block;
}
.price {
	display: inline-block;
}
div.cart {
	display: inline-block;
}
div.detailInfo {
	display: inline-block;
	margin-right: 30px;
}

div.detailOption, div.detailInfoStar, div.detailInfoTotal1, div.reviewInfo
{
	display: inline-block;
}
div.detailReview {
	text-align: left;
}

div.reviewInfo1 {
	text-align: left;
	display: inline-block;
}

div.detailInfoTotal, div.detailInfoBtn {
	text-align: right;
}

div.detailReview {
	display: inline-block;
	text-align: left;
}

div select.detailOptionSelect {
	width: 250px;
	height: 30px;
}

button.nav-link {
	width: 324px;
}
</style>


<!-- 헤더와 바디 사이 영역 -->
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">상세페이지</h1>
	<!--
	<ol class="breadcrumb justify-content-center mb-0">
		<li class="breadcrumb-item"><a href="#">Home</a></li>
		<li class="breadcrumb-item"><a href="#">Pages</a></li>
		<li class="breadcrumb-item active text-white">Shop Detail</li>
	</ol>-->
</div>

${logId}

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
								class="img-fluid" alt="닭가슴살" style="width: 500px; height: 500px; border: 1px solid gray;">
							</a>
						</div>
					</div>
					<!-- 상단 우측 영역 -->
					<div class="col-lg-6">
						<!-- 제품명 -->
						<h4 class="fw-bold mb-3">${product.prodName }</h4>
						<!-- 평점 >> 별 -->
						<div class="detailInfoStar">
							<c:if test="${review2 > 0 }">								
								<h5>${review1 }/5</h5>
							</c:if>
							<c:if test="${review2 == 0 }">
								<h5>0/5</h5>
							</c:if>
						</div>
						<div class="detailInfoStar">
							<c:if test="${review1 == 0 }">
								<div style="display: inline-block;">☆☆☆☆☆</div>
							</c:if>
							<c:if test="${review1 == 1 }"> 
								<div style="display: inline-block;">★☆☆☆☆</div>
							</c:if>
							<c:if test="${review1 == 2 }">
								<div style="display: inline-block;">★★☆☆☆</div>
							</c:if>
							<c:if test="${review1 == 3 }">
								<div style="display: inline-block;">★★★☆☆</div>
							</c:if>
							<c:if test="${review1 == 4 }">
								<div style="display: inline-block;">★★★★☆</div>
							</c:if>
							<c:if test="${review1 == 5 }">
								<div style="display: inline-block;">★★★★★</div>
							</c:if>
						</div>
						<div style="display: inline-block;">(${review2 })</div>
						<div>
						
							<c:if test="${product.prodSale != 0 }">
								<h1 class="price" class="fw-bold mb-3" style="text-decoration: line-through">${product.prodPrice }</h1>
								<h1 class="price" class="fw-bold mb-3" style="color: red;"><fmt:formatNumber value="${product.prodPrice - Math.round((product.prodPrice * product.prodSale)/100)*100 }" pattern="0"/>원</h1>
							</c:if>
							<c:if test="${product.prodSale == 0 }">
								<h1 class="fw-bold mb-3">${product.prodPrice }원</h1>
							</c:if>
						</div>
						<hr>
						<div class="detailInfo">배송비</div>
						<div id="deliveryPrice" class="detailInfo">2500</div>
						<hr>
						<div class="detailInfo">브랜드</div>
						<div class="detailInfo">${product.prodBrand }</div>
						<hr>
						<div class="detailInfo">원산지</div>
						<div class="detailInfo">${product.prodFrom }</div>
						<hr>
						
						<!-- 단품 옵션선택 -->
						<c:if test="${product.prodComp eq 'single'}">
							<label>수량선택</label>
							<div class="detailOption">
								<input id="prodCnt" type="number" min="1" max="50" value="1"
									style="width: 80px;">
							</div>
							<div class="detailOption">(최대 50개)</div>
						</c:if>
						<!-- 옵션 선택시 총금액 바꾸기 -->
						<script>
							$('#prodCnt').on('change', function() {
								$.ajax("./detailPage.do?prodNo=" + "${product.prodNo}")
								.done(function() {
									let inputVal = document.querySelector('#prodCnt')
									if("${product.prodSale}" != 0){
										document.querySelector('.changeTotal').innerText = inputVal.value * (Math.round((${product.prodPrice - (product.prodPrice * product.prodSale)})/100)*100);
									}
									else{										
										document.querySelector('.changeTotal').innerText = inputVal.value * ${product.prodPrice};
									}
								})
							})
						</script>
						
						
						<!-- 패키지 옵션선택 -->
						<c:if test="${product.prodComp eq 'package'}">
							<label>옵션선택</label>
							<div class="detailOption">
								<select class="detailOptionSelect">
									<option selected disabled>옵션</option>
									<c:forEach var="optionList" items="${optionList }">
										<option class="detailOptionSelect2">${optionList.optText }</option>				
									</c:forEach>
								</select>
							</div>
							<div class="detailOption">(최대 ${fn:length(optionList) }개)</div> 
						</c:if>
						<br>
						<hr>
						<!-- 선택된 옵션 나열 -->
						<input id="cnt" type="hidden" value="0">
						<input class="cnt2" type="hidden" value="0">
						<ul class="optionList">
						</ul>
						<!-- 패키지 옵션 선택시 이벤트 -->
						<script>
								//배열만들기
								var optionList = [];
								var prodNo = "${product.prodNo}";
								var prodCnt = 0;
								if("${prodComp}" == 'single'){									
									prodCnt = document.querySelector('#prodCnt').value;
								}
								document.querySelector('.detailOptionSelect').addEventListener('change', function(){
									let selectValue1 = document.querySelector('.detailOptionSelect')
									let selectValue2 = selectValue1.options[selectValue1.selectedIndex]
									//옵션 변경시 옵션값 넣기
									if(optionList.includes(selectValue2.value) == false){									
										optionList.push(selectValue2.value);
									}
									let ul = document.querySelector('.optionList');
									let li = document.createElement('li');
									let delBtn = document.createElement('button');
									let cnt = document.querySelector('#cnt');
									let cnt2 = document.querySelector('optionList.cnt2');
									
									delBtn.onclick = function(){
										let delBtn = document.querySelector('.delBtn');
										delBtn.parentElement.remove();
										$.ajax("./detailPage.do?prodNo=" + "${product.prodNo}")
										.done(function() {
											let inputVal = document.querySelector('.changeTotal')
											if("${product.prodSale}" != 0){
												document.querySelector('.changeTotal').innerText = Number(inputVal.innerText) - Number(${product.prodPrice - (product.prodPrice * product.prodSale)});
											}
											else{											
												document.querySelector('.changeTotal').innerText = Number(inputVal.innerText) - Number(${product.prodPrice});
											}
										})
										cnt.value = Number(cnt.value) - Number(1);
									}			
									if(Number(cnt.value) < Number("${fn:length(optionList) }")){
										li.innerText = selectValue2.value;
										li.className = 'cnt2';
										delBtn.innerHTML = 'X';
										delBtn.className = 'delBtn';
										li.append(delBtn);
										ul.append(li);
										cnt.value = Number(cnt.value) + Number(1);
											
										$.ajax("./detailPage.do?prodNo=" + "${product.prodNo}")
										.done(function() {
											let inputVal = document.querySelector('.changeTotal')
											if("${product.prodSale}" != 0){
												document.querySelector('.changeTotal').innerText = Number(inputVal.innerText) + Number(Math.round((${product.prodPrice - (product.prodPrice * product.prodSale)})/100)*100);
											}
											else{											
												document.querySelector('.changeTotal').innerText = Number(inputVal.innerText) + Number(${product.prodPrice});
											}
										})
									}
									else{
										alert("구매 수량을 초과했습니다.")
									}	
								});
						</script>	
						<!-- 총금액 -->
						<div class="detailInfoTotal">
							<div class="detailInfoTotal1">
								<h2>총금액</h2>
							</div>
							<div class="detailInfoTotal1">
								<c:if test="${product.prodComp eq 'single' }">
									<c:if test="${product.prodSale != 0 }">
										<h2 class="changeTotal" style="color: red"><fmt:formatNumber value="${product.prodPrice - Math.round((product.prodPrice * product.prodSale)/100)*100 }" pattern="0"/></h2>
									</c:if>
									<c:if test="${product.prodSale == 0 }">
										<h2 class="changeTotal" style="color: red">${product.prodPrice }</h2>
									</c:if>			
								</c:if>
								<c:if test="${product.prodComp eq 'package' }">
									<h2 class="changeTotal" style="color: red">0</h2>
								</c:if>
							</div>
							<div class="detailInfoTotal1">
								<h2>원</h2>
							</div>
						</div>
						<br>
						<div class="detailInfoBtn">
							<a id="btn1" href="#"
								class="btn border border-secondary rounded-pill px-4 py-2 mb-4 text-primary"><i
								class="fa fa-shopping-bag me-2 text-primary"></i>장바구니</a> <a
								id="btn2" href="#"
								class="btn border border-secondary rounded-pill px-4 py-2 mb-4 text-primary"><i
								class="fa fa-shopping-bag me-2 text-primary"></i>바로구매</a>
						</div>
						<!-- 장바구니 >> cart.do 이동 -->
						<script>
							$(document).on('click', '#btn1', function(e){
								e.preventDefault();
								let logName = "${logName}";
								let prodNo = "${product.prodNo}";
								if(logName != null && logName != ''){
									location.href = './insertcart.do?prodNo='+prodNo;
								}
								else{
									alert("로그인이 필요합니다!")
									window.location.reload();
								}
							});
						</script>
						<!-- 단품,패키지 바로구매 >> orderPage.do 이동 -->
						<script>
							document.querySelector('a#btn2').addEventListener('click',function() {
								//단품 파라미터
								if("${product.prodComp}" == "single"){
									let prodImg = "${product.prodImg}";
									let prodPrice = "${product.prodPrice}";
									let prodName = "${product.prodName}";
									let prodComp = "${product.prodComp}";
									let prodCnt = document.querySelector('#prodCnt');
									let deliveryPrice = document.querySelector('#deliveryPrice');
									let changeTotal = document.querySelector('.changeTotal');
									
									
									location.href = './orderPage.do?prodImg=' + prodImg
										+ '&prodPrice=' + prodPrice
										+ '&prodName=' + prodName
										+ '&prodComp=' + prodComp
										+ '&deliveryPrice=' + deliveryPrice.innerText
										+ '&changeTotal=' + changeTotal.innerText
										+ '&prodCnt=' + prodCnt.value;
								}
								//패키지 파라미터
								else if("${product.prodComp}" == "package"){
									let prodImg = "${product.prodImg}";
									let prodPrice = "${product.prodPrice}";
									let prodName = "${product.prodName}";
									let prodComp = "${product.prodComp}";
									let deliveryPrice = document.querySelector('#deliveryPrice');
									let changeTotal = document.querySelector('.changeTotal');
									let cnt = document.querySelector('#cnt');
									if(changeTotal.innerText == 0){
										alert("옵션을 선택해 주세요!")
									}
									else{										
										location.href = './orderPage.do?prodImg=' + prodImg
											+ '&prodPrice=' + prodPrice
											+ '&prodName=' + prodName
											+ '&prodComp=' + prodComp
											+ '&deliveryPrice=' + deliveryPrice.innerText
											+ '&changeTotal=' + changeTotal.innerText
											+ '&cnt=' + cnt.value;
									}
								}
							})
						</script>
					</div>
				</div>
				<!-- 상단 좌측/우측 영역 끝 -->
				<!-- 관련 제품 영역 시작 -->
				<br> <br> <br>
				<div class="vesitable">
					<c:if test="${fn:length(productList) != 0}">
					<h1 class="fw-bold mb-0" style="text-align: center">▶"${product.prodName }" 관련 제품◀</h1>
						<div class="product-item owl-carousel vegetable-carousel justify-content-center">
						<!-- 연관제품 있을때 -->
							<c:forEach var="list1" items="${productList }">
							<!-- 연관 제품 1개 -->
							<div onclick="location.href='detailPage.do?prodNo=${list1.prodNo }'" class="border border-primary rounded position-relative vesitable-item">
								<div class="vesitable-img">
									<!-- 연관제품 이미지1 -->
									<img src="static/img/${list1.prodImg }"
										class="img-fluid w-100 rounded-top" alt="">
								</div>
								<div
									class="text-white bg-primary px-3 py-1 rounded position-absolute"
									style="top: 10px; right: 10px;">${list1.prodType }</div>
								<div class="p-4 pb-0 rounded-bottom">
									<p>${list1.prodName }</p>
									<div class="d-flex justify-content-between flex-lg-wrap">
										<div class="sale">											
											<c:if test="${list.prodSale != 0 }">
												<h1 class="fs-5 fw-bold" style="color: red;"><fmt:formatNumber value="${list1.prodSale * 100 }" pattern="0"/>%</h1>
											</c:if>
										</div>											
										<div class="sale">
											<c:if test="${list1.prodSale == 0 }">
												<p class="fs-5 fw-bold"></p>
											</c:if>
										</div>
										<div class="price">										
											<p class="text-dark fs-5 fw-bold" style="text-decoration: line-through;">${list1.prodPrice }원</p>
											<c:if test="${list1.prodSale != 0 }">
												<p class="fs-5 fw-bold"><fmt:formatNumber value="${list1.prodPrice - Math.round((list1.prodPrice * list1.prodSale)/100)*100 }" pattern="0"/>원</p>
											</c:if>
											<c:if test="${list1.prodSale == 0 }">
												<p class="fs-5 fw-bold"><fmt:formatNumber value="${list1.prodPrice }" pattern="0"/>원</p>
											</c:if>
										</div>
										<div class="cart">
										<a href="#" id="${list1.prodNo }" class="cartLink" 
											class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i
											class="fa fa-shopping-bag me-2 text-primary"></i></a>
										</div>
									</div>
								</div>
							</div>
							</c:forEach>
						</div>
					</c:if>
					<c:if test="${fn:length(productList) == 0}">
					<h1 class="fw-bold mb-0" style="text-align: center">▶이런 상품도 있어요!◀</h1>
						<div class="product-item owl-carousel vegetable-carousel justify-content-center">
						<!-- 연관제품 없을때 -->
							<c:forEach var="list2" items="${productList2 }">
							<!-- 연관 제품 1개 -->
							<div onclick="location.href='detailPage.do?prodNo=${list2.prodNo }'" class="border border-primary rounded position-relative vesitable-item">
								<div class="vesitable-img">
									<!-- 연관제품 이미지1 -->
									<img src="static/img/${list2.prodImg }"
										class="img-fluid w-100 rounded-top" alt="">
								</div>
								<div
									class="text-white bg-primary px-3 py-1 rounded position-absolute"
									style="top: 10px; right: 10px;">${list2.prodType }</div>
								<div class="p-4 pb-0 rounded-bottom">
									<h4>${list2.prodName }</h4>
									<div class="d-flex justify-content-between flex-lg-wrap">
										<div class="sale">											
											<c:if test="${list2.prodSale != 0 }">
												<h1 class="fs-5 fw-bold" style="color: red;"><fmt:formatNumber value="${list2.prodSale * 100 }" pattern="0"/>%</h1>
											</c:if>
										</div>											
										<div class="sale">
											<c:if test="${list2.prodSale == 0 }">
												<p class="fs-5 fw-bold"></p>
											</c:if>
										</div>
										<div class="price">												
											<p class="text-dark fs-5 fw-bold" style="text-decoration: line-through;">${list2.prodPrice }원</p>
											<c:if test="${list2.prodSale != 0 }">
												<p class="fs-5 fw-bold"><fmt:formatNumber value="${list2.prodPrice - Math.round((list2.prodPrice * list2.prodSale)/100) * 100 }" pattern="0"/>원</p>
											</c:if>											
											<c:if test="${list2.prodSale == 0 }">
												<p class="fs-5 fw-bold"><fmt:formatNumber value="${list2.prodPrice }" pattern="0"/>원</p>
											</c:if>
										</div>
										<div class="cart">
										<a href="#" id="${list2.prodNo }" class="cartLink" 
											class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i
											class="fa fa-shopping-bag me-2 text-primary"></i></a>
										</div>
									</div>
								</div>
							</div>
							</c:forEach>
						</div>
					</c:if>
				</div>
				<script>
					document.addEventListener("DOMContentLoaded", function(){
						$('.product-item').on('click', '.cartLink', function(e){
							e.preventDefault();
							let logName = "${logName}";
							let prodNo = $(this).attr('id');
							if(logName != null && logName != ''){
								location.href = './insertcart.do?prodNo='+prodNo;
							}
							else{
								alert("로그인이 필요합니다!")
								window.location.reload();
							}
						});
					})
				</script>
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
								aria-controls="nav-mission" aria-selected="false">
								리뷰
								<div style="display: inline-block;">(${review2 })</div>
							</button>

						</div>
					</nav>
					<!-- 탭 영역 -->
					<div class="tab-content mb-5" style="text-align: center">
						<!-- 탭1: 상품설명 -->
						<div class="tab-pane active" id="nav-about" role="tabpanel"
							aria-labelledby="nav-about-tab">
							<img src="static/img/detail/detail-${product.prodImg }">
						</div>
						<!-- 탬1 끝 -->
						<!-- 탭2: 보관방법 -->
						<div class="tab-pane" id="nav-about1" role="tabpanel"
							aria-labelledby="nav-about-tab">
							<p>보관방법</p>
							<hr>
							<div style="padding-top: 60px; text-align: center;">
		 						<table width="1000" border="1" cellpadding="0" style="font-family: 'Hind', 'Helvetica Neue', Helvetica, NanumGothic,'Malgun Gothic',Dotum,Gulim,sans-serif;">
		    						<tbody>
		    							<tr>
		      								<td width="133" style="padding: 0px; height: 50px; text-align: center !important; background-color: rgb(246, 246, 246); font-weight: bold; color: #333;">구분</td>
		    								<td width="97" style="padding: 0px; text-align: center !important; background-color: rgb(246, 246, 246); font-weight: ; font-weight: bold; color: #333;">보관방법</td>
		      								<td width="153" style="padding: 0px; text-align: center !important; background-color: rgb(246, 246, 246); font-weight:; font-weight: bold; color: #333;">유통기한</td>
		      								<td width="597" style="padding: 0px; text-align: center !important; background-color: rgb(246, 246, 246); font-weight: ; font-weight: bold; color: #333;">해당제품</td>
		      							</tr>
		   					 			<tr>
		      								<td style="padding: 0px; text-align: center !important;"><span class="table_q">닭가슴살</span></td>
		      								<td style="padding: 0px; text-align: center !important; background-color: rgb(228, 250, 250);">상세페이지 참조</td>
		      								<td style="padding: 0px; text-align: center !important;"><span class="table_q">제조일로부터 6~24개월</span></td>
		      								<td><p><span class="table_q" style="padding-top: 15px; padding-bottom: 15px; "><b>[닭가슴살 24종]</b><br>
		      								  프레시업 슬라이스 닭가슴살 100g 4종 [12개월] / 프레시 슬라이스 닭가슴살 100g 5종 [12개월]<br>
		      								 허닭픽 소스 통 닭가슴살 100g 4종 [제품별도표기] / 더부드러운닭가슴살 1kg <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">[12개월]</span><br>
		      								  </span></p><p> 스팀 닭가슴살 4종 <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">[12개월]</span> / 크리스피 통 닭가슴살 90g 2종 [제품별도 표기]<span class="table_q" style="padding-top: 15px; padding-bottom: 15px; "><span class="table_q" style="padding-top: 15px; padding-bottom: 15px; "></span></span><span class="table_q" style="padding-top: 15px; padding-bottom: 15px; "></span><br>
		      								 슬라이스 스팀 소스 닭가슴살 4종 <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">[12개월]</span> 
										<br> 
										<br> 
		          							<b>[닭가슴살 소시지 21종]</b><br>
		          							닭가슴살 소시지 후랑크 5종 <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; "> <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">[9개월] </span></span>/ 닭가슴살 소시지 120g 3종 <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; "> <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">[12개월]</span></span><br>  
                  							        오븐구이 닭가슴살바 70g 2종 <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; "> <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">[9개월]</span></span> / 닭가슴살 어묵 핫바 2종 <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; "> <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">[12개월] </span></span><br>  
											닭가슴살 그릴 후랑크 소시지 5종 <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; "> <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">[12개월]</span></span> / 닭가슴살 소시지 그라탕 2종 <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; "> <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">[9개월] </span></span><br><span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">
                                       		</span> 닭가슴살 비엔나 3종 <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; "> <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">[9개월]</span></span><br>
		          						<br>
		         							<b>[큐브 닭가슴살 21종]</b><br>
 		          							소스 닭가슴살볼 4종 <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; "> <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">[10개월]</span></span> / 한입큐브 6종 <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; "> <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">[9개월]</span></span> / 큐브 5종 <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; "> <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">[12개월]</span></span></p> 스팀 닭가슴살볼 4종 <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; "> <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">[10개월]
                          					 / 닭가슴살 어묵볼 2종</span> <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; "> <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">[제품별도 표기]</span></span><p></p>
										<br>
		        							<b>[스테이크 닭가슴살 29종]</b><br>
		        							일품 닭가슴살 스테이크 7종 <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; "> <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">[12개월]</span></span> / 오븐 닭가슴살 스테이크 5종  <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; "> <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">[12개월]</span></span> / 오븐 닭가슴살 미니 스테이크 2종  <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; "> <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">[제품별도 표기]</span></span><br>
                							    닭가슴살 함박 스테이크 4종 <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; "> <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">[12개월]</span></span> / 닭가슴살 그릴 스테이크 6종 <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; "> <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">[제품별도 표기]</span></span><br>
												촉촉한 닭가슴살 함박스테이크 2종 <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; "> <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">[9개월]
												/ 허닭픽 소스 스테이크 3종 <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; "> <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">[제품별도표기]</span></span><br>
		        							  <br><b>[닭가슴살 만두 2종]</b><br>
		        							  속보이는 얇은피 닭가슴살 만두 2종 <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; "> <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">[9개월]</span></span> <br>
										 <br>
		          							<b>[닭가슴살 핫도그]</b><br>
		          							크리스피 닭가슴살 핫도그 <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; "> <span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">[9개월]</span></span> <br>
               								 <p><span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">
		          							</span></p></span></span></span></td>
		      							</tr>
		    							<tr>
		      								<td style="padding: 0px; text-align: center !important;"><span class="table_q">도시락</span></td>
		      								<td style="padding: 0px; text-align: center !important; background-color: rgb(228, 250, 250);">상세페이지 참조</td>
		      								<td style="padding: 0px; text-align: center !important;"><span class="table_q">제조일로부터 9~12개월</span></td>
		      								<td><span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">
											<b>[잡곡밥 도시락 6종][9개월]</b><br>
		        							씨앗귀리밥 닭가슴살동그랑땡 / 무청나물현미밥 너비아니 / 스크램블현미귀리밥 숯불제육볶음<br>
		        							곤드레나물현미밥 닭가슴살오믈렛 / 흑현미잡곡밥 미니돈까스 / 현미렌틸콩밥 간장닭강정 <br>
		        						<br>
											<b>[볶음밥 도시락 6종][9개월]</b><br>
		        							갈릭볶음밥 한입닭가슴살고추맛 / 김치볶음밥 닭가슴살비엔나 / 소불고기볶음밥 한입닭가슴살마늘<br>
		        							불닭볶음밥 한입닭가슴살 깻잎 / 새우볶음밥 한입닭가슴살 탄두리 / 닭갈비볶음밥 닭가슴살동그랑땡 <br>
										<br>
											<b>[다이어트 도시락 4종][제품별도 표기]</b><br>
		       							 	야채잡곡볶음밥&amp;불닭 슬라이스 / 카레잡곡볶음밥&amp;닭가슴살 소세지 양파볶음 <br>
		        							김치잡곡볶음밥&amp;고기산적 / 베이컨잡곡볶음밥&amp;체다치즈 버섯큐브  <br> 
		        							  </span></td>
		      							</tr>
		   	 							<tr>
		      								<td style="padding: 0px; text-align: center !important;"><span class="table_q">볶음밥</span></td>
		      								<td style="padding: 0px; text-align: center !important; background-color: rgb(228, 250, 250);">상세페이지 참조</td>
		      								<td style="padding: 0px; text-align: center !important;"><span class="table_q">제조일로부터 12개월</span></td>
		      								<td><span class="table_q" style="padding-top: 15px; padding-bottom: 15px; "><b>[닭가슴살 곤약볶음밥 10종]</b><br>
		        							닭가슴살 야채곤약 볶음밥 / 닭가슴살 새우곤약 볶음밥 / 닭가슴살 김치곤약 볶음밥 / 닭가슴살 닭갈비곤약 볶음밥
											 <br>닭가슴살 갈릭곤약 볶음밥/ 닭가슴살 소고기곤약 볶음밥
											/ 닭가슴살 불닭곤약 볶음밥 / 닭가슴살 카레곤약 볶음밥 <br>
											  닭가슴살 간장계란 볶음밥 / 닭가슴살 깍두기 볶음밥 <br>
                						<br>
                							               <b>[허닭식단 볶음밥 7종]</b><br>
		        							낙지볶음밥 / 잡채볶음밥 / 새우볶음밥 / 닭갈비볶음밥 / 소불고기볶음밥/ 햄야채볶음밥 / 김치볶음밥
                							        </span></td>
		      							</tr>
									    <tr>
		      								<td style="padding: 0px; text-align: center !important;"><span class="table_q">고구마</span></td>
		      								<td style="padding: 0px; text-align: center !important; background-color: rgb(228, 250, 250);">상세페이지 참조</td>
		      								<td style="padding: 0px; text-align: center !important;"><span class="table_q">제조일로부터 12개월</span></td>
		      								<td><span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">
		      								   고구마 큐브 / 미니 군고구마 / 아이스 군고구마
		      								
		      								  </span></td>
		     							 </tr>
    									 <tr>
		      								<td style="padding: 0px; text-align: center !important;"><span class="table_q">육포</span></td>
		      								<td style="padding: 0px; text-align: center !important; background-color: rgb(228, 250, 250);">상세페이지 참조</td>
		      								<td style="padding: 0px; text-align: center !important;"><span class="table_q">제조일로부터 12~24개월</span></td>
		      								<td><span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">
											<b>[닭가슴살 육포 30g 2종] [제품 별도 표기]</b><br>
		        							오리지널 / 스파이시  <br><br>
                                			<b>[쇠고기 육포 15g] [12개월]</b><br>	
		        							</span></td>
		      							</tr>
                    					<tr>
		      								<td style="padding: 0px; text-align: center !important;"><span class="table_q">1인식/간편식</span></td>
		      								<td style="padding: 0px; text-align: center !important; background-color: rgb(228, 250, 250);">상세페이지 참조</td>
		      								<td style="padding: 0px; text-align: center !important;"><span class="table_q">제조일로부터 8~12개월</span></td>
		      								<td><span class="table_q" style="padding-top: 15px; padding-bottom: 15px; ">
                         					<b>[텐더 3종][제품별도 표기]</b><br>
                         					닭가슴살 BIG 치킨텐더 100g / 닭가슴살 BIG 치킨텐더 치즈 80g / PICK 미니 치킨텐더 100g <br> <br>
                        					<b>[허닭식단 간편 한끼 국밥 4종][12개월]</b><br>
                        					차돌짬뽕국밥 / 육개장국밥 / 소고기무국밥 / 미역국밥<br> <br>
                        					<b>[허닭식단 노릇하게 구운 주먹밥 100g 4종][제품별도 표기]</b><br>
		        							치즈김치볶음밥 주먹밥 /  간장불고기 주먹밥 / 치즈닭갈비 주먹밥 /  소불고기 주먹밥<br> <br>
                        					<b>[허닭식단 육즙 품은 직화 함박스테이크 2종][제품별도 표기]</b><br>
		        							오리지널맛 / 데미그라소스맛<br> <br>
                        					<b>[허닭식단 어묵바 3종][제품별도 표기]</b><br>
		        							햄 / 고추 / 오징어 <br>
		        							</span></td>
		      							</tr>
                     					<tr>
		      								<td style="padding: 0px; text-align: center !important;"><span class="table_q">드레싱/오일</span></td>
		      								<td style="padding: 0px; text-align: center !important; background-color: rgb(228, 250, 250);">상세페이지 참조</td>
		      								<td style="padding: 0px; text-align: center !important;"><span class="table_q">제조일로부터 12개월</span></td>
		      								<td><span class="table_q" style="padding-top: 15px; padding-bottom: 15px; "><b>[허닭 만능 파기름]</b><br>
		        							</span></td>
		      							</tr>
		    						</tbody>
		    					</table>
							</div>
						</div>
						<!-- 탭2 끝 -->
						<!-- 탭3: 배송/교환/환불 -->
						<div class="tab-pane" id="nav-about2" role="tabpanel"
							aria-labelledby="nav-about-tab">
							<p>배송/교환/환불</p>
							<hr>
							<img src="static/img/detail/delivery_change_refund.png">
						</div>
						<!-- 탭3 끝 -->
						<!-- 탭4: 리뷰 -->
						<div class="tab-pane" id="nav-mission" role="tabpanel"
							aria-labelledby="nav-mission-tab">
							<p>리뷰</p>
							<c:if test="${review2 != 0 }">
								<div style="text-align: right;">
									<p>총평점 : ${review1 }/5</p>
									<p>총개수 : ${review2 }</p>
								</div>
								<hr>
								<div style="text-align: left;">
								<c:forEach var="review" items="${reviewList }">
									<div class="detailReview">
										<div class="reviewInfo">작성날짜 :</div>
										<div class="reviewInfo">
											<fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss"
												value="${review.revDate }" />
										</div>
									</div>
									<br>
									<div class="detailReview">
										<div class="reviewInfo">평점 :</div>
										<div class="reviewInfo">${review.revStar }</div>
									</div>
									<br>
									<div class="detailReview">
										<div class="reviewInfo">내용 :</div>
										<div class="reviewInfo">${review.revContent }</div>
									</div>
									<br>
									<hr>
								</c:forEach>
								</div>
							</c:if>
							<c:if test="${review2 == 0 }">
								<hr>
								<div style="text-align: center;"><h1>작성된 리뷰가 없습니다!</h1></div>
							</c:if>
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