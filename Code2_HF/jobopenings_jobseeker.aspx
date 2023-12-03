<%@ Page Title="" Language="C#" MasterPageFile="~/jobseeker.Master" AutoEventWireup="true" CodeBehind="jobopenings_jobseeker.aspx.cs" Inherits="Code2_HF.jobopenings_jobseeker" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table>

   <%-- <tr>
        <td>
            <asp:DropDownList ID="ddljobprofile" runat="server"></asp:DropDownList>
            <asp:Button ID="btnsearch" runat="server"  Text="Search" OnClick="btnsearch_Click" />
        </td>
    </tr>--%>

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

                <asp:TemplateField HeaderText="Number Of Vacancy">
                    <ItemTemplate>
                        <asp:button ID="btnapply" runat="server" Text="Apply" CommandName="APP" CommandArgument='<%#Eval("rname") %>' />
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
            </asp:GridView>
        </td>
    </tr>
    </table>
</asp:Content>
