<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="CU_Canteen.profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>FUDO Profile</title>


    <style type="text/css">
        .auto-style1 {
            margin-left: 417px;
        }
        .auto-style2 {
            width: 86%;
        }
        .auto-style5 {
            width: 577px;
        }
        .auto-style6 {
            width: 230px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
            <table class="auto-style2">
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lblStudentId" runat="server" Text="Student Id:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtStudentId" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lblPhoneNo" runat="server" Text="Phone No:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtPhoneNo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lblDateOfBirth" runat="server" Text="Date Of Birth:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lblGender" runat="server" Text="Gender:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtGender" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lblYear" runat="server" Text="Year:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtYear" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lblSection" runat="server" Text="Section:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtSection" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lblAmount" runat="server" Text="Amount:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lblPaymentMethod" runat="server" Text="Payment Method:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtPaymentMethod" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lblComPass" runat="server" Text="Comfirm Password:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtComPass" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
     
        </form>
</body>
</html>
