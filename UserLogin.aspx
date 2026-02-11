<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="CU_Canteen.UserLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 219px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style4 {
            width: 403px;
            height: 33px;
        }
        .auto-style5 {
            height: 33px;
        }
        .auto-style6 {
            width: 403px;
            height: 32px;
        }
        .auto-style7 {
            height: 32px;
        }
        .auto-style8 {
            width: 403px;
        }
        .auto-style9 {
            margin-left: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style1" Height="421px" Width="945px"><br /><br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lblStudentId" runat="server" Text="Student Id:"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="lblStudentName" runat="server" Text="Student Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtStudentName" runat="server" OnTextChanged="txtStudentName_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblComPass" runat="server" Text="Comfirm Password:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtComPass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="btnLogin" runat="server" Text="LogIn" CssClass="auto-style9" OnClick="btnLogin_Click" />
                </td>
                <td>
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:HyperLink ID="HyperLink1" runat="server">Please Sign Up!</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
