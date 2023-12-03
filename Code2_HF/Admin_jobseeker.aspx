<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_jobseeker.aspx.cs" Inherits="Code2_HF.Admin_jobseeker" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>
                <asp:GridView ID="gjobseeker" runat="server" AutoGenerateColumns="False" OnRowCommand="gjobseeker_RowCommand" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
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

                <asp:TemplateField HeaderText="Jobseeker Qualification">
                    <ItemTemplate>
                        <%#Eval(" qname ") %>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Status">
                    <ItemTemplate>
                        <asp:Button ID="btnstatus" runat="server" Text='<%#Eval(" jstatus ").ToString()=="0" ? "Active" : "Blocked" %>' CommandName="A" CommandArgument='<%#Eval("jid") %>' />
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="btnblock" runat="server" Text="Block" CommandName="B" CommandArgument='<%#Eval("jid") %>' />
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="btnunblock" runat="server" Text="Unblock" CommandName="C" CommandArgument='<%#Eval("jid") %>' />
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
