<%@ Page Title="" Language="C#" MasterPageFile="~/jobrecruiter.Master" AutoEventWireup="true" CodeBehind="jobpost_jobrecruiter.aspx.cs" Inherits="Code2_HF.jobpost_jobrecruiter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>Job Profile</td>
            <td>
                <asp:DropDownList ID="ddljobprofile" runat="server"></asp:DropDownList></td>
        </tr>

        <tr>
            <td>Min Exp</td>
            <td>
                <asp:TextBox ID="txtminexp" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Max Exp</td>
            <td>
                <asp:TextBox ID="txtmaxexp" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Min Salary</td>
            <td>
                <asp:TextBox ID="txtminsalary" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Max Salary</td>
            <td>
                <asp:TextBox ID="txtmaxsalary" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Number of Vacancy</td>
            <td>
                <asp:TextBox ID="txtnoofvacancy" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td></td>
            <td>
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" /></td>
        </tr>

        <tr>
            <td></td>
            <td><asp:Label ID="lblmsg" runat="server" ForeColor="Red" font-bold="true"></asp:Label></td>
        </tr>
       
    </table>
</asp:Content>
