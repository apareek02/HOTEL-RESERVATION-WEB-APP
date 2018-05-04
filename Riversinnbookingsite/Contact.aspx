<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Rough_bootstap.Contact" %>

<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>RIVERSINN Template</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />

  <!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">

	<!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	
	<!-- Date Picker -->
	<link rel="stylesheet" href="css/bootstrap-datepicker.css">
	<!-- Flaticons  -->
	<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
	<form runat="server">	
	<div class="colorlib-loader"></div>

	<div id="page">
		<nav class="colorlib-nav" role="navigation">
			<div class="top">
				<div class="container">
					<div class="row">
						<div class="col-xs-4">
							<p class="site">www.RIVERSINN.com</p>
						</div>
						<div class="col-xs-8 text-right">
							<p class="num">Call: +01-309-807-8380</p>
							<ul class="colorlib-social">
								<li><a href="#"><i class="icon-twitter"></i></a></li>
								<li><a href="#"><i class="icon-facebook"></i></a></li>
								<li><a href="#"><i class="icon-linkedin"></i></a></li>
								<li><a href="#"><i class="icon-dribbble"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="top-menu">
				<div class="container">
					<div class="row">
						<div class="col-xs-2">
							<div id="colorlib-logo"><a href="Home.aspx">RIVERSINN</a></div>
						</div>
						<div class="col-xs-10 text-right menu-1">
							<ul>
								<li><a href="Home.aspx">Home</a></li>
								<li class="has-dropdown">
									<a href="Rooms.aspx">Rooms</a>
									<ul class="dropdown">
										<li><a href="#">Suite</a></li>
										<li><a href="#">Double Room</a></li>
										<li><a href="#">Family Room</a></li>
										<li><a href="#">Classic Double</a></li><li><a href="#">Superior Double</a></li><li><a href="#">Superior Family</a></li>
									</ul>
								</li>
								<li><a href="Dining.aspx">Dining &amp; Bar</a></li>
								<li><a href="Amenities.aspx">Aminities</a></li>
								<li><a href="Blog.aspx">Blog</a></li>
								<li><a href="About.aspx">About</a></li>
								<li class="active"><a href="Contact.aspx">Contact</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</nav>
		<aside id="colorlib-hero">
			<div class="flexslider">
				<ul class="slides">
			   	<li style="background-image: url(images/img_bg_5.jpg);">
			   		<div class="overlay"></div>
			   		<div class="container-fluid">
			   			<div class="row">
				   			<div class="col-md-6 col-sm-12 col-md-offset-3 slider-text">
				   				<div class="slider-text-inner slider-text-inner2 text-center">
				   					<h2>Get in touch</h2>
				   					<h1>Contact Us</h1>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			  	</ul>
		  	</div>
		</aside>

		<div id="colorlib-contact">
			<div class="container">
				<div class="row">
					<div class="col-md-10 col-md-offset-1 animate-box">
						<h3>Contact Information</h3>
						<div class="row contact-info-wrap">
							<div class="col-md-3">
								<p><span><i class="icon-location-2"></i></span>708 W 1st St, <br> Leon, IA 50144</p>
							</div>
							<div class="col-md-3">
								<p><span><i class="icon-phone3"></i></span> <a href="tel://+01-309-807-8380">+01-309-807-8380</a></p>
							</div>
							<div class="col-md-3">
								<p><span><i class="icon-paperplane"></i></span> <a href="mailto:info@riversinn.com">info@riversinn.com</a></p>
							</div>
							<div class="col-md-3">
								<p><span><i class="icon-globe"></i></span> <a href="#">RIVERSINN.com</a></p>
							</div>
						</div>
					</div>
					<div class="col-md-10 col-md-offset-1 animate-box">
						<h3>Get In Touch</h3>
						<form action="#">
							<div class="row form-group">
								<div class="col-md-6">
									<label for="fname">First Name</label>
									<input type="text" id="fname" class="form-control" placeholder="Your firstname">
								</div>
								<div class="col-md-6">
									<label for="lname">Last Name</label>
									<input type="text" id="lname" class="form-control" placeholder="Your lastname">
								</div>
							</div>

							<div class="row form-group">
								<div class="col-md-12">
									<label for="email">Email</label>
									<input type="text" id="email" class="form-control" placeholder="Your email address">
								</div>
							</div>

							<div class="row form-group">
								<div class="col-md-12">
									<label for="subject">Subject</label>
									<input type="text" id="subject" class="form-control" placeholder="Your subject of this message">
								</div>
							</div>

							<div class="row form-group">
								<div class="col-md-12">
									<label for="message">Message</label>
									<textarea name="message" id="message" cols="30" rows="10" class="form-control" placeholder="Say something about us"></textarea>
								</div>
							</div>
							<div class="form-group text-center">
                            <button type="button" runat="server"  name="submit" id="submit" value="Search" data-toggle="modal" data-target="#myModal" class="btn btn-info btn-lg">Send Message</button>
							</div>
                            <!-- Modal -->
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Message Sent</h4>
                        </div><div class="item">
                                <h5>Contact you Shortly</h5>
                              </div>
                       </div><div class="modal-footer">
                                <button type="button" runat="server" class="btn btn-default" data-dismiss="modal">Close</button>

                            </div></div>
                
            </div>
						</form>		
					</div>
				</div>
			</div>
		</div>

		<div id="map" class="colorlib-map"></div>
	
		<div id="colorlib-subscribe" style="background-image: url(images/img_bg_2.jpg);">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3 text-center colorlib-heading animate-box">
						<span><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span>
						<h2>Sign Up for a Newsletter</h2>
						<p>Get A 50% Discounts in every Rooms, Book now!</p>
						<form class="form-inline qbstp-header-subscribe">
							<div class="row">
								<div class="col-md-12 col-md-offset-0">
									<div class="form-group">
										<input type="text" class="form-control" id="email" placeholder="Enter your email">
										<asp:Button runat="server" type="button" id="send" OnClick="send_Click" class="btn btn-primary"></asp:Button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<footer id="colorlib-footer" role="contentinfo">
			<div class="container">
				<div class="row row-pb-md">
					<div class="col-md-3 colorlib-widget">
						<h4>RIVERSINN</h4>
						<p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit. Eos cumque dicta adipisci architecto culpa amet.</p>
						<p>
							<ul class="colorlib-social-icons">
								<li><a href="#"><i class="icon-twitter"></i></a></li>
								<li><a href="#"><i class="icon-facebook"></i></a></li>
								<li><a href="#"><i class="icon-linkedin"></i></a></li>
								<li><a href="#"><i class="icon-dribbble"></i></a></li>
							</ul>
						</p>
					</div>
					<div class="col-md-3 colorlib-widget">
						<h4>Quick Links</h4>
						<p>
							<ul class="colorlib-footer-links">
								<li><a href="#">Accomodation</a></li>
								<li><a href="#">Dining &amp; Bar</a></li>
								<li><a href="#">Restaurants</a></li>
								<li><a href="#">Beach &amp; Resorts</a></li>
							</ul>
						</p>
					</div>
					<div class="col-md-3">
						<h4>Recents Blog Post</h4>
						<ul class="colorlib-footer-links">
							<li><a href="#">The Ultimate Packing List For Female Travelers</a></li>
							<li><a href="#">How These 5 People Found The Path to Their Dream Trip</a></li>
							<li><a href="#">A Definitive Guide to the Best Dining and Drinking Venues in the City</a></li>
						</ul>
					</div>

					<div class="col-md-3 col-md-push-1">
						<h4>Contact Information</h4>
						<ul class="colorlib-footer-links">
							<li>708 W 1st St, <br> Leon, IA 50144</li>
							<li><a href="tel://+01-309-807-8380">+01-309-807-8380</a></li>
							<li><a href="mailto:info@riversinn.com">info@riversinn.com</a></li>
							<li><a href="http://RIVERSINN.com">RIVERSINN.com</a></li>
						</ul>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 text-center">
						<p>
							<small class="block">
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart3" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</small> 
							<small class="block">Demo Images: <a href="http://unsplash.co/" target="_blank">Unsplash</a></small>
						</p>
					</div>
				</div>
			</div>
		</footer>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Owl carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	<script src="js/bootstrap-datepicker.js"></script>
	<!-- Google Map -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDjrYwzfh9kj2shniNbnCF8RXRYfRGJtQM&sensor=false"></script>
	<script src="js/google_map.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>

</form>	</body>
</html>

