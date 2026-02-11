<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Restaurants.aspx.cs" Inherits="CU_Canteen.Restaurants" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title>FUDO</title>
    <!-- General CSS Files -->
    <link rel="stylesheet" href="css/app.min.css">
    <!-- Template CSS -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/components.css">

    <!-- Custom style CSS -->
    <link rel="stylesheet" href="css/custom.css">
    <link rel='shortcut icon' type='image/x-icon' href='img/favicon.ico' />

</head>
<body>
    <form id="form1" runat="server">
     <div class="loader"></div>
       <div id="app">
        <div class="main-wrapper main-wrapper-1">
          <div class="navbar-bg"></div>
          <nav class="navbar navbar-expand-lg main-navbar sticky">
              <div class="form-inline mr-auto">
              <ul class="navbar-nav mr-3">
              <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg
							    collapse-btn"> <i data-feather="align-justify"></i></a></li>
            
            
            
        </ul>
      </div>

    </nav>


    <div class="main-sidebar sidebar-style-2">
      <aside id="sidebar-wrapper">
        <div class="sidebar-brand">
          <a href="#">FUDO<span style='font-size:20px;'>&#127835;</span>
          </a>
        </div>
        <ul class="sidebar-menu">
          
           <li class="active"><a class="nav-link" href="Restaurants.aspx"><span>Restaurants</span></a></li>
           <li><a class="nav-link" href="PurchaseHistory.aspx"><span>Purchase Details</span></a></li>
             <li><a class="nav-link" href="payment.aspx"><span>Payment</span></a></li>
           
            <li><a class="nav-link" href="AdminLogin.aspx"><span>Logout</span></a></li>


     
      </aside>
    </div>
      
    <!-- Main Content -->
    <div class="main-content">
      <section class="section">
        <div class="row">
            <div class="card" style="width:30%; height:7%;">
                <img src="images/images (2).jfif" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title" style="font-size:30px; font-family:'Times New Roman', Times, serif; color:darkslategrey">   <center>Breakfast</center   </h5>
                    
                </div>
                <div class="mb-5 d-flex justify-content-around">
                    <a href="Breakfast_Menu.aspx"  class="btn btn-primary"><center>Show Menu</center></a>

                </div>
            </div>

            <div class="card" style="width:30%; height:7%;">
                <img src="images/images (1).jfif" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title" style="font-size:30px; font-family:'Times New Roman', Times, serif; color:darkslategrey;"><center>Lunch</center></h5>
        
                </div>
                <div class="mb-5 d-flex justify-content-around">
                    <a href="LunchMenu.aspx" class="btn btn-primary"><center>Show Menu</center></a>
                </div>
            </div>


            <div class="card"  style="width:30%; height:7%;">
                <img src="images/images (3).jfif" class="card-img-top" alt="..." style="width:95%;">
                <div class="card-body" style="width:40%;">
                    <h5 class="card-title" style="font-size:30px; font-family:'Times New Roman', Times, serif; color:darkslategrey"><center>    Snack   </center></h5>
        
                </div>
                <div class="mb-5 d-flex justify-content-around">
                    <a href="Snack_Menu.aspx"  class="btn btn-primary"><center>Show Menu</center></a>
                </div>
            </div>
          <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 col-xs-12">
             
          </div>
        </div>

           
      </div>
    </div>
    
  </div>
</div>
<!-- General JS Scripts -->
<script src="js/app.min.js"></script>
<!-- JS Libraies -->
<script src="bundles/apexcharts/apexcharts.min.js"></script>
<!-- Page Specific JS File -->
<script src="js/page/index.js"></script>
<!-- Template JS File -->
<script src="js/scripts.js"></script>
<!-- Custom JS File -->
<script src="js/custom.js"></script>
    </form>
</body>
</html>
