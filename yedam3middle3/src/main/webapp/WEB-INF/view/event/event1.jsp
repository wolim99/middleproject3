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
                        <p class="mb-4"> [모음전] 프레시지 밀키트 신제품 & BEST 모음전</p>
                    </div>
                    <div class="col-12">
                        <img src="static/img/main/eventContent1.jpg" width="100%" height="auto">
                    </div>
                    <div class="col-lg-12">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="event" class="container py-5 fruite p-5 bg-light rounded">
        <div class="col-lg-12" style="text-align: right;">
            <div id="list" class="row g-5 justify-content-center">
            </div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script>
        function showlist(pos) {
            console.log(pos)
            $.ajax({
                url: 'plist.do',
                dataType: 'json'
            }).done(function (result) {
                console.log(result);
                result.forEach((item, idx) => {
                    let realPrice = 0;
                    let salePer = '';
                    if(item.prodName.indexOf('[fresheasy]')==-1&&item.prodName.indexOf('[프레시지]')==-1){
                        return;
                    }
                    if (item.prodSale != 0) {
                        realPrice = item.prodPrice - (Math.round(item.prodPrice * item.prodSale / 100) * 100);
                        salePer = Math.ceil(item.prodSale * 100) + '%';
                    } else {
                        realPrice = item.prodPrice
                    }
                    if(salePer!=0){
                        $('#' + pos + ' #list').append(
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
                        $('#' + pos + ' #list').append(
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
            }).fail(function (err) {
                console.log(err);
            });
        }
        showlist('event');
    </script>
    <!-- Content End -->