<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Breakfast.aspx.cs" Inherits="CU_Canteen.Breakfast" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        
        
    <style type="text/css">
        .auto-style1 {
            margin-left: 227px;
        }
        .auto-style2 {
            width: 83%;
            height: 250px;
        }
        .auto-style5 {
            height: 31px;
            width: 267px;
        }
        .auto-style10 {
            height: 62px;
        }
        .auto-style11 {
            margin-left: 0px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
                
            

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
                 
               <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click1" />
            </td>
            </td>
            <td class="auto-style5">
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" Height="39px" Width="91px" CssClass="auto-style11" />
                <br />
            </td>
        </tr>
      </table>
                <br />

                
    </asp:Panel>
            <br />
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
            <br />

            <br />
            <br />
            <br />
            

    </form>
</body>
</html>
