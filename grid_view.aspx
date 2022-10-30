<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="grid_view.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Employee Grid</title>
    <link href="css/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="main-page">
	<div class="forms">
        
        <form runat="server">
    
        <h3 class="title1">Employee List:</h3>
            <div class="grid-bottom widget-shadow">
                <div class="form-group" >
              <div class="col-sm-12" >
            <asp:Button ID="Insert_Btn" style="float:right;" CssClass="btn-primary" OnClick="Insert_Btn_Click" runat="server" Text="Insert Data" />
                  </div>
          </div><br />
                <div>
              <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-striped no-margin grd_tble" AllowCustomPaging="true" AllowPaging="true" AutoGenerateColumns="false">
              <Columns>
                  <asp:BoundField DataField="employee_id" HeaderText="Emp ID" SortExpression="employee_id" />
                  <asp:BoundField DataField="employee_name" HeaderText="Emp ID" SortExpression="employee_id" />

                         

                         <asp:TemplateField HeaderText="Name" HeaderStyle-CssClass="header_grid">
                             <ItemTemplate>
                                 <asp:TextBox ID="name_txt" CssClass="data_view" runat="server" Text='<%# Eval("employee_name") %>'></asp:TextBox>
                             </ItemTemplate>
                         </asp:TemplateField>

                         <asp:TemplateField HeaderText="Email" HeaderStyle-CssClass="header_grid">
                             <ItemTemplate>
                                 <asp:TextBox ID="email_txt" CssClass="data_view" runat="server" Text='<%# Eval("employee_email") %>'></asp:TextBox>
                             </ItemTemplate>
                         </asp:TemplateField>

                         <asp:TemplateField HeaderText="State" HeaderStyle-CssClass="header_grid">
                             <ItemTemplate>
                                 <asp:TextBox ID="state_txt" runat="server" Text='<%# Eval("employee_state") %>'></asp:TextBox>
                             </ItemTemplate>
                         </asp:TemplateField>

                         <asp:TemplateField HeaderText="City" HeaderStyle-CssClass="header_grid">
                             <ItemTemplate>
                                 <asp:TextBox ID="city_txt" runat="server" Text='<%# Eval("employee_city") %>'></asp:TextBox>
                             </ItemTemplate>
                         </asp:TemplateField>

                         <asp:TemplateField HeaderText="Address" HeaderStyle-CssClass="header_grid">
                             <ItemTemplate>
                                 <asp:TextBox ID="Adress_txt" runat="server" Text='<%# Eval("employee_adress") %>'></asp:TextBox>
                             </ItemTemplate>
                         </asp:TemplateField>

                         <asp:TemplateField HeaderText="Gross Salary" HeaderStyle-CssClass="header_grid">
                             <ItemTemplate>
                                 <asp:TextBox ID="gross_txt" runat="server" Text='<%# Eval("GROSS") %>'></asp:TextBox>
                             </ItemTemplate>
                         </asp:TemplateField>

                         <asp:HyperLinkField HeaderText="Edit" HeaderStyle-CssClass="header_grid" ControlStyle-Width="10" Text="Edit"  DataNavigateUrlFields="employee_id" DataNavigateUrlFormatString="employee.aspx?id={0}" />
                         <asp:HyperLinkField HeaderText="Delete" HeaderStyle-CssClass="header_grid" Text="Delete" DataNavigateUrlFields="employee_id" DataNavigateUrlFormatString="employee.aspx?id={0}"/>
                         
                     </Columns>
              
          </asp:GridView>
                    </div>
                </div>
       </form>
                    </div></div>
</asp:Content>

