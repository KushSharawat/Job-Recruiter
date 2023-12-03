<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Code2_HF.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>Login Type</td>
            <td><asp:DropDownList id="txtlogin" runat="server">
                <asp:ListItem Value="0">--Select--</asp:ListItem>
                <asp:ListItem Value="1">Job Seeker</asp:ListItem>
                <asp:ListItem Value="2">Job Recruiter</asp:ListItem>
                <asp:ListItem Value="3">Admin</asp:ListItem>
                </asp:DropDownList></td>
        </tr>

        <tr>
            <td>E-mail</td>
            <td><asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Password</td>
            <td><asp:TextBox ID="txtpass" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td></td>
            <td><asp:Button ID="btnlog" runat="server" Text="Login" OnClick="btnlog_Click" /></td>

        </tr>
        
        <tr>
            <td></td>
            <td>
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Font-Bold="true"></asp:Label></td>
        </tr>
    </table>
</asp:Content>
