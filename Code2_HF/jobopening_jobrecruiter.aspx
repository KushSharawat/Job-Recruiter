<%@ Page Title="" Language="C#" MasterPageFile="~/jobrecruiter.Master" AutoEventWireup="true" CodeBehind="jobopening_jobrecruiter.aspx.cs" Inherits="Code2_HF.jobopening_jobrecruiter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
    <tr>
        <td>
            <asp:GridView ID="gvjobopenings" runat="server" OnRowCommand="gvjobopenings_RowCommand" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="Job ID">
                    <ItemTemplate>
                        <%#Eval("jid") %>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Company Name">
                    <ItemTemplate>
                        <%#Eval("rname") %>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Job Profile">
                    <ItemTemplate>
                        <%#Eval("jpname") %>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Required Experince">
                    <ItemTemplate>
                        <%#Eval("minexp") %> Year - <%#Eval("maxexp") %> Year
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Offered Salary">
                    <ItemTemplate>
                        <%#Eval("minsalary") %> Rs - <%#Eval("maxsalary") %> Rs
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Number Of Vacancy">
                    <ItemTemplate>
                        <%#Eval("noofvacancy") %>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:button ID="btndelete" runat="server" Text="Delete" CommandName="A" CommandArgument='<%#Eval("jid") %>' />
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:button ID="btnedit" runat="server" Text="Edit" CommandName="B" CommandArgument='<%#Eval("jid") %>' />
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
            </asp:GridView>
        </td>
    </tr>
</table>
</asp:Content>
