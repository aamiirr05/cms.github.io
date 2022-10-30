<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="employee.aspx.cs" Inherits="employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="main-page">
				<div class="forms">
					<div class="row">
						<h3 class="title1">Personal Information :</h3>
						<div class="form-three widget-shadow">
							<form runat="server" id="form1" class="form-horizontal">

								<div class="form-group" >
									<label  id="Lbl_ID" class="col-sm-2 control-label">ID</label>
									<div class="col-sm-8">
										<asp:TextBox id="TXT_EMP_ID" CssClass=" form-control1" placeholder="ID" runat="server"></asp:TextBox>
										<%--<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" controlToValidate="Txt_Name" ErrorMessage="Name Required"></asp:RequiredFieldValidator>--%>
										
									</div>
								</div>

								<div class="form-group">
									<label for="Emp_Code" class="col-sm-2 control-label">Code</label>
									<div class="col-sm-8">
										<asp:TextBox id="Txt_Code" CssClass="form-control1" placeholder="Code" runat="server"></asp:TextBox>
										<asp:RequiredFieldValidator id="Req1" runat="server" controlToValidate="Txt_Code" ErrorMessage="Code Required"></asp:RequiredFieldValidator>
									</div>
									<%--<div class="col-sm-2">
										<p class="help-block">Your help text!</p>
									</div>--%>
								</div>

								<div class="form-group">
									<label for="Emp_Name" class="col-sm-2 control-label">Name</label>
									<div class="col-sm-8">
										<asp:TextBox id="Txt_Name" CssClass=" form-control1" placeholder="Enter Name" runat="server"></asp:TextBox>
										<asp:RequiredFieldValidator id="Req2" runat="server" controlToValidate="Txt_Name" ErrorMessage="Name Required"></asp:RequiredFieldValidator>
										
									</div>
								</div>

								<div class="form-group">
									<label for="Emp_Email" class="col-sm-2 control-label">Email</label>
									<div class="col-sm-8">
										<asp:TextBox id="Txt_Email" CssClass=" form-control1" placeholder="Enter Email" runat="server"></asp:TextBox>
										<asp:RequiredFieldValidator runat="server" controlToValidate="Txt_Email" ErrorMessage="Email Required"></asp:RequiredFieldValidator>
										
									</div>
                                    <script src="js/jquery.vmap.js"></script>
								</div>

								<div class="form-group">
									<label for="Emp_State" class="col-sm-2 control-label">State</label>
									<div class="col-sm-8">
										<asp:TextBox ID="Txt_State" CssClass=" form-control1" placeholder="Enter State" runat="server"></asp:TextBox>
										<asp:RequiredFieldValidator runat="server" controlToValidate="Txt_State" ErrorMessage="State Required"></asp:RequiredFieldValidator>
										
									</div>
								</div>

								<div class="form-group">
									<label for="Emp_City" class="col-sm-2 control-label">City</label> 
									<div class="col-sm-8">
										<asp:TextBox ID="Txt_City" CssClass=" form-control1" placeholder="Enter City" runat="server"></asp:TextBox>
										<asp:RequiredFieldValidator runat="server" controlToValidate="Txt_City" ErrorMessage="City Required"></asp:RequiredFieldValidator>
										
									</div>
								</div>

								<div class="form-group">
									<label for="Emp_Address" class="col-sm-2 control-label">Address</label>
									<div class="col-sm-8">
										<asp:TextBox ID="Txt_Address" CssClass=" form-control1" placeholder="Enter Address" runat="server"></asp:TextBox>
										<asp:RequiredFieldValidator runat="server" controlToValidate="Txt_Address" ErrorMessage="Address Required"></asp:RequiredFieldValidator>
										
									</div>
								</div>
								<%--<div class="form-group">
									<label for="inputPassword" class="col-sm-2 control-label">Password</label>
									<div class="col-sm-8">
										<asp:TextBox ID="txt_password" CssClass="form-control1" placeholder="Password"  runat="server"></asp:TextBox>
									</div>
								</div>--%>
								<%--<div class="form-group">
									<label for="checkbox" class="col-sm-2 control-label">Gender</label>
									<div class="col-sm-8">
										<asp:CheckBox ID="chk_male" CssClass="checkbox-inline1" runat="server" /><label>Male</label>
										<asp:CheckBox ID="chk_female" CssClass="checkbox-inline1" runat="server" /><label>Female</label>
										<asp:CheckBox ID="chk_no" CssClass="checkbox-inline1" runat="server" /><label>Non-Binary</label>
									</div>
								</div>

								<div class="form-group">
									<label for="selector1" class="col-sm-2 control-label">Role</label>
									<div class="col-sm-8"><select name="selector1" id="selector1" class="form-control1">
										<option>Select</option>
										<option>FrontEnd Developer</option>
										<option>BackEnd Developer </option>
										<option>Full Stack Developer</option>
										<option>Designer</option>
									</select></div>
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
										<asp:TextBox ID="Txt_Basic_Salary" CssClass="form-control1" OnTextChanged="Txt_BS_TextChanged" Text="0" AutoPostBack="true" runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="Txt_Basic_Salary" ValidationExpression="[0-9]{1,6}" runat="server" Display="Dynamic" ErrorMessage="Enter valid numbers"></asp:RegularExpressionValidator>
										
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
										<asp:TextBox ID="Txt_Gross" CssClass=" form-control1" Text="0" runat="server"></asp:TextBox>
										
									</div>
								</div>

								
								
								<%--<div class="form-group">
									<label class="col-sm-2 control-label">Multiple Select</label>
									<div class="col-sm-8">
										<select multiple="" class="form-control1">
											<option>Option 1</option>
											<option>Option 2</option>
											<option>Option 3</option>
											<option>Option 4</option>
											<option>Option 5</option>
										</select>
									</div>
								</div>--%>
								<%--<div class="form-group">
									<label for="txtarea1" class="col-sm-2 control-label">Textarea</label>
									<div class="col-sm-8"><textarea name="txtarea1" id="txtarea1" cols="50" rows="4" class="form-control1"></textarea></div>
								</div>
								<div class="form-group">
									<label for="radio" class="col-sm-2 control-label">Radio</label>
									<div class="col-sm-8">
										<div class="radio block"><label><input type="radio"> Unchecked</label></div>
										<div class="radio block"><label><input type="radio" checked=""> Checked</label></div>
										<div class="radio block"><label><input type="radio" disabled=""> Disabled Unchecked</label></div>
										<div class="radio block"><label><input type="radio" disabled="" checked=""> Disabled Checked</label></div>
									</div>
								</div>
								<div class="form-group">
									<label for="radio" class="col-sm-2 control-label">Radio Inline</label>
									<div class="col-sm-8">
										<div class="radio-inline"><label><input type="radio"> Unchecked</label></div>
										<div class="radio-inline"><label><input type="radio" checked=""> Checked</label></div>
										<div class="radio-inline"><label><input type="radio" disabled=""> Disabled Unchecked</label></div>
										<div class="radio-inline"><label><input type="radio" disabled="" checked=""> Disabled Checked</label></div>
									</div>
								</div>
								<div class="form-group">
									<label for="smallinput" class="col-sm-2 control-label label-input-sm">Small Input</label>
									<div class="col-sm-8">
										<input type="text" class="form-control1 input-sm" id="smallinput" placeholder="Small Input">
									</div>
								</div>
								<div class="form-group">
									<label for="mediuminput" class="col-sm-2 control-label">Medium Input</label>
									<div class="col-sm-8">
										<input type="text" class="form-control1" id="mediuminput" placeholder="Medium Input">
									</div>
								</div>
								<div class="form-group mb-n">
									<label for="largeinput" class="col-sm-2 control-label label-input-lg">Large Input</label>
									<div class="col-sm-8">
										<input type="text" class="form-control1 input-lg" id="largeinput" placeholder="Large Input">
									</div>
								</div>--%>
								<div class="form-form-group">
									<div class="col-sm-12">
										<asp:Button ID="cmd_submit" OnClick="cmd_submit_Click" CssClass="btn-primary" runat="server" Text="Submit" />
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

