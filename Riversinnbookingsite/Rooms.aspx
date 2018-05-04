<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rooms.aspx.cs" Inherits="Rough_bootstap.Rooms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Rivers Inn Hotel</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content="" />

    <!-- Facebook and Twitter integration -->
    <meta property="og:title" content="" />
    <meta property="og:image" content="" />
    <meta property="og:url" content="" />
    <meta property="og:site_name" content="" />
    <meta property="og:description" content="" />
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
    <form id="form1" runat="server">
        <div id="page">
            <nav class="colorlib-nav" role="navigation">
                <div class="top">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-4">
                                <p class="site">www.RiversInn.com</p>
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
                                <div id="colorlib-logo"><a href="Home.aspx">RiversInn</a></div>
                            </div>
                            <div class="col-xs-10 text-right ">
                                <ul>
                                    <li class="active"><a href="Home.aspx">Home</a></li>
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
                                    <li><a href="Contact.aspx">Contact</a></li>
                                    <li><h3><asp:LoginName ID ="LoginUserName" runat ="server"/></h3></li>
                                     <li><asp:LoginStatus ID="LoginStatus1" runat="server"  /></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        
            <div class="modal-body">

                            <div id="colorlib-rooms" class="colorlib-light-grey">

                                <div class="item">
                                    
                                    <a href="images/room-1.jpg" class="room image-popup-link" style="background-image: url(images/room-1.jpg);"></a>
                                    <div class="desc text-center">
                                        <span class="rate-star"><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span>
                                        <h3><a href="Rooms.aspx">Suite</a></h3>
                                        <p class="price">
                                            <span class="currency">$</span>
                                            <span class="price-room">99</span>
                                            <span class="per">/ per night</span>
                                        </p>
                                        <ul>
                                            <li><i class="icon-check"></i>Only 10 rooms are available</li>
                                            <li><i class="icon-check"></i>Breakfast included</li>
                                            <li><i class="icon-check"></i>Price does not include VAT &amp; services fee</li>
                                        </ul>
                                        
                                    </div>
                                </div>
                                <div class="item">
                                    <a href="images/room-2.jpg" class="room image-popup-link" style="background-image: url(images/room-2.jpg);"></a>
                                    <div class="desc text-center">
                                        <span class="rate-star"><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full"></i></span>
                                        <h3><a href="Rooms.aspx">Double Room</a></h3>
                                        <p class="price">
                                            <span class="currency">$</span>
                                            <span class="price-room">199</span>
                                            <span class="per">/ per night</span>
                                        </p>
                                        <ul>
                                            <li><i class="icon-check"></i>Perfect for traveling couples</li>
                                            <li><i class="icon-check"></i>Breakfast included</li>
                                            <li><i class="icon-check"></i>Price does not include VAT &amp; services fee</li>
                                        </ul>
                                        
                                    </div>
                                </div>
                                <div class="item">
                                    <a href="images/room-3.jpg" class="room image-popup-link" style="background-image: url(images/room-3.jpg);"></a>
                                    <div class="desc text-center">
                                        <span class="rate-star"><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full"></i></span>
                                        <h3><a href="Rooms.aspx">Family Room</a></h3>
                                        <p class="price">
                                            <span class="currency">$</span>
                                            <span class="price-room">249</span>
                                            <span class="per">/ per night</span>
                                        </p>
                                        <ul>
                                            <li><i class="icon-check"></i>Two double beds</li>
                                            <li><i class="icon-check"></i>Babysitting facilities</li>
                                            <li><i class="icon-check"></i>1 free bed available on request</li>
                                        </ul>
                                        
                                    </div>
                                </div>
                                <div class="item">
                                    <a href="images/room-4.jpg" class="room image-popup-link" style="background-image: url(images/room-4.jpg);"></a>
                                    <div class="desc text-center">
                                        <span class="rate-star"><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full"></i></span>
                                        <h3><a href="Rooms.aspx">Classic Double Room</a></h3>
                                        <p class="price">
                                            <span class="currency">$</span>
                                            <span class="price-room">150</span>
                                            <span class="per">/ per night</span>
                                        </p>
                                        <ul>
                                            <li><i class="icon-check"></i>Only 10 rooms are available</li>
                                            <li><i class="icon-check"></i>Breakfast included</li>
                                            <li><i class="icon-check"></i>Price does not include VAT &amp; services fee</li>
                                        </ul>
                                        
                                    </div>
                                </div>
                                <div class="item">
                                    <a href="images/room-5.jpg" class="room image-popup-link" style="background-image: url(images/room-5.jpg);"></a>
                                    <div class="desc text-center">
                                        <span class="rate-star"><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full"></i></span>
                                        <h3><a href="Rooms.aspx">Superior Double Room</a></h3>
                                        <p class="price">
                                            <span class="currency">$</span>
                                            <span class="price-room">200</span>
                                            <span class="per">/ per night</span>
                                        </p>
                                        <ul>
                                            <li><i class="icon-check"></i>Perfect for traveling couples</li>
                                            <li><i class="icon-check"></i>Breakfast included</li>
                                            <li><i class="icon-check"></i>Price does not include VAT &amp; services fee</li>
                                        </ul>
                                        
                                    </div>
                                </div>
                                <div class="item">
                                    <a href="images/room-6.jpg" class="room image-popup-link" style="background-image: url(images/room-6.jpg);"></a>
                                    <div class="desc text-center">
                                        <span class="rate-star"><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full"></i></span>
                                        <h3><a href="Rooms.aspx">Superior Family Room</a></h3>
                                        <p class="price">
                                            <span class="currency"><small>$</small></span>
                                            <span class="price-room">299</span>
                                            <span class="per">/ per night</span>
                                        </p>
                                        <ul>
                                            <li><i class="icon-check"></i>Perfect for traveling couples</li>
                                            <li><i class="icon-check"></i>Breakfast included</li>
                                            <li><i class="icon-check"></i>Price does not include VAT &amp; services fee</li>
                                        </ul>
                                        
                                    </div>
                                </div>



                            </div>

        </div></div>
    </form>
</body>
</html>
