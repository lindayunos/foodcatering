<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminManagePack.aspx.cs" Inherits="FoodCatering.AdminManagePack" %>

<!DOCTYPE html>
<html>
<head>
<title>HoumsFood a Food Category Flat Bootstarp responsive Website Template| HOME :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="HoumsFood Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="Content/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="Content/style.css" rel='stylesheet' type='text/css' />
<script src="js/jquery-1.11.0.min.js"></script>
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();
            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
        });
    });
</script>

<!--start-smoth-scrolling-->
    <style type="text/css">
        .auto-style2 {
            width: 259px;
        }
        .auto-style3 {
            width: 197px;
        }
        .auto-style4 {
            width: 197px;
            height: 48px;
        }
        .auto-style5 {
            width: 259px;
            height: 48px;
        }
        .auto-style6 {
            height: 48px;
        }
        .auto-style7 {
            width: 197px;
            height: 51px;
        }
        .auto-style8 {
            width: 259px;
            height: 51px;
        }
        .auto-style9 {
            height: 51px;
        }
        .auto-style10 {
            width: 197px;
            height: 62px;
        }
        .auto-style11 {
            width: 259px;
            height: 62px;
        }
        .auto-style12 {
            height: 62px;
        }
        .auto-style13 {
            width: 197px;
            height: 54px;
        }
        .auto-style14 {
            width: 259px;
            height: 54px;
        }
        .auto-style15 {
            height: 54px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<!--start-header-->
	<div class="header" id="home">
		<div class="container">
			<div class="header-top">
			<div class="logo">
				<a href="WebForm.aspx"><img src="images/logo.png" alt=""></a>
			</div>
			<div class="navigation">
				 <span class="menu"></span> 
					<ul class="navig">
						<li><a href="AdminPage.aspx" class="scroll active">HOME</a></li>
						<li><a href="#about" class="scroll">LOGOUT</a></li>
						

					</ul>
			</div>
				<div class="clearfix"></div>
			</div>
			</div>
		</div>	
	<!-- script-for-menu -->
		 <script>
             $("span.menu").click(function () {
                 $(" ul.navig").slideToggle("slow", function () {
                 });
             });
         </script>
    <br />

		 <!-- script-for-menu -->
	<!--end-header-->
	<div>
        <div style="font-size:x-large" align="center">Package Info Manage Form</div>
    </div>
            <table class="nav-justified">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style8">Package Name</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox2" runat="server" Width="467px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style11">Package Price</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="TextBox3" runat="server" Width="467px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style14">Package Description</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBox4" runat="server" Width="467px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" BackColor="Black" ForeColor="White" Text="Insert" OnClick="Button1_Click" />
                    &nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" BackColor="Black" ForeColor="White" Text="Delete" OnClick="Button2_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" BorderStyle="Solid" CellPadding="0" CellSpacing="2" Height="79px" Width="649px">
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        

	<br />
    </form>
    </body>
</html>