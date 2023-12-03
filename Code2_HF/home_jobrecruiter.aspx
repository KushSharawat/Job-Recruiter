<%@ Page Title="" Language="C#" MasterPageFile="~/jobrecruiter.Master" AutoEventWireup="true" CodeBehind="home_jobrecruiter.aspx.cs" Inherits="Code2_HF.home_jobrecruiter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table>
    <tr>
        <td>
            <asp:GridView ID="gjobrecruiter" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
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
            </asp:GridView>
        </td>
    </tr>
</table>
</asp:Content>
