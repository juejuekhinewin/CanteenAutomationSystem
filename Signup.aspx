<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="CU_Canteen.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
        height: 326px;
    }
    .auto-style2 {
        width: 226px;
        height: 39px;
    }
.auto-style3 {
    width: 226px;
    height: 24px;
}
.auto-style4 {
    height: 24px;
}
    .auto-style11 {
        width: 226px;
        height: 37px;
    }
    .auto-style12 {
        height: 37px;
    }
    .auto-style13 {
        width: 226px;
        height: 43px;
    }
    .auto-style14 {
        height: 43px;
    }
    .auto-style15 {
        width: 226px;
        height: 38px;
    }
    .auto-style16 {
        height: 38px;
    }
    .auto-style21 {
        width: 226px;
        height: 34px;
    }
    .auto-style22 {
        height: 34px;
    }
    .auto-style23 {
        width: 226px;
        height: 4px;
    }
    .auto-style24 {
        height: 4px;
    }
    .auto-style25 {
        height: 39px;
    }
    .auto-style26 {
        width: 226px;
        height: 53px;
    }
    .auto-style28 {
    height: 53px;
}
.auto-style29 {
    width: 226px;
    height: 16px;
}
.auto-style30 {
    height: 16px;
}
    .auto-style31 {
        margin-right: 0px;
        margin-bottom: 0px;
    }
    .auto-style32 {
        height: 37px;
        margin-left: 40px;
    }
        .auto-style35 {
            margin-left: 71px;
        }
        .auto-style36 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="725px" style="margin-left: 387px" Width="745px"><br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style13">
                <asp:Label ID="lblStudentId" runat="server" Text="Student ID:"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtStudentId" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtStudentId" ErrorMessage="Please fill student id"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
            </td>
            <td class="auto-style16">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtName" ErrorMessage="Please fill your name"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
            </td>
            <td class="auto-style16">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please fill email"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="lblPhoneNo" runat="server" Text="Phone No:"></asp:Label>
            </td>
            <td class="auto-style16">
                <asp:TextBox ID="txtPhoneNo" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPhoneNo" ErrorMessage="Please fill your ph no"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="lblDOB" runat="server" Text="Date Of Birth:"></asp:Label>
            </td>
            <td class="auto-style16">
                <asp:TextBox ID="txtDOB" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDOB" ErrorMessage="Please fill your date of birth"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style26">
                <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
            </td>
            <td class="auto-style28">
                <asp:RadioButton ID="rdoMale" runat="server" Text="Male" />
                <asp:RadioButton ID="rdoFemale" runat="server" Text="Female" />
            </td>
            <td class="auto-style28"></td>
        </tr>
        <tr>
            <td class="auto-style29">
                <asp:Label ID="lblYear" runat="server" Text="Year:"></asp:Label>
            </td>
            <td class="auto-style30">
                <asp:DropDownList ID="ddYear" runat="server">
                    <asp:ListItem>1st Year(First Semester)</asp:ListItem>
                    <asp:ListItem>1st Year(Second Semester)</asp:ListItem>
                    <asp:ListItem>2nd Year(First Semester)</asp:ListItem>
                    <asp:ListItem>2nd Year(Second Semester)</asp:ListItem>
                    <asp:ListItem>3rd Year(First Semester)</asp:ListItem>
                    <asp:ListItem>3rd Year(Second Semester)</asp:ListItem>
                    <asp:ListItem>4th Year(First Semester)</asp:ListItem>
                    <asp:ListItem>4th Year(Second Semester)</asp:ListItem>
                    <asp:ListItem>final Year(First Semester)</asp:ListItem>
                    <asp:ListItem>final Year(Second Semester)</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddYear" ErrorMessage="Please fill your semester correctly"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style30"></td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblSection" runat="server" Text="Section:"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:DropDownList ID="ddSection" runat="server">
                    <asp:ListItem>A</asp:ListItem>
                    <asp:ListItem>B</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddSection" ErrorMessage="Please fill your section"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style25"></td>
        </tr>
        
        <tr>
            <td class="auto-style15">
                <asp:Label ID="lblAmount" runat="server" Text="Amount:"></asp:Label>
            </td>
            <td class="auto-style16">
                <asp:TextBox ID="txtAmount" runat="server" placeholder="Enter 5000-50000 kyats"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtAmount" ErrorMessage="Please fill amount"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="lblPaymentMethod" runat="server" Text="Payment Method:"></asp:Label>
            </td>
            <td class="auto-style16">
                <asp:CheckBox ID="chKpay" runat="server" Text="Kpay" />
                <asp:CheckBox ID="chWave" runat="server" Text="Wavepay" />
            </td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
            </td>
            <td class="auto-style16">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please fill password"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="lblComPass" runat="server" Text="Comfirm Password:"></asp:Label>
            </td>
            <td class="auto-style16">
                <asp:TextBox ID="txtComPass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtComPass" ErrorMessage="Please fill confirm password"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style21">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnSave" runat="server" CssClass="auto-style36" OnClick="btnSave_Click" Text="Save" Width="88px" Height="37px" />
            </td>
            <td class="auto-style22">
                <asp:Button ID="btnCancel" runat="server" CssClass="auto-style35" Text="Cancel" Width="65px" OnClick="btnCancel_Click" />
            </td>
            <td class="auto-style22"></td>
        </tr>
        <tr>
            <td class="auto-style23"></td>
            <td class="auto-style24"></td>
            <td class="auto-style24"></td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Already Sign Up?"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:HyperLink ID="HyperLink1" runat="server"><a href="login.aspx">Log In</a></asp:HyperLink>
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />
</asp:Panel>
</asp:Content>
