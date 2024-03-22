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

				</tbody>
			</table>
		</div>
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
let memNo;
let prodNo;
console.log(memNo);
$(document).ready(function() {
	insertcart();
  loadCartItems();
  function insertcart (){
	  memNo=${logMemNo};
	  prodNo=${prodNo};
	  $.ajax({
		  url: 'insertcart.do',
		  type: 'post',
		  data: { memNo: memNo, prodNo: prodNo },
		  dataTyep: 'json',
		  sueccess: function(data) {
			  console.log("성공")
		  } 
		  
	  })
  } 

  function loadCartItems() {
	  memNo=${logMemNo};
	  prodNo=${prodNo};
      $.ajax({
        url: 'listcartForm.do', 
        type: 'GET', 
        data: { memNo: memNo, prodNo: prodNo }, 
        dataType: 'json', 
        success: function(data) {
            var total = 0;
            $.each(data, function(index, item) {
                    var subtotal = item.cartQuant * item.prodPrice;
                    total += subtotal;
                    var row = '<tr>' +
                              '<th scope="row"><div class="d-flex align-items-center"><img src="static/img/' +item.prodImg+ '" class="img-fluid me-5 rounded-circle" style="width: 80px; height: 80px;"></div></th>' +
                              '<td><p class="mb-0 mt-4">' + item.prodName + '</p></td>' +
                              '<td><p class="mb-0 mt-4">' + item.prodPrice + ' 원</p></td>' +
                              '<td><div id="'+item.prodNo+'" class="input-group quantity mt-4" style="width: 100px;">' +
                              '<button class="btn btn-sm btn-minus rounded-circle bg-light border"><i class="fa fa-minus"></i></button>' +
                              '<input type="text" class="form-control form-control-sm text-center border-0" value="' + item.cartQuant + '">' +
                              '<button class="btn btn-sm btn-plus rounded-circle bg-light border"><i class="fa fa-plus"></i></button>' +
                              '</div></td>' +
                              '<td><p class="mb-0 mt-4">' + subtotal + ' 원</p></td>' +
                              '<td><button class="btn btn-md rounded-circle bg-light border mt-4 btn-delete-cart" data-cartno="'+item.cartNo+'"><i class="fa fa-times text-danger"></i></button></td>' +
                              '</tr>';
                    $('tbody').append(row);
                });

                $('p:contains("Subtotal:")').next().text('원' + total);
                var shipping = parseFloat($('p:contains("Flat rate:")').text().split(' 원')[1]);
                var grandTotal = total + shipping;
                $('p:contains("Total")').next().text('원' + grandTotal.toFixed(2));
            },
            error: function() {
                alert('장바구니 데이터를 불러오는 데 실패했습니다.');
            }
        });
    }
   var memNo = ${logMemNo };
  $(document).on('click', '.quantity button', function () { 
      var prodNo = $(this).parent().attr('id');
      var $button = $(this);
      
      console.log(prodNo);
      console.log("No:" + ${logMemNo });
      console.log($(this).parent());
      console.log("prodNo:", prodNo);
      console.log("memNo:", memNo);

      // var oldValue = $button.closest('.quantity').find('input').val();
      // var newVal = $button.hasClass('btn-plus') ? parseFloat(oldValue) + 1 : Math.max(1, parseFloat(oldValue) - 1);
      // $button.closest('.quantity').find('input').val(newVal);
     
      var oldValue = $button.closest('.quantity').find('input').val();
      var newVal = 0;
      if ($button.hasClass('btn-plus')) {
          newVal = parseFloat(oldValue) + 1;
      } else {
          if (oldValue > 1) {
              newVal = parseFloat(oldValue) - 1;
          } else {
              newVal = 1;
         }
     }
      $button.closest('.quantity').find('input').val(newVal);
      console.log(newVal); 

      // AJAX 요청을 통해 서버에 수량 변경을 알립니다.
      $.ajax({
          url: 'updatecart.do',
          type: 'POST',
          data: {
              memNo: memNo,
              prodNo: prodNo,
              cartQuant: newVal
          },
          success: function(response) {
              var result = JSON.parse(response);
              if(result.retCode === "OK") {
                  console.log('수량 업데이트 성공');
              } else {
                  alert('수량 업데이트 실패');
              }
          },
          error: function() {
              alert('서버 통신 오류');
          }
      });
  });

  function updateTotal() {
     var total = 0;
  $('tbody tr').each(function() {
      var price = parseFloat($(this).find('td:nth-child(3) p').text().replace('원'));
      var quantity = parseFloat($(this).find('.quantity input').val());
      var subtotal = price * quantity;
      total += subtotal;

      // 각 항목의 소계 업데이트 (선택적)
      $(this).find('td:nth-child(5) p').text(subtotal.toFixed(2) + ' 원');
  });

  // 화면에 총액 표시 업데이트
  $('.subtotal p').last().text('원' + total.toFixed(2));
  $('.total p').last().text('원' + total.toFixed(2));
  }
});

//AJAX 요청을 통해 장바구니 항목 삭제 기능
$(document).on('click', '.btn-delete-cart', function() {
    var cartNo = $(this).data('cartno');

    if(confirm('정말로 삭제 하실건가요')) {
        $.ajax({
            url: 'deletecart.do',
            type: 'POST',
            data: {
                cartNo: cartNo
            },
            success: function(response) {
                var result = JSON.parse(response);
                if(result.retCode === "OK") {
                    alert('삭제를 성공했습니다');
                    location.reload();
                } else {
                    alert('삭제를 실패했습니다');
                }
            },
            error: function() {
                alert('서버에러.');
            }
        });
    }
});


</script>
