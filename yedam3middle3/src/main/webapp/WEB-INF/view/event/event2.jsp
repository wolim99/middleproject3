<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <!-- Content Start -->
    <div class="container-fluid contact py-5">
        <div class="container py-5">
            <div class="p-5 bg-light rounded">
                <div class="row g-4">
                    <div style="text-align: left;">
                        <button type="button" onClick="history.go(-1)"
                            class="btn border border-secondary rounded-pill px-3 text-primary">
                            <span>←</span>
                        </button>
                    </div>
                    <div class="text-center mx-auto" style="max-width: 700px;">
                        <p class="mb-4"> [이벤트] 33데이 특가!!!</p>
                        <hr>
                    </div>
                    <div class="col-12">
                        <img src="static/img/main/eventContent2.jpg" width="100%" height="auto">
                    </div>
                    <div class="col-lg-12">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="event" class="container py-5 fruite p-5 bg-light rounded">
        <div class="col-lg-12" style="text-align: right;">
            <div style="text-align: left;">
                <span>33데이 세일 특별가!</span>
                <hr>
            </div>
            <div id="list" class="row g-5 justify-content-center product-item">
            </div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script>
        function showlist(pos, name) {
            $.ajax({
                url: 'plist.do',
                method: 'post',
                dataType: 'json'
            }).done(function (result) {
                let realPrice = 0;
											let salePer = '';
											let soldout = '';
											let soldoutClass = '';
											let soldCk = '';
											let soldDiv ={};
                                            if (item.prodName.indexOf(name) == -1) {
                        return;
                    }
											if(item.prodSale != 0){
												realPrice = item.prodPrice - (Math.round(item.prodPrice*item.prodSale/100)*100);
												salePer = Math.ceil(item.prodSale*100) + '%';
											}else{
												realPrice = item.prodPrice
											}
											if(item.prodStock == 0){
												soldoutClass = 'class="text-white bg-danger px-3 py-1 rounded position-absolute" style="top: 30%; left: 33%;"';
												soldout = 'Sold Out';
												soldCk = 'disalbed';
												soldDiv = {
														'position' : 'absolute',
												        'top' : '0',
												        'left' : '0',
												        'width' : '100%',
												        'height' : '100%',
												        'border-radius' : '10px',
											            'backgroundColor' : 'rgba(0, 0, 0, 0.2)',
											            'zIndex' : '9'
											        };
											}
                    $('#' + pos + ' #list').append(
							$('<div class="product' + item.prodNo + ' col-md-6 col-lg-6 col-xl-4" ></div>').append(
								$('<a href="detailPage.do?prodNo=' + item.prodNo + '"></a>').append(
									$('<div class="rounded position-relative fruite-item"></div>').append(
										$('<div class="fruite-img">').append(
											$('<img src="static/img/' + item.prodImg + '" class="img-fluid w-100 rounded-top" alt="">'))
										, $('<div />').css(soldDiv).append(
											$('<div ' + soldoutClass + '>').text(soldout))
										, $('<div class="text-white bg-secondary px-3 py-1 rounded position-absolute" style="top: 10px; left: 10px;">').text(item.prodType)
										//,$('<div '+soldoutClass+'>')
										, $('<div class="p-4 border border-secondary border-top-0 rounded-bottom"></div>').append(
											$('<p />').text('[' + item.prodBrand + ']' + item.prodName).css({ 'height': '48px', 'color': 'black' })
											, $('<div class="d-flex justify-content-between flex-lg-wrap">').append(
												$('<dl class="d-flex justify-content-between flex-lg-wrap" />').append(
													$('<dt />').append(
														$('<h3 />').text(salePer).css({ 'color': 'red' }).css({ 'margin': '8px 0px' }))
													, $('<dd />').append(
														$('<span />').append(
															$('<del />').text(item.prodPrice + '원')).css({ 'margin': '0px', 'color': 'grey' })
														, $('<span />').append(
															$('<h5 />').text(realPrice + '원').css({ 'margin': '0px' }))).css({ 'margin-left': '8px' })
												).css({ 'margin': '0px' })
												, $('<a href="#" id="' + item.prodNo + '" class="cartLink btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag"></i></a>').css({ 'height': '48px', 'padding-top': '9px' })))
									)
								)
							)
						)
                })
            }).fail(function (err) {
                console.log(err);
            });
        }
        document.addEventListener("DOMContentLoaded", function () {
				$('.product-item').on('click', '.cartLink', function (e) {
					e.preventDefault();
					let logid = "${logid }";
					let pNo = $(this).attr('id');
					if (logid != null && logid != '') { //로그인상태
						//console.log("id: "+logid+" "+"no: "+pNo+" insertcart.do?prodNo="+pNo);
						//insert.do
						window.location.href = "insertcart.do?prodNo=" + pNo;
					} else { //비로그인 상태
						alert('로그인이 필요합니다!');
						//reload
						window.location.reload();
					}
				})
			})
        showlist('event', '잡곡밥 도시락 6종 6팩');
        showlist('event', '그릴 닭가슴살 스테이크 6종 12팩');
        showlist('event', '어묵바 3종 혼합10팩');
        showlist('event', 'pick 통닭다리 3종 혼합 6팩');
    </script>
    <!-- Content End -->