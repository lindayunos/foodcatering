<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminUpdateStatus.aspx.cs" Inherits="FoodCatering.AdminUpdateStatus" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Order Status</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
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
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
</script>
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
						<li><a href="#" class="scroll active">HOME</a></li>
						<li><a href="#" class="scroll">PACKAGE</a></li>
						<li><a href="#" class="scroll">ORDERS</a></li>
						<li><a href="#" class="scroll">REPORT</a></li>
						<li><a href="WebForm1.aspx" class="scroll">LOGOUT</a></li>

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
        <div style="font-size:x-large" align="center">Package Info Manage Form<br />
            <br />
            <center>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="order_id" DataSourceID="SqlDataSource1" ForeColor="Black" Height="150px" Width="983px" Font-Size="Smaller">
                <Columns>
                    <asp:BoundField DataField="order_id" HeaderText="Order Id" InsertVisible="False" ReadOnly="True" SortExpression="order_id">
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="cust_name" HeaderText="Customer Name" SortExpression="cust_name">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pck_id" HeaderText="Package ID" SortExpression="pck_id">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="total_price" HeaderText="Price">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="order_date" HeaderText="Order Date" SortExpression="order_date">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="Order Status" SortExpression="order_status">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("order_status") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="27px" SelectedValue='<%# Bind("order_status") %>' Width="248px">
                                <asp:ListItem>Received</asp:ListItem>
                                <asp:ListItem>Preparing</asp:ListItem>
                                <asp:ListItem>Completed</asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="Gray" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
                <br />
                <br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="39px" OnClick="Button1_Click" Text="Update at Once" Width="162px" BackColor="White" Font-Bold="True" Font-Size="Smaller" />
            <br />
            <br />
            <br />
            <br />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CaterdbConnectionString2 %>" SelectCommand="SELECT * FROM [Order]"></asp:SqlDataSource>
            <br />
            </center>
        </div>
        </div>
    </form>
</body>
</html>
