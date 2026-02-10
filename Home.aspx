<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="CU_Canteen.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
<link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css"/>
<!-- bootstrap  -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
<!-- for swiper slider  -->
<link rel="stylesheet" href="assets/css/swiper-bundle.min.css"/>

<!-- fancy box  -->
<link rel="stylesheet" href="assets/css/jquery.fancybox.min.css"/>
<!-- custom css  -->
<link rel="stylesheet" href="home.css"/>
</head>

<body class="body-fixed">
    
    <!-- start of header  -->
    <header class="site-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <div class="header-logo">
                        <a href="index.html">
                          <h2> <span>FUDO</span></h2>
                        </a>
                    </div>
                </div>
                <div class="col-lg-10">
                    <div class="main-navigation">
                        <button class="menu-toggle"><span></span><span></span></button>
                        <nav class="header-menu">
                            <ul class="menu food-nav-menu">
                                <li><a href="home.aspx">Home</a></li>
                                <li> <a href="menu.aspx">Breakfast</a></li>
                                <li><a href="lunch.aspx">Lunch</a></li>
                                <li> <a href="snack.aspx">Snack</a></li>
                              <li><a href="login.aspx">Logout</a></li>
                                <!--<li><a href="#blog">Blog</a></li>-->
                               
                            </ul>
                        </nav>
                        <div class="header-right">
                            <form action="#" class="header-search-form for-des">
                              
                                
                                  
                                
                            </form>

                          

                            <a href="User_Profile.aspx" class="header-btn">
                                <i class="uil uil-user-md"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- header ends  -->

    <div id="viewport">
        <div id="js-scroll-content">
            <section class="main-banner" id="home">
                <div class="js-parallax-scene">
                    <div class="banner-shape-1 w-100" data-depth="0.30">
                        <img src="assets/images/berry.png" alt=""/>
                    </div>
                    <div class="banner-shape-2 w-100" data-depth="0.25">
                        <img src="assets/images/leaf.png" alt=""/>
                    </div>
                </div>
                <div class="sec-wp">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="banner-text">
                                    <h1 class="h1-title">
                                        Welcome to our
                                        <span>Canteen</span>
                                        
                                    </h1>
                                    <h2>Fresh and Healthy for your meal.Come for the food stay for the experience</h2>
                                    <div class="banner-btn mt-4">
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="banner-img-wp">
                                    <div class="banner-img" style="background-image: url(assets/images/rice-noodles-red-curry-with-meatballs-with-dried-chilies-basil-cucumber-long-beans.jpg);">
                                    </div>
                                </div>
                                <div class="banner-img-text mt-4 m-auto">
                                    <h5 class="h5-title"></h5>
                                  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
                           
            <section>
                
                <div class="sec-wp">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="sec-title text-center mb-5">
                                    <p class="sec-sub-title mb-3"></p>
                                    <h2 class="h2-title"><span>Our Restaurant</span></h2>
                                    
                                </div>
                            </div>
                        </div>
                        
                        <div class="menu-list-row">
                            <div class="row g-xxl-5 bydefault_show" id="menu-dish">
                                <div class="col-lg-4 col-sm-6 dish-box-wp breakfast" data-cat="breakfast">
                                    <div class="dish-box text-center">
                                        <div class="dist-img">
                                            <img src="images/images (2).jfif" alt=""/>
                                        </div>
                                        <div class="dish-rating">
                                            5
                                            <i class="uil uil-star"></i>
                                        </div>
                                        <div class="dish-title">
                                            <h3 class="h3-title">Breakfast Shop</h3>
                                           
                                        </div>
                                       
                                        <div class="dist-bottom-row">
                                            
                                                    <a href="menu.aspx">View</a>
                                                    
                                                   
                                                
                                            
                                        </div>
                                    </div>
                                </div>

                                <!-- 2 -->
                                <div class="col-lg-4 col-sm-6 dish-box-wp lunch" data-cat="lunch">
                                    <div class="dish-box text-center">
                                        <div class="dist-img">
                                            <img src="images/images (1).jfif" alt=""/>
                                        </div>
                                        <div class="dish-rating">
                                            4.3
                                            <i class="uil uil-star"></i>
                                        </div>
                                        <div class="dish-title">
                                            <h3 class="h3-title">Lunch Shop</h3>
                                           
                                        </div>
                                       
                                        <div class="dist-bottom-row">
                                            
                                                    
                                                       <a href="lunch.aspx">View</a>
                                                   
                                               
                                        </div>
                                    </div>
                                </div>
                                <!-- 3 -->
                                <div class="col-lg-4 col-sm-6 dish-box-wp dinner" data-cat="dinner">
                                    <div class="dish-box text-center">
                                        <div class="dist-img">
                                            <img src="images/images (3).jfif" alt=""/>
                                        </div>
                                        <div class="dish-rating">
                                            4
                                            <i class="uil uil-star"></i>
                                        </div>
                                        <div class="dish-title">
                                            <h3 class="h3-title">Snack Shop</h3>
                                           
                                        </div>
                                       
                                        <div class="dist-bottom-row">
                                            
                                                   <a href="snack.aspx">View</a>
                                              
                                        </div>
                                    </div>
                                </div>

                                </div>
                            
                        </div>
                    </div>
                </div>
            </section>
        

            
            <section class="book-table section bg-light">
                <div class="book-table-shape">
                    <img src="assets/images/table-leaves-shape.png" alt=""/>
                </div>

                <div class="book-table-shape book-table-shape2">
                    <img src="assets/images/table-leaves-shape.png" alt=""/>
                </div>

                <div class="sec-wp">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="sec-title text-center mb-5">
                                   
                                    <div class="sec-title-shape mb-4">
                                        <img src="assets/images/title-shape.svg" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>

                       

                        <div class="row" id="gallery">
                            <div class="col-lg-10 m-auto">
                                <div class="book-table-img-slider" id="icon">
                                    <div class="swiper-wrapper">
                                        <a href="assets/images/c.jpeg" data-fancybox="table-slider"
                                            class="book-table-img back-img swiper-slide"
                                            style="background-image: url(assets/images/c.jpeg)"></a>
                                        <a href="assets/images/pngtree-seer-fish-curry-a-classic-indian-dish-with-kerala-flavors-image_13625581.png" data-fancybox="table-slider"
                                            class="book-table-img back-img swiper-slide"
                                            style="background-image: url(assets/images/pngtree-seer-fish-curry-a-classic-indian-dish-with-kerala-flavors-image_13625581.png)"></a>
                                        <a href="assets/images/p.jpeg" data-fancybox="table-slider"
                                            class="book-table-img back-img swiper-slide"
                                            style="background-image: url(assets/images/p.jpeg)"></a>
                                        <a href="assets/images/images.png" data-fancybox="table-slider"
                                            class="book-table-img back-img swiper-slide"
                                            style="background-image: url(assets/images/images.png)"></a>
                                        <a href="assets/images/egg-curry-dhivya-subramanian.png" data-fancybox="table-slider"
                                            class="book-table-img back-img swiper-slide"
                                            style="background-image: url(assets/images/egg-curry-dhivya-subramanian.png)"></a>
                                       
                                    </div>

                                    <div class="swiper-button-wp">
                                        <div class="swiper-button-prev swiper-button">
                                            <i class="uil uil-angle-left"></i>
                                        </div>
                                        <div class="swiper-button-next swiper-button">
                                            <i class="uil uil-angle-right"></i>
                                        </div>
                                    </div>
                                    <div class="swiper-pagination"></div>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>

            </section>

           

         

          



            <!-- footer starts  -->
            <footer class="site-footer" id="contact">
                <div class="top-footer section">
                    <div class="sec-wp">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="footer-info">
                                        <div class="footer-logo">
                                            <a href="index.html">
                                                <img src="" alt=""/>
                                            </a>
                                        </div>
                                       
                                        <div class="social-icon">
                                            <ul>
                                                <li>
                                                    <a href="#">
                                                        <i class="uil uil-facebook-f"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="uil uil-instagram"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="uil uil-github-alt"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="uil uil-youtube"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-8">
                                    <div class="footer-flex-box">
                                        <div class="footer-table-info">
                                           
                                        </div>
                                        <div class="footer-menu food-nav-menu">
                                           
                                            <ul class="column-2">
                                                <li>
                                                    <a href="Home.aspx" class="footer-active-menu">Home</a>
                                                </li>
                                                
                                            </ul>
                                        </div>
                                        <div class="footer-menu">
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="bottom-footer">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 text-center">
                               
                            </div>
                        </div>
                        <button class="scrolltop"><i class="uil uil-angle-up"></i></button>
                    </div>
                </div>
            </footer>



        </div>
    </div>





    <!-- jquery  -->
    <script src="assets/js/jquery-3.5.1.min.js"></script>
    <!-- bootstrap -->
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/popper.min.js"></script>

    <!-- fontawesome  -->
    <script src="assets/js/font-awesome.min.js"></script>

    <!-- swiper slider  -->
    <script src="assets/js/swiper-bundle.min.js"></script>

    <!-- mixitup -- filter  -->
    <script src="assets/js/jquery.mixitup.min.js"></script>

    <!-- fancy box  -->
    <script src="assets/js/jquery.fancybox.min.js"></script>

    <!-- parallax  -->
    <script src="assets/js/parallax.min.js"></script>

    <!-- gsap  -->
    <script src="assets/js/gsap.min.js"></script>

    <!-- scroll trigger  -->
    <script src="assets/js/ScrollTrigger.min.js"></script>
    <!-- scroll to plugin  -->
    <script src="assets/js/ScrollToPlugin.min.js"></script>
    <!-- rellax  -->
    <!-- <script src="assets/js/rellax.min.js"></script> -->
    <!-- <script src="assets/js/rellax-custom.js"></script> -->
    <!-- smooth scroll  -->
    <script src="assets/js/smooth-scroll.js"></script>
    <!-- custom js  -->
    <script src="home.js"></script>


    
    
</body>
</html>


    </form>
</body>
</html>
