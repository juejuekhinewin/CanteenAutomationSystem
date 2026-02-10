<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Receipt.aspx.cs" Inherits="CU_Canteen.Receipt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Receipt</title>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Barlow:wght@600&family=Fraunces:wght@700;900&display=swap"
      rel="stylesheet">
    <link rel="stylesheet" href="user.css">
    <style type="text/css">

     </style>
</head>
<body>
    <form id="form1" runat="server">
            <span class="main_bg"></span>
           <div class="container" style="padding-right:100px; width:700px; ">
    <header>
       <div style="padding-left:80px; width:100px; " >
        <a href="Home.aspx"> <svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 448 512"><! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc.><path d="M9.4 233.4c-12.5 12.5-12.5 32.8 0 45.3l160 160c12.5 12.5 32.8 12.5 45.3 0s12.5-32.8 0-45.3L109.2 288 416 288c17.7 0 32-14.3 32-32s-14.3-32-32-32l-306.7 0L214.6 118.6c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0l-160 160z"/></svg></a>
       
       </div> 
    </header>
    <section class="" style="padding-left:200px;">
         <div>
               <center> <asp:Label ID="Label1" runat="server" Text=" Breakfast Receipt" Font-Bold="True" Font-Size="30px" ForeColor="#FF99CC"></asp:Label></center>

          <br />
             <br />
             <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Height="251px" Width="297px">
                 <AlternatingRowStyle BackColor="PaleGoldenrod" />
                 <FooterStyle BackColor="Tan" />
                 <HeaderStyle BackColor="Tan" Font-Bold="True" />
                 <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                 <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                 <SortedAscendingCellStyle BackColor="#FAFAE7" />
                 <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                 <SortedDescendingCellStyle BackColor="#E1DB9C" />
                 <SortedDescendingHeaderStyle BackColor="#C2A47B" />
             </asp:GridView>
            
       </div>
           
       </section>
        <script src="profile.js"></script>
    </form>

</body>
</html>
