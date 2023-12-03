<%@ Page Title="" Language="C#" MasterPageFile="~/jobrecruiter.Master" AutoEventWireup="true" CodeBehind="changepassjobrecruiter.aspx.cs" Inherits="Code2_HF.changepassjobrecruiter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table>
    <tr>
        <td>Current Password</td>
        <td><asp:TextBox ID="txtcurrentpass" runat="server"></asp:TextBox></td>
    </tr>

    <tr>
        <td>New Password</td>
        <td><asp:TextBox ID="txtnewpass" runat="server"></asp:TextBox></td>
    </tr>

    <tr>
        <td>Confirm Password</td>
        <td><asp:TextBox ID="txtconfirmpass" runat="server"></asp:TextBox></td>
    </tr>

    <tr>
        <td></td>
        <td><asp:Button ID="btncp" runat="server" Text="Change Password" OnClick="btncp_Click" /></td>
    </tr>

    <tr>
        <td></td>
        <td><asp:Label ID="lblmsg" runat="server" ForeColor="Red" Font-Bold="true"></asp:Label></td>
    </tr>
</table>
</asp:Content>
