<%@ Page Language="C#" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="CU_Canteen.payment" %>

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
            width: 72%;
        }
        .auto-style2 {
            width: 452px;
        }
        .auto-style3 {
            width: 338px;
        }
        .auto-style4 {
            width: 437px;
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
      
      
       <li ><a class="nav-link" href="Restaurants.aspx"><span>Restaurants</span></a></li>
         <li ><a class="nav-link" href="PurchaseHistory.aspx"><span>Purchase Details</span></a></li>
         <li class="dropdown active"><a class="nav-link" href="payment.aspx"><span>Payment</span></a></li>
          <li><a class="nav-link" href="AdminLogin.aspx"><span>Logout</span></a></li>


      </ul>
 
     </aside>
    </div>


    <div class="main-content">
        <section class="auto-style7">

     
    <div class="row ">
       <div class="auto-style6"> 
                <br /><br />
            <asp:Panel ID="Panel1" runat="server" Height="658px">
                        <h2 style="font-size:30px; font-family:'Times New Roman', Times, serif; color:dimgrey" class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Payments</h2>

                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style3">
                                    <asp:Label ID="lblID" runat="server" Text="User ID"></asp:Label>
                                </td>
                                <td class="auto-style4">
                                    <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                                    <asp:Button ID="btnView" runat="server" OnClick="btnView_Click" Text="View" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:Label ID="lblName" runat="server" Text="User Name"></asp:Label>
                                </td>
                                <td class="auto-style4">
                                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:Label ID="lblAmt" runat="server" Text="Amount"></asp:Label>
                                </td>
                                <td class="auto-style4">
                                    <asp:TextBox ID="txtAmt" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:Button ID="btnEdit" runat="server" Text="Edit" Width="103px" OnClick="btnEdit_Click" />
                                </td>
                                <td class="auto-style4">
                                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
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
