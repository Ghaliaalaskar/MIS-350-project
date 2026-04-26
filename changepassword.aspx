<%@ Page Title="" Language="C#" MasterPageFile="~/user master.Master" AutoEventWireup="true" CodeBehind="changepassword.aspx.cs" Inherits="MIS_350_project.changepassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            width: 64%;
            height: 464px;
            margin-left: 159px;
            margin-top: 0px;
            background-color: #FFFFFF;
        }
        .auto-style18 {
            width: 435px;
        text-align: center;
        height: 72px;
    }
        .auto-style22 {
            height: 70px;
        }
        .auto-style23 {
            font-weight: normal;
        }
        .auto-style26 {
        width: 438px;
        text-align: center;
        height: 72px;
    }
    .auto-style27 {
        height: 70px;
        text-align: center;
    }
    .auto-style28 {
        width: 438px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style17">
        <tr>
            <td class="auto-style22" colspan="2">
                <h2>Change password</h2>
                <h5 class="auto-style23">This will be your new login password.</h5>
            </td>
        </tr>
        <tr>
            <td class="auto-style27" colspan="2">Your password
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxurpass" Display="Dynamic" ErrorMessage="*" ForeColor="#CC3300"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <asp:TextBox ID="TextBoxurpass" runat="server" BorderStyle="Solid" BorderWidth="1px" OnTextChanged="TextBoxurpass_TextChanged" Width="250px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style27" colspan="2">Your new password<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*" ForeColor="#CC3300"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" BorderWidth="1px" Width="250px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style27" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Confirm new password
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="*" ForeColor="#CC3300"></asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="password is not matched" ForeColor="#CC3300"></asp:CompareValidator>
                <br />
                <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" BorderWidth="1px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;<br />
                <asp:HyperLink ID="HyperLink6" runat="server" BorderStyle="Solid" BorderWidth="1px" EnableTheming="True" Font-Underline="False" ForeColor="#70677A" Height="25px" NavigateUrl="~/myaccount.aspx" Width="85px">Back</asp:HyperLink>
            </td>
            <td class="auto-style18">
                <asp:Label ID="Label1" runat="server" ForeColor="#006600"></asp:Label>
                <br />
                <asp:Button ID="Button2" runat="server" BackColor="#70677A" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" Height="25px" OnClick="Button2_Click" Text="Change" Width="85px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
