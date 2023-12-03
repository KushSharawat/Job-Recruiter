<%@ Page Title="" Language="C#" MasterPageFile="~/jobseeker.Master" AutoEventWireup="true" CodeBehind="applyform.aspx.cs" Inherits="Code2_HF.applyform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table>

    <tr>
        <td>Host :</td>
        <td>
            <asp:dropdownlist ID="ddlhost" runat="server">
                <asp:ListItem Text="--Select--" Value="0"></asp:ListItem>
                <asp:ListItem Text="smtp.gmail.com" Value="25"></asp:ListItem>
                <asp:ListItem Text="smtp.yahoo.com" Value="87"></asp:ListItem>
            </asp:dropdownlist></td>

    </tr>

    <tr>
        <td>Port Number :</td>
        <td>
            <asp:TextBox ID="txtportname" runat="server"></asp:TextBox></td>
    </tr>

    <tr>
        <td>From Email :</td>
        <td>
            <asp:TextBox ID="txtfromemail" runat="server"></asp:TextBox></td>
    </tr>

    <tr>
        <td>Password :</td>
        <td><asp:textbox ID="txtpassword" runat="server"></asp:textbox></td>
    </tr>
    
    <tr>
        <td>To Email :</td>
        <td><asp:textbox ID="txtoemail" runat="server"></asp:textbox></td>
    </tr>
    
    <tr>
        <td>Subject :</td>
        <td><asp:textbox ID="txtsubject" runat="server"></asp:textbox></td>
    </tr>
    
    <tr>
        <td>Body :</td>
        <td><asp:textbox ID="txtbody" runat="server" TextMode="MultiLine" Rows="5" Columns="40"></asp:textbox></td>
    </tr>
    
    <tr>
        <td></td>
        <td><asp:button ID="btnsentmail" runat="server" Text="Mail Send" OnClick="btnsentmail_Click" /></td>
    </tr>
</table>
</asp:Content>
