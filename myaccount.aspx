<%@ Page Title="" Language="C#" MasterPageFile="~/user master.Master" AutoEventWireup="true" CodeBehind="myaccount.aspx.cs" Inherits="MIS_350_project.myaccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style17 {
        width: 64%;
        height: 416px;
        margin-left: 207px;
        margin-top: 0px;
        background-color: #FFFFFF;
    }
    .auto-style18 {
    }
    .auto-style20 {
        font-weight: normal;
    }
    .auto-style21 {
        text-align: center;
    }
    .auto-style22 {
        width: 313px;
    }
    .auto-style23 {
        text-align: center;
        width: 313px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="5" cellspacing="5" class="auto-style17">
    <tr>
        <td colspan="2">
            <h2>Personal info</h2>
            <h5 class="auto-style20">view and edit your personal info below.</h5>
        </td>
    </tr>
    <tr>
        <td class="auto-style18">First name:<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="textboxfirst" ErrorMessage="*" ForeColor="#CC3300" Display="Dynamic"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="textboxfirst" runat="server" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
        </td>
        <td class="auto-style22">Last name:<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxlast" ErrorMessage="*" ForeColor="#CC3300" Display="Dynamic"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="TextBoxlast" runat="server" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">Email:<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="#CC3300" ControlToValidate="TextBoxemail" Display="Dynamic"></asp:RequiredFieldValidator>
            &nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxemail" ErrorMessage="write email in correct format" ForeColor="#CC3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <asp:TextBox ID="TextBoxemail" runat="server" BorderStyle="Solid" BorderWidth="1px" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style18" colspan="2">Phone number:<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="#CC3300" ControlToValidate="TextBoxphone" Display="Dynamic"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="TextBoxphone" runat="server" BorderStyle="Solid" BorderWidth="1px" Width="250px"></asp:TextBox>
            <h5>
                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/changepassword.aspx" style="text-decoration: underline; color: #000000">Change passowrd</asp:HyperLink>
            </h5>
        </td>
    </tr>
    <tr>
        <td class="auto-style21">
            <br />
            <asp:HyperLink ID="HyperLink7" runat="server" BorderStyle="Solid" BorderWidth="1px" EnableTheming="True" Font-Underline="False" ForeColor="#70677A" Height="25px" NavigateUrl="~/userdashboard.aspx" Width="100px">Back</asp:HyperLink>
        </td>
        <td class="auto-style23">
            <asp:Label ID="Label1" runat="server" ForeColor="#003300" style="color: #006600"></asp:Label>
            <br />
            <asp:Button ID="updatbutton" runat="server" style="text-align: center; color: #FFFFFF; background-color: #70677A" Text="Update info" OnClick="updateinfo_Click" Height="25px" Width="100px" />
&nbsp;&nbsp;&nbsp;
            </td>
    </tr>
</table>
</asp:Content>
