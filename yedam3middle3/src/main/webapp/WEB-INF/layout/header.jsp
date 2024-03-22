<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="utf-8">
            <title>예담 3강의실 중간프로젝트 3조</title>
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
                            <small class="me-3"><i class="fas fa-map-marker-alt me-2 text-secondary"></i> <a href="#"
                                    class="text-white">123 Street, New York</a></small>
                            <small class="me-3"><i class="fas fa-envelope me-2 text-secondary"></i><a href="mailto:project.yedam.help@gmail.com"
                                    class="text-white">project.yedam.help@gmail.com</a></small>
                        </div>
                        <div class="top-link pe-2">
                            <c:choose>
                                <c:when test="${!empty logid }">
                                    <a href="logout.do" class="text-white"><small
                                            class="text-white mx-2">로그아웃</small></a>
                                </c:when>
                                <c:otherwise>
                                    <a href="#" data-bs-toggle="modal" data-bs-target="#loginModal"><small class="text-white mx-2" >로그인</small>/</a>
                                    <a href="addMemberForm.do" class="text-white"><small class="text-white mx-2">회원가입</small></a>
                                </c:otherwise>
                            </c:choose>

                        </div>
                    </div>
                </div>
                <div class="container px-0">
                    <nav class="navbar navbar-light bg-white navbar-expand-xl">
                        <a href="main.do" class="navbar-brand">
                            <h1 class="text-primary display-6">닭가슴살</h1>
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
                        <div class="d-flex m-3 me-0">
                            <button
                                class="btn-search btn border border-secondary btn-md-square rounded-circle bg-white me-4"
                                data-bs-toggle="modal" data-bs-target="#searchModal"><i
                                    class="fas fa-search text-primary"></i></button>
                            <a href="#" class="position-relative me-4 my-auto">
                                <i class="fa fa-shopping-bag fa-2x"></i>
                                <span
                                    class="position-absolute bg-secondary rounded-circle d-flex align-items-center justify-content-center text-dark px-1"
                                    style="top: -5px; left: 15px; height: 20px; min-width: 20px;">3</span>
                            </a>

                            <a href="myPage.do" class="my-auto">
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
            <!-- 모달 -->
<div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="loginModalLabel">로그인</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <!-- 여기에 로그인 폼을 삽입 -->
          <c:if test="${!empty message }">
            <p style="color: red;">${message}</p>
          </c:if>
          <form action="login.do" method="post">
            <div class="mb-3">
              <label for="memId" class="form-label">아이디</label>
              <input type="text" class="form-control" id="memId" name="memId">
            </div>
            <div class="mb-3">
              <label for="memPw" class="form-label">비밀번호</label>
              <input type="password" class="form-control" id="memPw" name="memPw">
            </div>
            <div class="text-center">
              <button type="submit" class="btn btn-primary">로그인</button>
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" onclick="window.location.href='addMemberForm.do';" class="btn btn-primary">신규회원가입</button>
        </div>
      </div>
    </div>
  </div>
  <!--모달끝-->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            <script>
                $('div .input-group').on('change', function () {

                    location.href = 'mainsearch.do?pagetype=all&search=' + $('div .input-group input').val()
                }
                )
            </script>
            <div class="container-fluid page-header"></div>