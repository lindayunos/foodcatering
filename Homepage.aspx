<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="FoodCatering.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HoumsFood a Food Category Flat Bootstarp responsive Website Template| HOME :: w3layouts</title>
    <meta name="viewport" content="width=device-width; initial-scale=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="HoumsFood Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
    Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="Content/bootstrap1.css" rel='stylesheet' type='text/css' />
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

<!--start-smoth-scrolling-->
    </head>

<body>
    <!--start-header-->
	<div class="header" id="home">
		<div class="container">
			<div class="header-top">
			<div class="logo">
				<a href="index.html"><img src="images/logo.png" alt=""/></a>
			</div>
			<div class="navigation">
				 <span class="menu"></span> 
					<ul class="navig">
						<li><a href="index.html" class="scroll active">HOME</a></li>
						<li><a href="#about" class="scroll">ABOUT</a></li>
						<li><a href="#our-place" class="scroll">OUR PLACE</a></li>
					    <li><a href="#contact" class="scroll">SIGN UP</a></li>
						<li><a href="Login.aspx" class="scroll">LOG IN</a></li>
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
		 <!-- script-for-menu -->
	<!--end-header-->

	<!--start-banner-->
	<div class="banner">
		<div class="container">
			<div class="banner-text">
				<h1>Welcome.</h1>
			</div>
		</div>
	</div>
	<!--end-banner-->

	<!--start-about-->
	<div class="about" id="about">
		<div class="container">
			<div class="about-text">
				<div class="col-md-6 about-left">
					<h3>AB<span>OUT</span> US</h3>
				</div>
				<div class="col-md-6 about-right">
					<div class="about-bottom">
						<p>Crave for our restaurant delicacies? Say no more! We are now offering you to have our foods without hassle.</p>
                        <p>Just stay at home and stay safe. Worry free! No-touch delivery option is now available for our restaurant. Order your favourite food now!</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--end-about-->

	<!--start-quote-->
	<div class="quote">
		<div class="container">
			<div class="quote-text">
				<h3>A Moments of <span>Delivered on Time.</span></h3>
			</div>
		</div>
	</div>
	<!--end-quote-->

	<!--start-map-->
	<div class="map" id="our-place">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3983.6074608605!2d101.6778757!3d3.1973727999999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31cc47a8de3f55f5%3A0x3cbc4380ae4fd9ba!2sIpoh+Rd%2C+Taman+Bamboo%2C+51200+Kuala+Lumpur%2C+Federal+Territory+of+Kuala+Lumpur%2C+Malaysia!5e0!3m2!1sen!2sin!4v1429170144199" frameborder="0" style="border:0"></iframe>
	</div>
	<!--end-map-->

	<!--start-contact-->
    <form id="form1" runat="server">
	<div class="contact" id="contact">
		<div class="container">
			<div class="contact-text">
				<div class="col-md-6 contact-left">
					<h3>SI<span>GN</span> - <label>UP</label></h3>
				</div>
				<div class="col-md-6 contact-right">
					<div class="contact-bottom">
							<p>NAME<sup><img src="images/star.png" alt="" /></sup></p>
							<asp:TextBox ID="name" runat="server" placeholder ="Your Name"></asp:TextBox>
							&nbsp;<p>EMAIL<sup><img src="images/star.png" alt="" /></sup></p>
							<asp:TextBox ID="email" runat="server" placeholder ="Your Email"></asp:TextBox>
							&nbsp;<p>PASSWORD<sup><img src="images/star.png" alt="" /></sup></p>
							<asp:TextBox ID="pwd" runat="server" placeholder ="Your Password" Height="32px" TextMode="Password" Width="314px" BorderStyle="Solid"></asp:TextBox>
							&nbsp;<br />
							&nbsp;<p>PHONE<sup><img src="images/star.png" alt="" /></sup></p>
							<asp:TextBox ID="phone" runat="server" placeholder ="Your Phone"></asp:TextBox>
							&nbsp;<p>ADDRESS<sup><img src="images/star.png" alt="" /></sup></p>
							<asp:TextBox ID="address" runat="server" placeholder ="Your Address"></asp:TextBox>
							&nbsp;<div >
								&nbsp;<asp:Button ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
						    </div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--end-contact-->

	<!--start-footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-main">
				<div class="col-md-4 footer-left">
					<a href="index.html"><img src="images/logo.png" alt="" /></a>
				</div>
				<div class="col-md-4 footer-right">
					<ul>
						<li><a >An oasis of deliciousness.</a></li>
						<li><a >Eat the food you dream about at affordable prices.</a></li>
						<li><a >No need to come to us just order them online</a></li>
					</ul>
				</div>
				<div class="col-md-4 footer-right">
					<ul>
						<li><a href="#" class="scroll">Home</a></li>
						<li><a href="#about" class="scroll">About</a></li>
						<li><a href="#our-place" class="scroll">Our Place</a></li>
						<li><a href="#contact" class="scroll">Contact</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="footer-bottom">
				<p>Template By <a href="http://w3layouts.com/">W3layouts</a></p>
			</div>
		</div>
		<script type="text/javascript">
            $(document).ready(function () {
                /*
                var defaults = {
                        containerID: 'toTop', // fading element id
                    containerHoverID: 'toTopHover', // fading element hover id
                    scrollSpeed: 1200,
                    easingType: 'linear' 
                    };
                */

                $().UItoTop({ easingType: 'easeOutQuart' });

            });
        </script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	</div>
	<!--end-footer-->



        <div>
        </div>
    </form>
</body>
</html>
