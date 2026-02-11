<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BreakfastUpdate.aspx.cs" Inherits="CU_CanteenAutomationSystemProject.BreakfastUpdate" %>

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
    .auto-style3 {
        width: 344px;
    }
    .auto-style4 {
        width: 593px;
    }
    .auto-style5 {
        height: 63px;
        margin-left: 0px;
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
    .auto-style10 {
        width: 593px;
        height: 23px;
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
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style1" Height="524px" Width="897px">
    <table class="auto-style2">
    <tr>
        <td class="auto-style3">
            <asp:Label ID="lblMenuId" runat="server" Text="Menu Id:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtMenuId" runat="server"></asp:TextBox>
            <asp:Button ID="btnView" runat="server" OnClick="btnView_Click" Text="View" />
        </td>
    </tr>
    <tr>
        <td class="auto-style10">
            <asp:Label ID="lblMenuImage" runat="server" Text="Menu Image:"></asp:Label>
        </td>
        <td class="auto-style10">
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="lblMenuName" runat="server" Text="Menu Name:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtMenuName" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="lblPrice" runat="server" Text="Menu Price:"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="txtMenuPrice" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
             
           <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
        </td>
        </td>
        <td class="auto-style5">
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
            <br />
        </td>
    </tr>
  </table>
            <br />
</asp:Panel>
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
