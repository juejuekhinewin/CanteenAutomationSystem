<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LunchDelete.aspx.cs" Inherits="CU_Canteen.LunchDelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta charset="UTF-8"/>
<meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport"/>
<title>FUDO</title>

<link rel="stylesheet" href="css/app.min.css"/>

<link rel="stylesheet" href="css/style.css"/>
<link rel="stylesheet" href="css/components.css"/>

<link rel="stylesheet" href="css/custom.css"/>
<link rel='shortcut icon' type='image/x-icon' href='img/favicon.ico' />
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <style type="text/css">
    .auto-style1 {
        margin-left: 345px;
    }
    .auto-style2 {
        width: 99%;
    }
    .auto-style6 {
        left: 0px;
        top: 0px;
    }
    .auto-style7 {
        position: relative;
        z-index: 1;
        left: 0px;
        top: 0px;
    }
        .auto-style8 {
            margin-left: 83px
        }
        .auto-style9 {
            width: 99%;
            height: 27px;
        }
        .auto-style10 {
            height: 27px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
      <div class="loader">
      <br />
  </div>
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

         <li class="dropdown active" ><a class="nav-link" href="Restaurants.aspx"><span>Restaurants</span></a></li>
         <li ><a class="nav-link" href="PurchaseHistory.aspx"><span>Purchase Details</span></a></li>
        <li><a class="nav-link" href="payment.aspx"><span>Payment</span></a></li>
         <li><a class="nav-link" href="AdminLogin.aspx"><span>Logout</span></a></li>

       

      </ul>
 
     </aside>
    </div>


    <div class="main-content">
        <section class="auto-style7">

    <div class="row ">
         <div class="auto-style6"> 
                <br /><br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="lbID" runat="server" Text="Menu ID"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtMenuId" runat="server" CssClass="offset-sm-0"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click1" Text="Delete" Width="65px" />
                    </td>
                    <br />
                    <td>
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="auto-style8" Width="75px" OnClick="btnCancel_Click" />
                    </td>
                </tr>
            </table>
        </div>
                <br />
             </div>
            
        </div>
       </div>
      </section>
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
