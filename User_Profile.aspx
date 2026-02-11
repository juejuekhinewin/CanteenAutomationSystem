<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User_Profile.aspx.cs" Inherits="CU_Canteen.User_Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>

    <!-- ===== ===== Custom Css ===== ===== -->
    <!-- <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="responsive.css"> -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Barlow:wght@600&family=Fraunces:wght@700;900&display=swap"
    rel="stylesheet">

    <!-- ===== ===== Remix Font Icons Cdn ===== ===== -->
    <link rel="stylesheet" href="user.css">
    <style type="text/css">
        /* ===== =====  Poppins Google Font  ===== =====  */

    </style>
   
    </head>
<body>
    <form id="form1" runat="server">
         <span class="main_bg"></span>


    <!-- ===== ===== Main-Container ===== =====  -->
    <div class="container" style="padding-right:100px; width:700px; ">

        <!-- ===== ===== Header/Navbar ===== ===== -->
        <header>
           <div style="padding-left:80px; width:100px; " >
            <a href="Home.aspx"> <svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 448 512"><! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc.><path d="M9.4 233.4c-12.5 12.5-12.5 32.8 0 45.3l160 160c12.5 12.5 32.8 12.5 45.3 0s12.5-32.8 0-45.3L109.2 288 416 288c17.7 0 32-14.3 32-32s-14.3-32-32-32l-306.7 0L214.6 118.6c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0l-160 160z"/></svg></a>
           
           </div>
             
             
        </header>
        <section class="" style="padding-left:200px;">
             <div>

     <asp:Panel ID="Panel1" runat="server" Height="376px" >
        <center> <asp:Label ID="Label1" runat="server" Text=" Profile Details" Font-Bold="True" Font-Size="30px" ForeColor="#FF99CC"></asp:Label></center>
         <br />
         <br />
         <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="284px" OnItemUpdating="DetailsView1_ItemUpdating" Width="480px" ForeColor="Black">
             <AlternatingRowStyle BackColor="White" />
             <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
             <Fields>
                 <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                 <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                 <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                 <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                 <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                 <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                 <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                 <asp:BoundField DataField="Section" HeaderText="Section" SortExpression="Section" />
                 <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                 <asp:BoundField DataField="Payment" HeaderText="Payment" SortExpression="Payment" />
                 <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                 <asp:BoundField DataField="Confirm_pwd" HeaderText="Confirm_Password" SortExpression="Confirm_pwd" />
             </Fields>
             <FooterStyle BackColor="#CCCC99" />
             <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
             <RowStyle BackColor="#F7F7DE" />
         </asp:DetailsView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [signup] WHERE ([ID] = @ID)" UpdateCommand="UPDATE signup SET Name =, Email =, Phone =, DOB =, Gender =, Year =, Section =, Amount =, Payment =, Password =, Confirm_pwd =">
             <SelectParameters>
                 <asp:SessionParameter Name="ID" SessionField="ID" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
     </asp:Panel>
    
 </div>
            
        </section>


       
         <script src="profile.js"></script>
    </form>
</body>
</html>
