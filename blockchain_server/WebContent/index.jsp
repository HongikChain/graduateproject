<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>블록체인 전자 투표 시스템</title>

    <!-- Bootstrap core CSS -->
    <link href="./Resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="http://shahzad.com/myapp/web3.js-1.0.0-beta.34/dist/web3.min.js"></script>
    <!-- Custom fonts for this template -->
    <link href="./Resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

    <!-- Plugin CSS -->
    <link href="./Resources/vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="./Resources/css/creative.min.css?ver=1" rel="stylesheet">
	<link href="./Resources/css/aboutus.css" rel="stylesheet">
  </head>

  <body id="page-top">

    <!-- Navigation -->
    <%@ include file="/navbar.jsp" %>

    <header class="masthead text-center text-white d-flex">
      <div class="container my-auto">
        <div class="row">
          <div class="col-lg-10 mx-auto">
            <h1 class="text-uppercase">
              <strong>Hongik University <br/></strong>
            </h1>
            <h2 class="text-uppercase">
            	<strong>Electronic Vote System</strong>
            </h2>
            <hr>
          </div>
          <div class="col-lg-8 mx-auto">
            <p class="text-faded mb-5">블록 체인을 활용한 신뢰도 높은 전자 투표 시스템</p>
            <a class="btn btn-primary btn-xl js-scroll-trigger" href="./Votelist.jsp">Vote</a>
          </div>
        </div>
      </div>
    </header>
<!--  
    <section class="bg-primary" id="about">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
            <h2 class="section-heading text-white">We've got what you need!</h2>
            <hr class="light my-4">
            <p class="text-faded mb-4">Start Bootstrap has everything you need to get your new website up and running in no time! All of the templates and themes on Start Bootstrap are open source, free to download, and easy to use. No strings attached!</p>
            <a class="btn btn-light btn-xl js-scroll-trigger" href="#services">Get Started!</a>
          </div>
        </div>
      </div>
    </section>
    <section id="services">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading">At Your Service</h2>
            <hr class="my-4">
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <i class="fa fa-4x fa-diamond text-primary mb-3 sr-icons"></i>
              <h3 class="mb-3">Sturdy Templates</h3>
              <p class="text-muted mb-0">Our templates are updated regularly so they don't break.</p>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <i class="fa fa-4x fa-paper-plane text-primary mb-3 sr-icons"></i>
              <h3 class="mb-3">Ready to Ship</h3>
              <p class="text-muted mb-0">You can use this theme as is, or you can make changes!</p>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <i class="fa fa-4x fa-newspaper-o text-primary mb-3 sr-icons"></i>
              <h3 class="mb-3">Up to Date</h3>
              <p class="text-muted mb-0">We update dependencies to keep things fresh.</p>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <i class="fa fa-4x fa-heart text-primary mb-3 sr-icons"></i>
              <h3 class="mb-3">Made with Love</h3>
              <p class="text-muted mb-0">You have to make your websites with love these days!</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="p-0" id="portfolio">
      <div class="container-fluid p-0">
        <div class="row no-gutters popup-gallery">
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="img/portfolio/fullsize/1.jpg">
              <img class="img-fluid" src="img/portfolio/thumbnails/1.jpg" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Category
                  </div>
                  <div class="project-name">
                    Project Name
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="img/portfolio/fullsize/2.jpg">
              <img class="img-fluid" src="img/portfolio/thumbnails/2.jpg" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Category
                  </div>
                  <div class="project-name">
                    Project Name
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="img/portfolio/fullsize/3.jpg">
              <img class="img-fluid" src="img/portfolio/thumbnails/3.jpg" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Category
                  </div>
                  <div class="project-name">
                    Project Name
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="img/portfolio/fullsize/4.jpg">
              <img class="img-fluid" src="img/portfolio/thumbnails/4.jpg" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Category
                  </div>
                  <div class="project-name">
                    Project Name
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="img/portfolio/fullsize/5.jpg">
              <img class="img-fluid" src="img/portfolio/thumbnails/5.jpg" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Category
                  </div>
                  <div class="project-name">
                    Project Name
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-lg-4 col-sm-6">
            <a class="portfolio-box" href="img/portfolio/fullsize/6.jpg">
              <img class="img-fluid" src="img/portfolio/thumbnails/6.jpg" alt="">
              <div class="portfolio-box-caption">
                <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                    Category
                  </div>
                  <div class="project-name">
                    Project Name
                  </div>
                </div>
              </div>
            </a>
          </div>
        </div>
      </div>
    </section>
-->
<!-- 
    <section class="bg-dark text-white">
      <div class="container text-center">
        <h2 class="mb-4">Free Download at Start Bootstrap!</h2>
        <a class="btn btn-light btn-xl sr-button" href="http://startbootstrap.com/template-overviews/creative/">Download Now!</a>
      </div>
    </section>
 
    <section id="contact">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
            <h2 class="section-heading">Let's Get In Touch!</h2>
            <hr class="my-4">
            <p class="mb-5">ì°ë½ì£¼ì¸ì</p>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-4 ml-auto text-center">
            <i class="fa fa-phone fa-3x mb-3 sr-contact"></i>
            <p>010-1234-1234</p>
          </div>
          <div class="col-lg-4 mr-auto text-center">
            <i class="fa fa-envelope-o fa-3x mb-3 sr-contact"></i>
            <p>
              <a href="mailto:your-email@your-domain.com">feedback@startbootstrap.com</a>
            </p>
          </div>
        </div>
      </div>
    </section>
-->
<section id = "aboutus" style="padding-top:30px; padding-bottom:30px">
  <div class="content">
        <div class="container">
             <div class="row" style="margin-bottom:-20px;">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 mb40 text-center">
                        <h1>About Us</h1>
                </div>
            </div>
            <div class="row">
                 <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12" style="margin: 0 auto;">
                    <!-- team-img -->
                    <div class="team-block">
                        <div class="team-img">
                            <img src="./Resources/img/jaecheol1.jpg" alt="">
                            <div class="team-content">
                                <h5 class="text-white mb0">심재철</h5>
                                <h6 class="team-meta">홍익대학교<br/>컴퓨터공학과 12학번</h6>
                            </div>
                            <div class="overlay">
                                <div class="text">
                                    <h6 class="mb0 text-white">심재철</h6>
                                    <h6 class="mb30 team-meta">웹 백엔드 개발 담당</h6>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.team-img -->
                 <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12" style="margin: 0 auto;">
                    <!-- team-img -->
                    <div class="team-block">
                        <div class="team-img">
                            <img src="./Resources/img/kyoeun.jpg" alt="">
                            <div class="team-content">
                                <h5 class="text-white mb0">손교은</h5>
                                <h6 class="team-meta">홍익대학교<br/>컴퓨터공학과 12학번</h6>
                            </div>
                            <div class="overlay">
                                <div class="text">
                                    <h6 class="mb0 text-white">손교은</h6>
                                    <h6 class="mb30 team-meta">블록체인 개발 담당</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.team-img -->
                  <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12" style="margin: 0 auto;">
                    <!-- team-img -->
                    <div class="team-block">
                        <div class="team-img">
                            <img src="./Resources/img/youngjin.jpg" alt="" class="img-fluid">
                            <div class="team-content">
                                <h5 class="text-white mb0">권영진</h5>
                                <h6 class="team-meta">홍익대학교<br/> 컴퓨터공학과 12학번</h6>
                            </div>
                            <div class="overlay">
                                <div class="text">
                                    <h6 class="mb0 text-white">권영진</h6>
                                    <h6 class="mb30 team-meta">웹 프론트 엔드 개발 담당</h6>
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
              
            </div>
            
        </div>
    </div>
</section>
    <!-- /.container -->
    
    <!-- Bootstrap core JavaScript -->
    <script src="./Resources/vendor/jquery/jquery.min.js"></script>
    <script src="./Resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="./Resources/vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="./Resources/vendor/scrollreveal/scrollreveal.min.js"></script>
    <script src="./Resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="./Resources/js/creative.min.js"></script>

  </body>

</html>
