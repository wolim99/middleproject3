<%@ page import="co.yedam.member.Cart" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- Cart Page Start -->
<div class="container-fluid py-5">
	<div class="container py-5">
		<div class="table-responsive">
			<table class="table">
				<thead>
					<tr>
						<th scope="col">Products</th>
						<th scope="col">Name</th>
						<th scope="col">Price</th>
						<th scope="col">  Quantity</th>
						<th scope="col">Total</th>
						<th scope="col">Handle</th>
					</tr>
				</thead>
				<tbody>
				<!-- 바나나 샘플 -->
					<tr>
						<th scope="row">
							<div class="d-flex align-items-center">
								<img src="img/vegetable-item-3.png"
									class="img-fluid me-5 rounded-circle"
									style="width: 80px; height: 80px;" alt="">
							</div>
						</th>
						<td>
							<p class="mb-0 mt-4">Big Banana</p>
						</td>
						<td>
							<p class="mb-0 mt-4">2.99 $</p>
						</td>
						<td>
							<div class="input-group quantity mt-4" style="width: 100px;">
								<div class="input-group-btn">
									<button
										class="btn btn-sm btn-minus rounded-circle bg-light border">
										<i class="fa fa-minus"></i>
									</button>
								</div>
								<input type="text"
									class="form-control form-control-sm text-center border-0"
									value="1">
								<div class="input-group-btn">
									<button
										class="btn btn-sm btn-plus rounded-circle bg-light border">
										<i class="fa fa-plus"></i>
									</button>
								</div>
							</div>
						</td>
						<td>
							<p class="mb-0 mt-4">2.99 $</p>
						</td>
						<td>
							<button class="btn btn-md rounded-circle bg-light border mt-4">
								<i class="fa fa-times text-danger"></i>
							</button>
						</td>
					</tr>
					<!-- 바나나 샘플 코드 -->
				</tbody>
			</table>
		</div>
		<!-- 쿠폰 적용
		 <div class="mt-5">
			<input type="text"
				class="border-0 border-bottom rounded me-5 py-3 mb-4"
				placeholder="Coupon Code">
			<button
				class="btn border-secondary rounded-pill px-4 py-3 text-primary"
				type="button">Apply Coupon</button>
		</div>
		   -->
		<div class="row g-4 justify-content-end">
			<div class="col-8"></div>
			<div class="col-sm-8 col-md-7 col-lg-6 col-xl-4">
				<div class="bg-light rounded">
					<div class="p-4">
						<h1 class="display-6 mb-4">
							Cart <span class="fw-normal">Total</span>
						</h1>
						<div class="d-flex justify-content-between mb-4">
							<h5 class="mb-0 me-4">Subtotal:</h5>
							<p class="mb-0">$96.00</p>
						</div>
						<!-- 배송비
						<div class="d-flex justify-content-between">
							<h5 class="mb-0 me-4">Shipping</h5>
							<div class="">
								<p class="mb-0">Flat rate: $3.00</p>
							</div>
						</div>
						<p class="mb-0 text-end">Shipping to Ukraine.</p>
						 -->
					</div>
					<div
						class="py-4 mb-4 border-top border-bottom d-flex justify-content-between">
						<h5 class="mb-0 ps-4 me-4">Total</h5>
						<p class="mb-0 pe-4">$99.00</p>
					</div>
					<button
						class="btn border-secondary rounded-pill px-4 py-3 text-primary text-uppercase mb-4 ms-4"
						type="button">Proceed Checkout</button>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Cart Page End -->
<script>
$(document).ready(function() {
  loadCartItems();

  function loadCartItems() {
      $.ajax({
        url: 'listcartForm.do', 
        type: 'GET', 
        data: { memNo:3 }, 
        dataType: 'json', 
        success: function(data) {
            var total = 0;
            $.each(data, function(index, item) {
                    var subtotal = item.cartQuant * item.prodPrice;
                    total += subtotal;
                    var row = '<tr>' +
                              '<th scope="row"><div class="d-flex align-items-center"><img src="static/img/' +item.prodImg+ '" class="img-fluid me-5 rounded-circle" style="width: 80px; height: 80px;" alt=""></div></th>' +
                              '<td><p class="mb-0 mt-4">' + item.prodName + '</p></td>' +
                              '<td><p class="mb-0 mt-4">' + item.prodPrice + ' 원</p></td>' +
                              '<td><div class="input-group quantity mt-4" style="width: 100px;">' +
                              '<button class="btn btn-sm btn-minus rounded-circle bg-light border"><i class="fa fa-minus"></i></button>' +
                              '<input type="text" class="form-control form-control-sm text-center border-0" value="' + item.cartQuant + '">' +
                              '<button class="btn btn-sm btn-plus rounded-circle bg-light border"><i class="fa fa-plus"></i></button>' +
                              '</div></td>' +
                              '<td><p class="mb-0 mt-4">' + subtotal + ' 원</p></td>' +
                              '<td><button class="btn btn-md rounded-circle bg-light border mt-4"><i class="fa fa-times text-danger"></i></button></td>' +
                              '</tr>';
                    $('tbody').append(row);
                });

                $('p:contains("Subtotal:")').next().text('$' + total);
                var shipping = parseFloat($('p:contains("Flat rate:")').text().split('$')[1]);
                var grandTotal = total + shipping;
                $('p:contains("Total")').next().text('$' + grandTotal.toFixed(2));
            },
            error: function() {
                alert('장바구니 데이터를 불러오는 데 실패했습니다.');
            }
        });
    }
});
</script>
