<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!-- Footer Start -->

        <!-- Copyright Start -->
        <div class="container-fluid copyright bg-dark py-4">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                        <span class="text-light"><a href="main.do"><i class="fas fa-copyright text-light me-2"></i>DaK.inc</a>, All right reserved.</span>
                    </div>
                    <div class="col-md-6 my-auto text-center text-md-end text-white">
                        <!--/*** This template is free as long as you keep the below author’s credit link/attribution link/backlink. ***/-->
                        <!--/*** If you'd like to use the template without the below author’s credit link/attribution link/backlink, ***/-->
                        <!--/*** you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". ***/-->
                        Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a> Distributed By <a class="border-bottom" href="https://themewagon.com">ThemeWagon</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Copyright End -->



        <!-- Back to Top -->
        <a href="#" class="btn btn-primary border-3 border-primary rounded-circle back-to-top"><i class="fa fa-arrow-up"></i></a>   

        
    <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="static/lib/easing/easing.min.js"></script>
    <script src="static/lib/waypoints/waypoints.min.js"></script>
    <script src="static/lib/lightbox/js/lightbox.min.js"></script>
    <script src="static/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="static/js/main.js"></script>
    <script>
        let urlstr = window.location.href.split('/')
        console.log(urlstr[4])
        if(urlstr[4].indexOf('event')>=0){
            $('.navbar-nav > a').removeClass('active');
            $('.navbar-nav > a:nth-child(6)').addClass('active').css('font-weight','bold');
        }else if(urlstr[4].indexOf('pagetype'>=0)){
            if(urlstr[4].indexOf('all')>=0){
                $('.navbar-nav > a').removeClass('active');
                $('.navbar-nav > a:nth-child(1)').addClass('active').css('font-weight','bold');
            }else if(urlstr[4].indexOf('new')>=0){
                $('.navbar-nav > a').removeClass('active');
                $('.navbar-nav > a:nth-child(2)').addClass('active').css('font-weight','bold');
            }else if(urlstr[4].indexOf('sale')>=0){
                $('.navbar-nav > a').removeClass('active');
                $('.navbar-nav > a:nth-child(3)').addClass('active').css('font-weight','bold');
            }else if(urlstr[4].indexOf('best')>=0){
                $('.navbar-nav > a').removeClass('active');
                $('.navbar-nav > a:nth-child(4)').addClass('active').css('font-weight','bold');
            }else if(urlstr[4].indexOf('single')>=0){
                $('.navbar-nav > a').removeClass('active');
                $('.navbar-nav > a:nth-child(5)').addClass('active').css('font-weight','bold');
            }
        }
    </script>
    </body>

</html>