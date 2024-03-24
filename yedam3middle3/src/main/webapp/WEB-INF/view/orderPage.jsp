<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="co.yedam.member.Member"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="//ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- 포트원 결제 -->
    <script src="https://cdn.iamport.kr/v1/iamport.js"></script>
    <!-- jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <!-- iamport.payment.js -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<!-- 포트원 결제 -->

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

${message }

<!-- 헤더 바디 사이 영역 -->
<div class="container-fluid page-header py-5">
	<h1 class="text-center text-white display-6">주문/결제</h1>
	<!--
	<ol class="breadcrumb justify-content-center mb-0">
		<li class="breadcrumb-item"><a href="#">Home</a></li>
		<li class="breadcrumb-item"><a href="#">Pages</a></li>
		<li class="breadcrumb-item active text-white">Cart</li>
	</ol>-->
</div>


<!-- 바디 영역 -->
<div class="container-fluid py-5">
	<div class="container py-5">
		<h1>주문/결제</h1>
		<hr>

		<br> <br> <br>

		<!-- 주문자정보 시작 -->
		<c:if test="${!empty logName }">
			<h4>주문자정보(회원)</h4>
			<hr>
			<div>
				<div class="orderInfoLabel">이름</div>
				<div class="orderInfoName">
						<input id="orderName1" value="${logName }">
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
					<input id="orderMail2" type="text" class="mailInput" style="width: 150px;">
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
		</c:if>
		<c:if test="${empty logName }">
			<h4>주문자정보(비회원)</h4>
			<hr>
			<div>
				<div class="orderInfoLabel">이름</div>
				<div class="orderInfoName">
						<input id="orderName1" value="">
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
					<input id="orderMail2" type="text" class="mailInput" style="width: 150px;">
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
		</c:if>
		<hr>
		<!-- input태그와 option태그 값 연결 자바스크립트 -->
		<script>
			let inputVal = document.querySelector('.mailInput');
			let optionVal1 = document.querySelector('#mailOption');
			optionVal1.addEventListener('change', function() {
				inputVal.value = optionVal1.value;
			})
		</script>
		<!-- 주문자정보 끝 -->

		<br> <br> <br>

		<!-- 배송정보 시작 -->
		<div class="orderInfoCheck">
			<h4>배송정보</h4>
		</div>
		<div class="orderInfoCheck" style="text-align: right">
			<label><input id="orderInfoEq" name="orderInfoEq" type="checkbox"
				onclick="infoEqCheck()">주문자정보와 동일</label>
		</div>
		<!-- 주문자정보 가져오기 -->
		<script>
			function infoEqCheck() {
				let orderInfoEq = document.querySelector('#orderInfoEq');
				let orderName1 = document.querySelector('#orderName1');
				let orderName2 = document.querySelector('#orderName2');
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
				<input id="orderName2" name="memName" type="text"
					style="width: 150px;">
			</div>
		</div>
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
				<label><input id="basicBtn" type="radio" value="basic" name="AddrRadio">기본배송지</label>
					<input type="hidden" class="orderName1">
				<label><input type="radio" value="new" name="AddrRadio" onclick="newAddrCheck()">신규배송지</label>
			</div>
		</div>
		
		<!-- 기본배송지 >> 주소 가져오기 -->
		<script>
			$(document).on('click', '#basicBtn', function(){
				var logMemNo = "<%= session.getAttribute("logMemNo") %>";
				$.ajax({
					url:'./basicAddr.do',
					type: 'POST',
					data: {logMemNo: logMemNo},
					dataType: 'json',
					success: function(data){
						for(let prop in data){
							let basicAddr = data[prop]
							let first = basicAddr.indexOf('(');
							let last = basicAddr.lastIndexOf('(');
							postcode.value = basicAddr.substr(1,5);
							address.value = basicAddr.substr(7,last-7).trim();
							extraAddress.value = basicAddr.substr(last);
							detailAddress.focus();
						}
					},
					error: function(){
						alert("오류");
					}
				})
			})
		</script>
		<!-- 신규배송지 >> 주소 초기화 -->
		<script>
			function newAddrCheck() {
				let basicBtn = document.querySelector('#basicBtn');
				document.querySelector('#postcode').value = '';
				document.querySelector('#address').value = '';
				document.querySelector('#detailAddress').value = '';
				document.querySelector('#extraAddress').value = '';
			}
		</script>
		<hr>
		<!-- 주소 업데이트 -->
		<div>
			<div class="orderInfoLabel">주소</div>
			<div class="orderInfoAddr">
				<input id="postcode" name="postcode" type="text" style="width: 100px;" placeholder="우편번호">
			</div>
			<div class="orderInfoAddr">
				<input type="button" style="display: inline-block;" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
			</div>
			<br>
			<div class="orderInfoLabel"></div>
			<div class="orderInfoAddr">
				<input id="address" name="address" type="text" style="width: 500px;" placeholder="주소">
			</div>
			<br>
			<div class="orderInfoLabel"></div>
			<div class="orderInfoAddr">			
				<input id="detailAddress" name="detailAddress" type="text" style="width: 500px;" placeholder="상세주소">
			</div>
			<br>
			<div class="orderInfoLabel"></div>
			<div class="orderInfoAddr">			
				<input id="extraAddress" name="extraAddress" type="text" style="width: 500px;" placeholder="참고항목">
			</div>
			<div class="orderInfoAddr">
				<button id="updateAddr">배송지 저장</button>
			</div>
		</div>
		<!-- 배송지 저장 -->
		<script>
			$(document).on('click', '#updateAddr', function(){
				var logMemNo = "<%= session.getAttribute("logMemNo") %>";
				let postcode = document.querySelector('#postcode').value;
				let address = document.querySelector('#address').value;
				let detailAddress = document.querySelector('#detailAddress').value;
				let extraAddress = document.querySelector('#extraAddress').value;
				$.ajax({
					url:'./updateAddr.do',
					type: 'POST',
					data: {postcode: postcode, address: address, detailAddress: detailAddress, extraAddress: extraAddress, logMemNo: logMemNo},
					dataType: 'json',
					success: function(data){
						alert("저장성공");
					},
					error: function(){
						alert("오류");
					}
				})
			})
		</script>
		<script>
    		function sample6_execDaumPostcode() {
       			new daum.Postcode({
            		oncomplete: function(data) {
                	// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                	// 각 주소의 노출 규칙에 따라 주소를 조합한다.
                	// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                	var addr = ''; // 주소 변수
               		var extraAddr = ''; // 참고항목 변수

                	//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                	if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                	    addr = data.roadAddress;
                	} else { // 사용자가 지번 주소를 선택했을 경우(J)
                	    addr = data.jibunAddress;
                	}

                	// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                	if(data.userSelectedType === 'R'){
                	    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                 	   // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                 	   if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                  	      extraAddr += data.bname;
                  		}
                   		// 건물명이 있고, 공동주택일 경우 추가한다.
                    	if(data.buildingName !== '' && data.apartment === 'Y'){
                     	   extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    	}
                    	// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    	if(extraAddr !== ''){
                       		extraAddr = ' (' + extraAddr + ')';
                    	}
                    	// 조합된 참고항목을 해당 필드에 넣는다.
                    	document.getElementById("extraAddress").value = extraAddr;
                
                	} else {
                    	document.getElementById("extraAddress").value = '';
                	}

                	// 우편번호와 주소 정보를 해당 필드에 넣는다.
                	document.getElementById('postcode').value = data.zonecode;
                	document.getElementById("address").value = addr;
                	// 커서를 상세주소 필드로 이동한다.
                	document.getElementById("detailAddress").focus();
            		}
        		}).open();
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
						let changeTotal4 = document.querySelector('#changeTotal4')
						let pointOfPrice = document.querySelector('#pointOfPrice')
						changeTotal.innerText = inputVal.value * "${param.prodPrice }";
						changeTotal2.innerText = inputVal.value * "${param.prodPrice }";
						changeTotal3.innerText = parseInt(inputVal.value * "${param.prodPrice }") + parseInt("${param.deliveryPrice}");
						changeTotal4.innerText = parseInt(inputVal.value * "${param.prodPrice }") + parseInt("${param.deliveryPrice}");
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
						name="deliveryRadio"  disalbed="true">신용카드</label> <label><input
						type="radio" value="최근배송지" name="deliveryRadio" disalbed="true">가상계좌</label> <label><input
						type="radio" value="신규배송지" name="deliveryRadio" disalbed="true">실시간 계좌이체</label> <label><input
						type="radio" value="신규배송지" name="deliveryRadio" disalbed="true">휴대폰결제</label> <label><input
						type="radio" value="신규배송지" name="deliveryRadio" disalbed="true">네이버페이</label> <label><input
						type="radio" value="신규배송지" name="deliveryRadio" checked>카카오페이</label> <label><input
						type="radio" value="신규배송지" name="deliveryRadio" disalbed="true">PAYKO</label> <label><input
						type="radio" value="신규배송지" name="deliveryRadio" disalbed="true">SSG PAY</label> <label><input
						type="radio" value="신규배송지" name="deliveryRadio" disalbed="true">토스</label>
				</form>
			</div>
		</div>
		<hr>
		<div>
			<div class="orderInfoLabel">최종결제금액</div>
			<div class="productPrice3">
				<h2 id="changeTotal4">${param.changeTotal + param.deliveryPrice }</h2>
			</div>
			<div class="productPrice3">
				<h2>원</h2>
			</div>
		</div>
		<hr>
		<!-- 결제정보 끝 -->

		<br> <br> <br>

		<div style="text-align: center">
			<button class="payment" type="commit" style="width: 150px; height: 75px;">주문하기</button>
			<button type="reset" style="width: 150px; height: 75px;">주문취소</button>
		</div>
	</div>
</div>
<!-- 바디 영역 끝 -->
<!-- 메일/전화 자동입력 스크립트 영역 -->
<script>
let mail = "${logMail}";
let splitMail = mail.split('@');
console.log(splitMail);
$('#orderMail1').val(splitMail[0]);
$('#orderMail2').val(splitMail[1]);

let phone = "${logPhone}";
let phoneAry = [];
if(phone.includes('-')){
	phoneAry = phone.split('-');
	$('#phoneOption').val(phoneAry[0]);
	$('#orderPhone1').val(phoneAry[1]);
	$('#orderPhone2').val(phoneAry[2]);
}else if(phone.length == 11){
	phoneAry.push(phone[0]+phone[1]+phone[2]);
	phoneAry.push(phone[3]+phone[4]+phone[5]+phone[6]);
	phoneAry.push(phone[7]+phone[8]+phone[9]+phone[10]);
	$('#phoneOption').val(phoneAry[0]);
	$('#orderPhone1').val(phoneAry[1]);
	$('#orderPhone2').val(phoneAry[2]);
}else if(phone.length == 10){
	phoneAry.push(phone[0]+phone[1]+phone[2]);
	phoneAry.push(phone[3]+phone[4]+phone[5]);
	phoneAry.push(phone[6]+phone[7]+phone[8]+phone[9]);
	$('#phoneOption').val(phoneAry[0]);
	$('#orderPhone1').val(phoneAry[1]);
	$('#orderPhone2').val(phoneAry[2]);
}
</script>
<!-- 메일/전화 자동입력 스크립트 영역 끝 -->
<!-- 결제 스크립트 영역 -->
<script>
document.addEventListener("DOMContentLoaded", function() {
const pName = '${param.prodName }';
	
var IMP = window.IMP;
var today = new Date();
var hours = today.getHours(); // 시
var minutes = today.getMinutes();  // 분
var seconds = today.getSeconds();  // 초
var milliseconds = today.getMilliseconds();
var makeMerchantUid = `${hours}` + `${minutes}` + `${seconds}` + `${milliseconds}`;

$('.payment').on('click', function () {
	let pPrice = $('#changeTotal4').text();
	let logid = "${logid }";
	if (confirm("구매 하시겠습니까?")) { // 구매 클릭시 한번 더 확인하기
            if (logid != null && logid != '') { // 회원만 결제 가능
                IMP.init("imp82376133"); // 가맹점 식별코드
                IMP.request_pay({
                    pg: 'kakaopay.TC0ONETIME', // PG사 코드표에서 선택
                    pay_method: 'card', // 결제 방식
                    merchant_uid: "PROD" + makeMerchantUid, // 결제 고유 번호
                    name: pName, // 제품명
                    amount: pPrice, // 가격
                    //구매자 정보 ↓
                    buyer_email: `${logMail}`,
                    buyer_name: `${logName}`,
                    // buyer_tel : '010-1234-5678',
                    // buyer_postcode : '123-456'
                    // buyer_addr : '서울특별시 강남구 삼성동',
                }, async function (rsp) { // callback
                    if (rsp.success) { //결제 성공시
                        console.log(rsp);
                        //결제 성공시 프로젝트 DB저장 요청부분
                       

                        if (response.status == prodPrice) { // DB저장 성공시
                            alert('결제 완료!')
                            window.location.reload();
                        } else { // 결제완료 후 DB저장 실패시
                            alert(`error:[${response.status}]\n결제요청이 승인된 경우 관리자에게 문의바랍니다.`);
                            // DB저장 실패시 status에 따라 추가적인 작업 가능성
                        }
                    } else if (rsp.success == false) { // 결제 실패시
                        alert(rsp.error_msg)
                    }
                });
            }
            else { // 비회원 결제 불가
                alert('로그인이 필요합니다!')
            }
        } else { // 구매 확인 알림창 취소 클릭시 돌아가기
            return false;
        }
})
});
</script>