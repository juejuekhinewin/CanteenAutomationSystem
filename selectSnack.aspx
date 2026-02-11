<%@ Page Language="C#" AutoEventWireup="true" CodeFile="selectSnack.aspx.cs" Inherits="CU_Canteen.selectSnack" %>

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
            
                       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="358px">
                           <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                           <Columns>
                               <asp:BoundField HeaderText="ID" DataField="Sid" />
                               <asp:TemplateField HeaderText="Image">
                                   <EditItemTemplate>
                                       <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                   </EditItemTemplate>
                                   <ItemTemplate>
                                       <asp:Image ID="Image1" runat="server" Height="138px" ImageUrl='<%# Eval("Image") %>' Width="156px" />
                                   </ItemTemplate>
                               </asp:TemplateField>
                               <asp:BoundField HeaderText="Name" DataField="Name" />
                               <asp:BoundField HeaderText="Price" DataField="Price" />
                           </Columns>
                           <EditRowStyle BackColor="#999999" />
                           <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                           <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                           <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                           <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                           <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                           <SortedAscendingCellStyle BackColor="#E9E7E2" />
                           <SortedAscendingHeaderStyle BackColor="#506C8C" />
                           <SortedDescendingCellStyle BackColor="#FFFDF8" />
                           <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>

                    
       
            
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

