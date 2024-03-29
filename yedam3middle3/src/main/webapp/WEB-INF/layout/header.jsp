<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="utf-8">
            <title>닭가슴살은? DaK!</title>
            <meta content="width=device-width, initial-scale=1.0" name="viewport">
            <meta content="" name="keywords">
            <meta content="" name="description">

            <!-- Google Web Fonts -->
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link
                href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap"
                rel="stylesheet">

            <!-- Icon Font Stylesheet -->
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
            <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

            <!-- Libraries Stylesheet -->
            <link href="static/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
            <link href="static/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


            <!-- Customized Bootstrap Stylesheet -->
            <link href="static/css/bootstrap.min.css" rel="stylesheet">

            <!-- Template Stylesheet -->
            <link href="static/css/style.css" rel="stylesheet">
        </head>

        <body>

            <!-- Spinner Start -->
            <div id="spinner"
                class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
                <div class="spinner-grow text-primary" role="status"></div>
            </div>
            <!-- Spinner End -->


            <!-- Navbar start -->
            <div class="container-fluid fixed-top">
                <div class="container topbar bg-primary d-none d-lg-block">
                    <div class="d-flex justify-content-between">
                        <div class="top-info ps-2">
                            <small class="me-3"><i class="fas fa-map-marker-alt me-2 text-secondary"></i> <a
                                    href="https://www.google.co.kr/maps/dir//%EB%8C%80%EA%B5%AC%EA%B4%91%EC%97%AD%EC%8B%9C+%EC%A4%91%EA%B5%AC+%EC%A4%91%EC%95%99%EB%8C%80%EB%A1%9C+403/data=!4m8!4m7!1m0!1m5!1m1!1s0x3565e3c3c8af5edd:0x323d8951a9d8b08a!2m2!1d128.5932375!2d35.8690295?hl=ko&entry=ttu"
                                    class="text-white">대구광역시 중구 중앙대로 403</a></small>
                            <small class="me-3"><i class="fas fa-envelope me-2 text-secondary"></i><a
                                    href="mailto:project.yedam.help@gmail.com"
                                    class="text-white">project.yedam.help@gmail.com</a></small>
                        </div>
                        <div class="top-link pe-2">
                            <c:choose>
                                <c:when test="${!empty logid }">
                                    <a href="logout.do" class="text-white"><small
                                            class="text-white mx-2">로그아웃</small></a>
                                </c:when>
                                <c:otherwise>
                                    <a href="loginForm.do" class="text-white"><small
                                            class="text-white mx-2">로그인</small>/</a>
                                    <a href="addMemberForm.do" class="text-white"><small
                                            class="text-white mx-2">회원가입</small></a>
                                </c:otherwise>
                            </c:choose>

                        </div>
                    </div>
                </div>
                <div class="container px-0">
                    <nav class="navbar navbar-light bg-white navbar-expand-xl">
                        <a href="main.do" class="navbar-brand">
                            <h1 class="text-primary display-6">DaK!</h1>
                        </a>
                        <button class="navbar-toggler py-2 px-3" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarCollapse">
                            <span class="fa fa-bars text-primary"></span>
                        </button>
                        <div class="collapse navbar-collapse bg-white" id="navbarCollapse">
                            <div class="navbar-nav mx-auto">
                                <a href="productList.do?pagetype=all" class="nav-item nav-link">전체상품</a>
                                <a href="productList.do?pagetype=new" class="nav-item nav-link">신상품</a>
                                <a href="productList.do?pagetype=sale" class="nav-item nav-link">할인</a>
                                <a href="productList.do?pagetype=best" class="nav-item nav-link">베스트</a>
                                <a href="productList.do?pagetype=single" class="nav-item nav-link">1팩담기</a>
                                <!-- <div class="nav-item dropdown">
                            <a href="#" class="nav-item nav-link active">Home</a>
                            <a href="shop.html" class="nav-item nav-link">Shop</a>
                            <a href="shop-detail.html" class="nav-item nav-link">Shop Detail</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                                <div class="dropdown-menu m-0 bg-secondary rounded-0">
                                    <a href="cart.html" class="dropdown-item">Cart</a>
                                    <a href="chackout.html" class="dropdown-item">Chackout</a>
                                    <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                                    <a href="404.html" class="dropdown-item">404 Page</a>
                                </div>
                            </div> -->
                                <a href="eventList.do" class="nav-item nav-link">이벤트</a>
                            </div>
                        </div>
                        <div id="icons" class="d-flex m-3 me-0">
                            <button
                                class="btn-search btn border border-secondary btn-md-square rounded-circle bg-white me-4"
                                data-bs-toggle="modal" data-bs-target="#searchModal">
                                <i class="fas fa-search text-primary"></i></button>
                            <a onClick="bag()" class="position-relative me-4 my-auto" href="#">
                                <i class="fa fa-shopping-bag fa-2x"></i>
                                <!-- <span class="position-absolute bg-secondary rounded-circle d-flex align-items-center justify-content-center text-dark px-1"
                                    style="top: -5px; left: 15px; height: 20px; min-width: 20px;">3</span> -->
                            </a>

                            <a onClick="my()" class="my-auto" href="#">
                                <i class="fas fa-user fa-2x"></i>
                            </a>
                        </div>
                </div>
                </nav>
            </div>
            </div>
            <!-- Navbar End -->

            <!-- Modal Search Start -->
            <div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog modal-fullscreen">
                    <div class="modal-content rounded-0">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">검색창</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body d-flex align-items-center">
                            <div class="input-group w-75 mx-auto d-flex">
                                <input type="search" class="form-control p-3" placeholder="keywords"
                                    aria-describedby="search-icon-1">
                                <span id="search-icon-1" class="input-group-text p-3"><i
                                        class="fa fa-search"></i></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Modal Search End -->

            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            <script>

                let memNo1 = null;
                $('div .input-group').on('change', function () {

                    location.href = 'mainsearch.do?pagetype=all&search=' + $('div .input-group input').val()
                }
                )
                function bag() {
                    if (${ !empty logid }) {
                        window.location.href = 'cart.do'
                    }else {
                        alert('로그인 후 이용이 가능합니다.')
                    }
                }
                function my() {
                    if (${ !empty logid }) {
                        window.location.href = 'myPage.do'
                    }else {
                        alert('로그인 후 이용이 가능합니다.')
                    }
                }

                if (${ !empty logMemNo }) {
                    memNo1 = '${logMemNo}';

                }
                if (window.location.href.indexOf('cart.do') >= 0 && ${empty logid } ) {
                    alert('로그인 후 이용가능합니다.')
                    window.location = 'main.do'
                }
                if (window.location.href.indexOf('orderPage.do') >= 0 && ${empty logid } ) {
                    alert('로그인 후 이용가능합니다.')
                    history.go(-2)

                }

                function countercart() {
                    $.ajax({
                        url: 'cartlistcount.do',
                        type: 'GET',
                        data: { memNo: memNo1 },
                        dataType: 'json',
                        success: function (result) {
                            $('#icons :nth-child(2)').append(
                                $('<span class="position-absolute bg-secondary rounded-circle d-flex align-items-center justify-content-center text-dark px-1" style="top: -5px; left: 15px; height: 20px; min-width: 20px;"/>').text(result.length)
                            )
                        },
                        error: function (err) {
                            console.log(err);
                            alert('장바구니 데이터를 불러오는 데 실패했습니다.');
                        }
                    });
                }
                window.addEventListener('DOMContentLoaded', function () {
                    if (memNo1 != null) {
                        countercart();

                    } else {
                        $('#icons :nth-child(2)').append(
                            $('<span class="position-absolute bg-secondary rounded-circle d-flex align-items-center justify-content-center text-dark px-1" style="top: -5px; left: 15px; height: 20px; min-width: 20px;"/>').text('0')
                        )
                    }
                })



            </script>
            <div class="container-fluid page-header"></div>