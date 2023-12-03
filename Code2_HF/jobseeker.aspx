<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="jobseeker.aspx.cs" Inherits="Code2_HF.registration_jobseeker" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table>
    <tr>
        <td>Name</td>
        <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
    </tr>

    <tr>
        <td>Gender</td>
        <td><asp:radiobuttonlist ID="txtgender" runat="server" RepeatColumns="3"></asp:radiobuttonlist></td>
    </tr>

    <tr>
        <td>Contact</td>
        <td><asp:TextBox ID="txtcont" runat="server"></asp:TextBox></td>
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
        <td>Qualificatiopn</td>
        <td><asp:dropdownlist ID="txtquali" runat="server"></asp:dropdownlist></td>
    </tr>

    <tr>
        <td></td>
        <td><asp:button ID="btnregister" runat="server" Text="Register" OnClick="btnregister_Click"></asp:button></td>
    </tr>

    <tr>
        <td></td>
        <td><asp:GridView ID="gjobseeker" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
            <Columns>
                <asp:TemplateField HeaderText="Jobseeker ID">
                    <ItemTemplate>
                        <%#Eval("jid") %>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Jobseeker Name">
                    <ItemTemplate>
                        <%#Eval("jname") %>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Jobseeker Gender">
                    <ItemTemplate>
                        <%#Eval("gname") %>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Jobseeker Contact">
                    <ItemTemplate>
                        <%#Eval("jcontact") %>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Jobseeker E-mail">
                    <ItemTemplate>
                        <%#Eval("jemail") %>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Jobseeker Password">
                    <ItemTemplate>
                        <%#Eval("jpassword") %>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Jobseeker Qualification">
                    <ItemTemplate>
                        <%#Eval(" qname ") %>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView></td>
    </tr>

</table>
</asp:Content>
