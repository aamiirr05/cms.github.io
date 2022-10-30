<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="grid_student.aspx.cs" Inherits="grid_student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="main-page">
    <h3 class="title1">Student Data</h3>
   <div class="grid_view">
       <form runat="server">
       <asp:Button ID="Insert_Btn" CssClass="navbar-btn" OnClick="Insert_Btn_Click" runat="server" Text="Insert Student" />
		  
               <asp:GridView ID="GridView1" AutoGenerateColumns="false"  runat="server">
                     <Columns>

                          <asp:TemplateField HeaderStyle-Width="1" HeaderText="Id"> 
                             <ItemTemplate>
                                 <asp:TextBox  ID="Id_txt" runat="server" Text='<%# Eval("s_id") %>'></asp:TextBox>
                             </ItemTemplate>
                         </asp:TemplateField>

                         <asp:TemplateField HeaderText="First Name">
                             <ItemTemplate>
                                 <asp:TextBox ID="First_Name_txt" runat="server" Text='<%# Eval("first_name") %>'></asp:TextBox>
                             </ItemTemplate>
                         </asp:TemplateField>

                         <asp:TemplateField HeaderText="Middle Name">
                             <ItemTemplate>
                                 <asp:TextBox ID="Middle_Name_txt" runat="server" Text='<%# Eval("middle_name") %>'></asp:TextBox>
                             </ItemTemplate>
                         </asp:TemplateField>

                         <asp:TemplateField HeaderText="Last Name">
                             <ItemTemplate>
                                 <asp:TextBox ID="Last_Name_txt" runat="server" Text='<%# Eval("last_name") %>'></asp:TextBox>
                             </ItemTemplate>
                         </asp:TemplateField>

                         <asp:TemplateField HeaderText="Email">
                             <ItemTemplate>
                                 <asp:TextBox ID="Email_txt" runat="server" Text='<%# Eval("email") %>'></asp:TextBox>
                             </ItemTemplate>
                         </asp:TemplateField>

                         <asp:TemplateField HeaderText="Address">
                             <ItemTemplate>
                                 <asp:TextBox ID="DOB" runat="server" Text='<%# Eval("address") %>'></asp:TextBox>
                             </ItemTemplate>
                         </asp:TemplateField>

                         <asp:TemplateField HeaderText="Country">
                             <ItemTemplate>
                                 <asp:TextBox ID="Country_txt" runat="server" Text='<%# Eval("country") %>'></asp:TextBox>
                             </ItemTemplate>
                         </asp:TemplateField>

                         <asp:TemplateField HeaderText="Gender">
                             <ItemTemplate>
                                 <asp:TextBox ID="Gender_txt" runat="server" Text='<%# Eval("gender") %>'></asp:TextBox>
                             </ItemTemplate>
                         </asp:TemplateField>

                        <%-- <asp:TemplateField HeaderText="District">
                             <ItemTemplate>
                                 <asp:TextBox ID="District_txt" runat="server" Text='<%# Eval("district") %>'></asp:TextBox>
                             </ItemTemplate>
                         </asp:TemplateField>

                         <asp:TemplateField HeaderText="City">
                             <ItemTemplate>
                                 <asp:TextBox ID="City_txt" runat="server" Text='<%# Eval("city") %>'></asp:TextBox>
                             </ItemTemplate>
                         </asp:TemplateField>

                         <asp:TemplateField HeaderText="Address">
                             <ItemTemplate>
                                 <asp:TextBox ID="Address_txt" runat="server" Text='<%# Eval("address") %>'></asp:TextBox>
                             </ItemTemplate>
                         </asp:TemplateField>--%>

                         <asp:HyperLinkField HeaderText="Edit" Text="Edit" HeaderStyle-Width="100" ItemStyle-Width="100" DataNavigateUrlFields="s_id" DataNavigateUrlFormatString="student.aspx?id={0}"/>
                         <asp:HyperLinkField HeaderText="Delete" Text="Delete" HeaderStyle-Width="100" ItemStyle-Width="100" DataNavigateUrlFields="s_id" DataNavigateUrlFormatString="student.aspx?id={0}" /> 
                     </Columns>
                 </asp:GridView>
              </form>
            </div>
    </div>
  </asp:Content>

