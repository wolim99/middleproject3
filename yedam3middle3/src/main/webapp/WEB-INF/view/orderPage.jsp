<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="co.yedam.member.Member"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="//ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style>
div.orderInfoLabel {
	display: inline-block;
	margin-right: 200px;
	width: 100px;
}

div.orderName1, div.orderName2, div.orderPhone1, div.orderPhone2, div.orderPhone3,
	div.orderPhone4 {
	display: inline-block;
}

div.orderInfoId, div.orderInfoName, div.orderInfoMail, div.orderInfoPhone,
	div.orderInfoDelivery, div.orderInfoAddr, div.orderInfoMessage, div.orderInfoCheck,
	div.orderInfoPay, div.productPrice1, div.productPrice2, div.productPrice3
	{
	display: inline-block;
}

div.orderInfoPay {
	width: 500px;
}
</style>
<!-- 사용자 주소 업데이트 -->



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

		<br> <br> <br>

		<!-- 주문자정보 시작 -->
		<h4>주문자정보</h4>
		<hr>
		<div>
			<div class="orderInfoLabel">이름</div>
			<div class="orderInfoName">
				<input class="orderName1" type="text" name="memNaem">
			</div>
		</div>
		<hr>
		<div>
			<div class="orderInfoLabel">이메일</div>

			<div class="orderInfoMail">
				<input id="orderMail1" type="text" style="width: 150px;">
			</div>
			<div class="orderInfoMail">@</div>
			<div class="orderInfoMail">
				<input id="orderMail2" type="text" class="mailInput"
					style="width: 150px;">
			</div>
			<div class="orderInfoMail">
				<select id="mailOption">
					<option selected disabled>---------------</option>
					<option value="naver.com">naver.com</option>
					<option value="nate.com">nate.com</option>
					<option value="gmail.com">gmail.com</option>
					<option value="hanmail.com">hanmail.com</option>
				</select>
			</div>
		</div>
		<!-- input태그와 option태그 값 연결 자바스크립트 -->
		<script>
			let inputVal = document.querySelector('.mailInput');
			let optionVal1 = document.querySelector('#mailOption');
			optionVal1.addEventListener('change', function() {
				inputVal.value = optionVal1.value;
			})
		</script>
		<hr>
		<div>
			<div class="orderInfoLabel">연락처</div>
			<div class="orderInfoPhone">
				<select id="phoneOption">
					<option value="010" selected>010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="018">018</option>
					<option value="019">019</option>
				</select>
			</div>
			<div class="orderInfoPhone">-</div>
			<div class="orderInfoPhone">
				<input id="orderPhone1" type="text" style="width: 70px;">
			</div>
			<div class="orderInfoPhone">-</div>
			<div class="orderInfoPhone">
				<input id="orderPhone2" type="text" style="width: 70px;">
			</div>
		</div>
		<hr>
		<!-- 주문자정보 끝 -->

		<br> <br> <br>

		<!-- 배송정보 시작 -->
		<div class="orderInfoCheck">
			<h4>배송정보</h4>
		</div>
		<div class="orderInfoCheck" style="text-align: right">
			<input class="orderInfoEq" name="orderInfoEq" type="checkbox"
				onclick="infoEqCheck()"><label>주문자정보와 동일</label>
		</div>
		<!-- 주문자정보 가져오기 -->
		<script>
			function infoEqCheck() {
				let orderInfoEq = document.querySelector('.orderInfoEq');
				let orderName1 = document.querySelector('#orderName1');
				let orderName2 = document.querySelector('.orderName2');
				let orderPhone1 = document.querySelector('#orderPhone1');
				let orderPhone2 = document.querySelector('#orderPhone2');
				let orderPhone3 = document.querySelector('#orderPhone3');
				let orderPhone4 = document.querySelector('#orderPhone4');
				if (orderInfoEq.checked) {
					orderName2.value = orderName1.value;
					orderPhone3.value = orderPhone1.value;
					orderPhone4.value = orderPhone2.value;
				}
			}
		</script>
		<hr>
		<div>
			<div class="orderInfoLabel">수령인</div>
			<div class="orderInfoId">
				<input class="orderName2" name="memName" type="text"
					style="width: 150px;">
			</div>
		</div>
		<hr>
		<div>
			<div class="orderInfoLabel">연락처1</div>
			<div class="orderInfoPhone">
				<select id="phoneOption">
					<option value="02" selected>02</option>
					<option value="031">031</option>
					<option value="032">032</option>
					<option value="033">033</option>
					<option value="041">041</option>
					<option value="042">042</option>
					<option value="043">043</option>
					<option value="051">051</option>
					<option value="052">052</option>
					<option value="053">053</option>
					<option value="054">054</option>
					<option value="055">055</option>
					<option value="061">061</option>
					<option value="062">062</option>
					<option value="063">063</option>
					<option value="064">064</option>
				</select>
			</div>
			<div class="orderInfoPhone">-</div>
			<div class="orderInfoPhone">
				<input type="text" style="width: 70px;">
			</div>
			<div class="orderInfoPhone">-</div>
			<div class="orderInfoPhone">
				<input type="text" style="width: 70px;">
			</div>
		</div>
		<hr>
		<div>
			<div class="orderInfoLabel">연락처2</div>
			<div class="orderInfoPhone">
				<select id="phoneOption">
					<option value="010" selected>010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="018">018</option>
					<option value="019">019</option>
				</select>
			</div>
			<div class="orderInfoPhone">-</div>
			<div class="orderInfoPhone">
				<input id="orderPhone3" type="text" style="width: 70px;">
			</div>
			<div class="orderInfoPhone">-</div>
			<div class="orderInfoPhone">
				<input id="orderPhone4" type="text" style="width: 70px;">
			</div>
		</div>
		<hr>
		
		<div>
			<div class="orderInfoLabel">배송지선택</div>
			<div class="orderInfoDelivery">
				<label><input type="radio" value="basic" name="AddrRadio" id="basicAddr">기본배송지</label>
					<input type="hidden" class="orderName1">
				<label><input type="radio" value="new" name="AddrRadio"
					onclick="newAddrCheck2()">신규배송지</label>
			</div>
		</div>
		
		<!-- 기본배송지 >> 주소 가져오기 -->
		<script>
			/*
			$('#basicAddr').on('click', function(){
				//alert("1");
				let orderName = document.querySelector('.orderName1');
				//alert(orderName.value);
				//let basicAddr = "${basicAddr}"
				//document.querySelector('#orderAddr').value = basicAddr;
			}*/
		</script>
		<!-- 신규배송지 >> 주소 초기화 -->
		<script>
			function newAddrCheck2() {
				document.querySelector('#orderAddr').value = '';
			}
		</script>
		<hr>
		<!-- 주소 업데이트 -->

		<div>
			<div class="orderInfoLabel">주소</div>
			<div class="orderInfoAddr">
				<input type="text" style="width: 100px;">
			</div>
			<div class="orderInfoAddr">
				<button>우편번호</button>
			</div>
			<div class="orderInfoAddr">
				<input id="orderAddr" name="memAddr" type="text"
					style="width: 500px;">
			</div>
			<div class="orderInfoAddr">				
				<input id="updateAddr" type="submit" value="배송지 저장">
			</div>
		</div>
		<script>
			function updateAddr(){
				let updateAddr = document.querySelector('#updateAddr');
				let orderName2 = document.querySelector('#orderName2');
				let orderAddr = document.querySelector('#orderAddr');
				if(orderName2.value == null || orderAddr.value == null){
					alert("${message1}");
				}
			}
		</script>
		<hr>
		<div>
			<div class="orderInfoLabel">배송메시지</div>
			<div class="orderInfoMessage">
				<textarea id="messageTextarea" style="width: 300px;"></textarea>
			</div>
		</div>
		<div>
			<div class="orderInfoLabel"></div>
			<div class="orderInfoMessage">
				<select id="messageOption">
					<option selected disabled>배송 메시지를 선택해주세요.</option>
					<option value="직접 수령할게요">직접 수령할게요</option>
					<option value="문앞 수령할게요">문앞 수령할게요</option>
					<option value="경비실에 맡겨주세요">경비실에 맡겨주세요</option>
				</select>
			</div>
		</div>
		<!-- textarea태그와 option태그 값 연결 -->
		<script>
			let textareaVal = document.querySelector('#messageTextarea');
			let optionVal2 = document.querySelector('#messageOption');
			optionVal2.addEventListener('change', function() {
				textareaVal.value = optionVal2.value;
			})
		</script>
		<hr>

		<!-- 배송정보 끝 -->

		<br> <br> <br>

		<!-- 상품정보 시작 -->
		<h4>상품정보</h4>
		
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
								<img src="static/img/${param.prodImg }"
									class="img-fluid me-5" style="width: 100px; height: 100px;"
									alt="">
							</div>
						</th>
						<td>
							<p class="mb-0 mt-4">${param.prodName }</p>
						</td>
						<td>
							<div>
								<c:if test="${param.prodComp eq 'single' }">									
									<input id="prodCnt" type="number" min="1" max="50" value="${param.prodCnt }" style="width: 80px;">
									<p>(최대 50개)</p>
								</c:if>	
								<c:if test="${param.prodComp eq 'package' }">
									<p class="mb-0 mt-4">${param.cnt }개</p>
								</c:if>			
							</div>
						</td>
						<td>
							<p class="mb-0 mt-4">${param.deliveryPrice }</p>
						</td>
						<td>
							<p class="mb-0 mt-4">적립</p>
						</td>
						<td>
							<div>							
								<p id="changeTotal" class="mb-0 mt-4">${param.changeTotal }</p>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<script>
			$('#prodCnt').on('change', function(){
				$.ajax("./orderPage.do")
					.done(function(){
						let inputVal = document.querySelector('#prodCnt')
						let changeTotal = document.querySelector('#changeTotal')
						let changeTotal2 = document.querySelector('#changeTotal2')
						let changeTotal3 = document.querySelector('#changeTotal3')
						let pointOfPrice = document.querySelector('#pointOfPrice')
						changeTotal.innerText = inputVal.value * "${param.prodPrice }";
						changeTotal2.innerText = inputVal.value * "${param.prodPrice }";
						changeTotal3.innerText = parseInt(inputVal.value * "${param.prodPrice }") + parseInt("${param.deliveryPrice}");
						pointOfPrice.innerText = Math.round(changeTotal3.innerText * 0.01);
					})
			})
		</script>
		<div style="text-align: right;">
			<div class="productPrice1">주문금액:</div>
			<div id="changeTotal2" class="productPrice1">${param.changeTotal }</div>
			<div class="productPrice1">원 + 배송비:</div>
			<div class="productPrice1">${param.deliveryPrice }</div>
			<div class="productPrice1">원 / 최종금액:</div>
			<div id="changeTotal3" class="productPrice1">${param.changeTotal + param.deliveryPrice }</div>
			<div class="productPrice1">원</div>
		</div>
		<div style="text-align: right;">
			<div class="productPrice2">(적립예정:</div>
			<div id="pointOfPrice" class="productPrice2"><fmt:formatNumber value="${(param.changeTotal + param.deliveryPrice) * 0.01 }" pattern="0"></fmt:formatNumber></div>
			<div class="productPrice2">원)</div>
		</div>
		<!-- 상품정보 끝 -->

		<br> <br> <br>

		<!-- 결제정보 시작 -->
		<h4>결제정보</h4>
		<hr>
		<div>
			<div class="orderInfoLabel">결제방법</div>
			<div class="orderInfoPay">
				<form>
					<label><input type="radio" value="기본배송지"
						name="deliveryRadio" checked>신용카드</label> <label><input
						type="radio" value="최근배송지" name="deliveryRadio">가상계좌</label> <label><input
						type="radio" value="신규배송지" name="deliveryRadio">실시간 계좌이체</label> <label><input
						type="radio" value="신규배송지" name="deliveryRadio">휴대폰결제</label> <label><input
						type="radio" value="신규배송지" name="deliveryRadio">네이버페이</label> <label><input
						type="radio" value="신규배송지" name="deliveryRadio">카카오페이</label> <label><input
						type="radio" value="신규배송지" name="deliveryRadio">PAYKO</label> <label><input
						type="radio" value="신규배송지" name="deliveryRadio">SSG PAY</label> <label><input
						type="radio" value="신규배송지" name="deliveryRadio">토스</label>
				</form>
			</div>
		</div>
		<hr>
		<div>
			<div class="orderInfoLabel">최종결제금액</div>
			<div class="productPrice3">
				<h2>20000</h2>
			</div>
			<div class="productPrice3">
				<h2>원</h2>
			</div>
		</div>
		<hr>
		<!-- 결제정보 끝 -->

		<br> <br> <br>

		<div style="text-align: center">
			<button type="commit" style="width: 150px; height: 75px;">주문하기</button>
			<button type="reset" style="width: 150px; height: 75px;">주문취소</button>
		</div>
	</div>
</div>
<!-- 바디 영역 끝 -->