<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterUser.aspx.cs" Inherits="Rough_bootstap.RegisterUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    <style type="text/css">
        .auto-style1 {
            width: 209px;
        }
    </style>
</head>
<body>
     <script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
    <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
    <link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css'
        media="screen" />
    <form id="form1" runat="server">
        		<div class="container-fluid">
                <nav class="colorlib-nav" role="navigation" style="background-color:gainsboro;">
                <div class="top">
                    <div class="container ">
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
                                    <li><h3><asp:LoginName ID ="LoginUserName" runat ="server" ForeColor="White" /></h3></li>
                                     <li><asp:LoginStatus ID="LoginStatus1" runat="server"  /></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
            
                    <div class="jumbotron" style="background-color:cornflowerblue">
			<div class="row main">
				
	            
				<div class="main-login main-center form-group vertical-center-row col-md-4" >
                        
                        <table >
                            <tr>
                                <th colspan="3">Register
                                </th>
                            </tr>
                            <tr>
                                <td>Username
                                </td>
                                <td>
                                    <asp:TextBox ID="txtUsername" class="form-control" runat="server" Height="26px" Width="166px" ></asp:TextBox>
                                </td>
                                <td class="auto-style1">
                                    <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtUsername"
                                        runat="server" ></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Password
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPassword" class="form-control" runat="server" TextMode="Password" Height="23px" />
                                </td>
                                <td class="auto-style1">
                                    <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtPassword"
                                        runat="server" ></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Confirm Password
                                </td>
                                <td>
                                    <asp:TextBox ID="txtConfirmPassword" class="form-control" runat="server" TextMode="Password" Height="25px" />
                                </td>
                                <td class="auto-style1">
                                    <asp:CompareValidator ErrorMessage="Passwords do not match." ForeColor="Red" ControlToCompare="txtPassword"
                                        ControlToValidate="txtConfirmPassword" runat="server" ></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Email
                                </td>
                                <td>
                                    <asp:TextBox ID="txtEmail" class="form-control" runat="server" Height="22px" />
                                </td>
                                <td class="auto-style1">
                                    <asp:RequiredFieldValidator ErrorMessage="Required" Display="Dynamic" ForeColor="Red" ControlToValidate="txtEmail" runat="server" ></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                        ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Invalid email address." ></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <asp:Button Text="Submit" runat="server"  Class="btn btn-primary" OnClick="RegisterUsers" />
                                </td>
                                <td class="auto-style1"></td>
                            </tr>
                        </table>
                              
                    </div>
                </div>
            </div>
        </div></div>
    </form>
</body>
</html>
