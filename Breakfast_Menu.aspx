<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Breakfast_Menu.aspx.cs" Inherits="CU_Canteen.Breakfast_Menu" %>

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
            height: 184px;
        }
        .auto-style4 {
            width: 593px;
        }
        .auto-style5 {
            height: 63px;
            margin-left: 0px;
        }
        .auto-style9 {
            width: 334px;
            height: 23px;
        }
        .auto-style10 {
            width: 593px;
            height: 23px;
        }
        .auto-style11 {
            width: 334px;
        }
        .auto-style12 {
            margin-left: 52px;
        }
        .auto-style14 {
            height: 980px;
        }
        .auto-style15 {
            margin-left: 0px;
        }
        .auto-style16 {
            margin-left: 47px;
        }
        .auto-style17 {
            margin-left: 37px;
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
                    
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style1" Height="332px" Width="762px">
        <h2 style="font-size:30px; font-family:'Times New Roman', Times, serif; color:dimgrey" class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Breakfast Menu</h2>
    <table class="auto-style2">
        
        <tr>
            <td class="auto-style11">
                <asp:Label ID="lblMenuImage" runat="server" Text="Menu Image:"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="lblMenuName" runat="server" Text="Menu Name:"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtMenuName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="lblMenuPrice" runat="server" Text="Menu Price:"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtMenuPrice" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" Width="80px" />
                <asp:Button ID="bnEdit" runat="server" CssClass="auto-style16" PostBackUrl="~/BreakfastUpdate.aspx" Text="Edit" Width="80px" />
            </td>
            <td class="auto-style4">
                <asp:Button ID="btnDelete" runat="server" CssClass="auto-style15" Text="Delete" Width="80px"   PostBackUrl="~/BreakfastDelete.aspx" />
                <asp:Button ID="btnView" runat="server" CssClass="auto-style17" PostBackUrl="~/selectdata.aspx" Text="View" Width="80px" />
                
            </td>
        </tr>
    </table>

        

    
</asp:Panel>


         <br />
         <br />
         <br />
         <br />

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
