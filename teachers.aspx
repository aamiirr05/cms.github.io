<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="teachers.aspx.cs" Inherits="teachers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="main-page">
				<div class="forms">
					<div class="row">
						<h3 class="title1">Teacher Registration</h3>
						<div class="form-three widget-shadow">
							<form runat="server" id="form1" class="form-horizontal">

								<div class="form-group" >
									<asp:Label ID="Lbl_ID" CssClass="col-sm-2 control-label" runat="server" Text="Label">ID</asp:Label>
									<div class="col-sm-4">
										<asp:TextBox id="Txt_ID" CssClass=" form-control1" placeholder="ID" runat="server"></asp:TextBox>
			 							<%--<asp:RequiredFieldValidator id="RequiredFieldValidator0" runat="server" controlToValidate="Txt_ID" ErrorMessage="Name Required"></asp:RequiredFieldValidator>--%>
										
									</div>
								</div>

								<%--<div class="form-group">
									<label for="Std_Code" class="col-sm-2 control-label">Code</label>
									<div class="col-sm-8">
										<asp:TextBox id="Txt_Code" CssClass="form-control1" placeholder="Code" runat="server"></asp:TextBox>
										<asp:RequiredFieldValidator id="Req1" runat="server" controlToValidate="Txt_Code" ErrorMessage="Code Required"></asp:RequiredFieldValidator>
									</div>
								</div>--%>

								<div class="form-group">
									<label for="Std_First" class="col-sm-2 control-label">First Name</label>
									<div class="col-sm-6">
										<asp:TextBox id="Txt_First" CssClass=" form-control1" placeholder="Enter first Name" runat="server"></asp:TextBox>
										<asp:RequiredFieldValidator id="Req2" runat="server" controlToValidate="Txt_First" ErrorMessage="Name Required"></asp:RequiredFieldValidator>
										
									</div>
								</div>

								<div class="form-group">
									<label for="Std_Middle" class="col-sm-2 control-label">Middle Name</label>
									<div class="col-sm-6">
										<asp:TextBox id="Txt_Middle" CssClass=" form-control1" placeholder="Enter middle Name" runat="server"></asp:TextBox>
										<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" controlToValidate="Txt_Middle" ErrorMessage="Name Required"></asp:RequiredFieldValidator>
										
									</div>
								</div>

								<div class="form-group">
									<label for="Std_Last" class="col-sm-2 control-label">Last Name</label>
									<div class="col-sm-6">
										<asp:TextBox id="Txt_Last" CssClass=" form-control1" placeholder="Enter last Name" runat="server"></asp:TextBox>
										<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" controlToValidate="Txt_Last" ErrorMessage="Name Required"></asp:RequiredFieldValidator>
										
									</div>
								</div>

								<div class="form-group">
									<label for="Std_Email" class="col-sm-2 control-label">Email</label>
									<div class="col-sm-6">
										<asp:TextBox id="Txt_Email" CssClass=" form-control1" placeholder="Enter Email" runat="server"></asp:TextBox>
										<asp:RequiredFieldValidator runat="server" controlToValidate="Txt_Email" ErrorMessage="Email Required"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="Txt_Email" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" runat="server" ErrorMessage="Invalid Email"></asp:RegularExpressionValidator>
										
									</div>
								</div>

								<div class="form-group">
									<label for="Std_Country" class="col-sm-2 control-label">Country</label>
									<div class="col-sm-6">
										<asp:TextBox ID="Txt_Country"  CssClass=" form-control1" placeholder="Enter Country" runat="server"></asp:TextBox>
										<%--<asp:DropDownList ID="Ddl_Country" OnTextChanged="Ddl_Country_TextChanged" AutoPostBack="true" runat="server"></asp:DropDownList>--%>
										<asp:RequiredFieldValidator runat="server" controlToValidate="Txt_Country" ErrorMessage="country Required"></asp:RequiredFieldValidator>
										
									</div>
								</div>


								<div class="form-group">
									<label for="Std_state" class="col-sm-2 control-label">State</label>
									<div class="col-sm-6">
										<asp:TextBox ID="Txt_State" CssClass=" form-control1" placeholder="Enter State" runat="server"></asp:TextBox>
										<%--<asp:DropDownList ID="Ddl_State" OnTextChanged="Ddl_State_TextChanged" runat="server"  AutoPostBack="True"></asp:DropDownList>--%>
										<asp:RequiredFieldValidator runat="server" controlToValidate="Txt_State" ErrorMessage="State Required"></asp:RequiredFieldValidator>
										
									</div>
								</div>

								<div class="form-group">
									<label for="Std_City" class="col-sm-2 control-label">District</label> 
									<div class="col-sm-6">
										<asp:TextBox ID="Txt_District" CssClass=" form-control1" placeholder="Enter District" runat="server"></asp:TextBox>
										<%--<asp:DropDownList ID="Ddl_District" runat="server" OnTextChanged="Ddl_District_TextChanged" AutoPostBack="True"></asp:DropDownList>--%>
										<asp:RequiredFieldValidator runat="server" controlToValidate="Txt_District" ErrorMessage="District Required"></asp:RequiredFieldValidator>
										
									</div>
								</div>

								<div class="form-group">
									<label for="Std_City" class="col-sm-2 control-label">City</label> 
									<div class="col-sm-6">
										<asp:TextBox ID="Txt_City" CssClass=" form-control1" placeholder="Enter City" runat="server"></asp:TextBox>
										<%--<asp:DropDownList ID="Ddl_City" OnTextChanged="Ddl_City_TextChanged"  runat="server"  AutoPostBack="True"></asp:DropDownList>--%>
										<asp:RequiredFieldValidator runat="server" controlToValidate="Txt_City" ErrorMessage="City Required"></asp:RequiredFieldValidator>
										
									</div>
								</div>

								<div class="form-group">
									<label for="Std_Address" class="col-sm-2 control-label">Address</label>
									<div class="col-sm-6">
										<asp:TextBox ID="Txt_Address" CssClass=" form-control1" placeholder="Enter Address" runat="server"></asp:TextBox>
										<asp:RequiredFieldValidator runat="server" controlToValidate="Txt_Address" ErrorMessage="Address Required"></asp:RequiredFieldValidator>
										
									</div>
								</div>
								
								<div class="form-group">
									<label for="checkbox" class="col-sm-2 control-label">Gender</label>
									<div class="col-sm-6">
										<asp:CheckBox ID="chk_male" CssClass="checkbox-inline1" runat="server" /><label>Male</label>
										<asp:CheckBox ID="chk_female" CssClass="checkbox-inline1" runat="server" /><label>Female</label>
										<asp:CheckBox ID="chk_no" CssClass="checkbox-inline1" runat="server" /><label>Non-Binary</label>
									</div>
								</div>

								<%--<div class="form-form-group">
									<asp:Label ID="Label1" CssClass="col-sm-2 control-label" runat="server" Text="Department">Department</asp:Label>
									<div class="col-sm-6">
										<asp:DropDownList ID="DropDownList1"  runat="server">
											<asp:ListItem>Computer Engineering</asp:ListItem>
										    <asp:ListItem>Artificial Intelligence and Data Science </asp:ListItem>
											<asp:ListItem>Electronics and Computer Science</asp:ListItem>
											<asp:ListItem>Mechanical Engineering</asp:ListItem>
											<asp:ListItem>Civil Engineering</asp:ListItem>
										</asp:DropDownList>
									</div>
								</div>--%>

								<hr />

								<h3 class="title1">Salary Information :</h3>
								<br />

								<div class="form-group">
									<label for="Emp_HRA" class="col-sm-2 control-label">HRA</label>
									<div class="col-sm-4">
										<asp:TextBox ID="Txt_HRA" CssClass=" form-control1" OnTextChanged="Txt_HRA_TextChanged" AutoPostBack="true" Text="0" runat="server"></asp:TextBox>
										<%--<asp:RequiredFieldValidator runat="server" controlToValidate="Txt_HRA" ErrorMessage="Enter HRA" ></asp:RequiredFieldValidator>--%>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="Txt_HRA" ValidationExpression="[0-9]{1,6}" runat="server" Display="Dynamic" ErrorMessage="Enter valid numbers"></asp:RegularExpressionValidator>
										
									</div>

									<label for="Emp_DA" class="col-sm-2 control-label">DA</label>
									<div class="col-sm-4">
										<asp:TextBox ID="Txt_DA" CssClass=" form-control1" OnTextChanged="Txt_DA_TextChanged" AutoPostBack="true" Text="0" runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ControlToValidate="Txt_DA" ValidationExpression="[0-9]{1,6}" runat="server" Display="Dynamic" ErrorMessage="Enter valid numbers"></asp:RegularExpressionValidator>
									</div>

								</div>

								<%--<div class="form-group">
									<label for="Emp_DA" class="col-sm-2 control-label">DA</label>
									<div class="col-sm-4">
										<asp:TextBox ID="Txt_DA" CssClass=" form-control1" Text="0" runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="Txt_DA" ValidationExpression="[0-9]{1,6}" runat="server" Display="Dynamic" ErrorMessage="Enter valid numbers"></asp:RegularExpressionValidator>
									</div>


								</div>--%>

								<div class="form-group">
									<label for="Emp_TA" class="col-sm-2 control-label">TA</label>
									<div class="col-sm-4">
										<asp:TextBox ID="Txt_TA" CssClass=" form-control1" OnTextChanged="Txt_TA_TextChanged" AutoPostBack="true" Text="0" runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="Txt_TA" ValidationExpression="[0-9]{1,6}" runat="server" Display="Dynamic" ErrorMessage="Enter valid numbers"></asp:RegularExpressionValidator>
										      
									</div>

									<label for="Emp_BS" class="col-sm-2 control-label">Basic Salary</label>
									<div class="col-sm-4">
										<asp:TextBox ID="Txt_Basic_Salary" CssClass="form-control1" OnTextChanged="Txt_Basic_Salary_TextChanged" Text="0" AutoPostBack="true" runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ControlToValidate="Txt_Basic_Salary" ValidationExpression="[0-9]{1,6}" runat="server" Display="Dynamic" ErrorMessage="Enter valid numbers"></asp:RegularExpressionValidator>
										
									</div>

								</div>

								<%--<div class="form-group">
									<label for="Emp_BS" class="col-sm-2 control-label">Basic Salary</label>
									<div class="col-sm-4">
										<asp:TextBox ID="Txt_Basic_Salary" CssClass=" form-control1" Text="0" runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ControlToValidate="Txt_Basic_Salary" ValidationExpression="[0-9]{1,6}" runat="server" Display="Dynamic" ErrorMessage="Enter valid numbers"></asp:RegularExpressionValidator>
										
									</div>
								</div>--%>

								<div class="form-group">
									<label for="Emp_Gross" class="col-sm-2 control-label">Gross Salary</label>
									<div class="col-sm-4">
										<asp:TextBox ID="Txt_Gross" CssClass=" form-control1 notallowed" Text="0" runat="server"></asp:TextBox>
										
									</div>
								</div>
								<div class="clearfix"></div>

								<div class="form-form-group">
									<div class="col-sm-12">
										<asp:Button ID="cmd_Insert" OnClick="cmd_Insert_Click" CssClass="btn-primary" runat="server" Text="Submit" />
										<asp:Button ID="update_btn" OnClick="update_btn_Click" CssClass="btn-primary" runat="server" Text="Update" />
										<asp:Button ID="Delete_btn" OnClick="Delete_btn_Click" CssClass="btn-primary" runat="server" Text="Delete" />

										<asp:ValidationSummary runat="server" ID="validate1" ShowMessageBox="true" ShowSummary="false"></asp:ValidationSummary>
									</div>
								</div>
							</form>
						</div>
					</div>
					
				</div>
			</div>
</asp:Content>

