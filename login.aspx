<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="CU_Canteen.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 89%;
        }
        .auto-style3 {
            margin-left: 361px;
        }
        .auto-style5 {
            width: 335px;
        }
        .auto-style6 {
            width: 335px;
            height: 52px;
        }
        .auto-style7 {
            height: 52px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style3" Height="365px" Width="564px"><br /><br /><br /><br /><br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblStudentID" runat="server" Text="Student ID:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtStudentId" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblComPass" runat="server" Text="Comfirm Password:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtComPass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" Height="37px" Width="86px" />
                </td>
                <td>
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" Height="41px" Width="95px" OnClick="btnCancel_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:HyperLink ID="HyperLink1" runat="server"><a href="Signup.aspx">Please Sign Up!</a></asp:HyperLink>
                </td>
                <td class="auto-style7"></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
