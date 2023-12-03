<%@ Page Title="" Language="C#" MasterPageFile="~/jobseeker.Master" AutoEventWireup="true" CodeBehind="home_jobseeker.aspx.cs" Inherits="Code2_HF.home_jobseeker" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>
                <asp:GridView ID="gjobseeker" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
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
            </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
