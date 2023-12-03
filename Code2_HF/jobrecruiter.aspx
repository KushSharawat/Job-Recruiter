<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="jobrecruiter.aspx.cs" Inherits="Code2_HF.jobrecruiter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
    <tr>
        <td>Company Type</td>
        <td><asp:dropdownlist ID="txttype" runat="server"></asp:dropdownlist></td>
    </tr>

    <tr>
        <td>Company Name</td>
        <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
    </tr>

    <tr>
        <td>Company Url</td>
        <td><asp:textbox ID="txturl" runat="server" RepeatColumns="3"></asp:textbox></td>
    </tr>

    <tr>
        <td>Company Contact</td>
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
        <td>Address</td>
        <td><asp:textbox ID="txtadd" runat="server"></asp:textbox></td>
    </tr>

    <tr>
        <td></td>
        <td><asp:button ID="btnregister" runat="server" Text="Register" OnClick="btnregister_Click"></asp:button></td>
    </tr>

    <tr>
        <td></td>
        <td><asp:GridView ID="gjobrecruiter" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
            <Columns>
                <asp:TemplateField HeaderText="Company ID">
                    <ItemTemplate>
                        <%#Eval("rid") %>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Company Type">
                    <ItemTemplate>
                        <%#Eval("rtype") %>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Company Name">
                    <ItemTemplate>
                        <%#Eval("rname") %>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Company Url">
                    <ItemTemplate>
                        <%#Eval("rurl") %>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Company Contact">
                    <ItemTemplate>
                        <%#Eval("rcontact") %>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Company E-mail">
                    <ItemTemplate>
                        <%#Eval("remail") %>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Password">
                    <ItemTemplate>
                        <%#Eval("rpassword") %>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Company Address">
                    <ItemTemplate>
                        <%#Eval(" raddress ") %>
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
