<%@ Page Language="C#" MasterPageFile="~/Signup.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="FoodCatering.Signup" %>

<asp:Content ID="SignupContent" ContentPlaceHolderID="SignUpContent" runat="server">

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Sign Up Page</title>
	<link href="Content/singup.css" rel="stylesheet" />


</head>
<body>
 <!--start-contact-->
	<div class="contact" >
	<div class="signup" id="signup">
		<div class="container">
			<div class="contact-text">
				<div class="col-md-6 contact-left">
					<h3>SI<span>GN</span> - <label>UP</label></h3>
				</div>
				<div class="col-md-6 contact-right">
					<div class="contact-bottom">
						<form id="form1" runat="server">
							<p>NAME<sup><img src="images/star.png" alt="" /></sup></p>
							<asp:TextBox ID="TextBox1" runat="server" CausesValidation="True"></asp:TextBox>
							<p>PASSWORD<sup><img src="images/star.png" alt="" /></sup></p>
							<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
							&nbsp;<p>PHONE<sup><img src="images/star.png" alt="" /></sup></p>
							<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
							&nbsp;<p>ADDRESS<sup><img src="images/star.png" alt="" /></sup></p>
							<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
							&nbsp;<div class="s-btn">
								<asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="Sign Up" />
								&nbsp;</div>
					 	</form>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			</div>
			</div>
		</div>
	
	<!--end-contact-->
</body>
</html>
</asp:Content>
