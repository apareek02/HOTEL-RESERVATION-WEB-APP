<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaypalPayment.aspx.cs" Inherits="RiversInnBookingWebsite.PaypalPayment" %>

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
        <div class="container-fluid">
            <nav class="colorlib-nav" role="navigation" style="background-color: gainsboro;">
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
                                            <li><a href="#">Classic Double</a></li>
                                            <li><a href="#">Superior Double</a></li>
                                            <li><a href="#">Superior Family</a></li>

                                        </ul>
                                    </li>
                                    <li><a href="Dining.aspx">Dining &amp; Bar</a></li>
                                    <li><a href="Amenities.aspx">Aminities</a></li>
                                    <li><a href="Blog.aspx">Blog</a></li>
                                    <li><a href="About.aspx">About</a></li>
                                    <li><a href="Contact.aspx">Contact</a></li>
                                    <li>
                                        <h3>
                                            <asp:LoginName ID="LoginUserName" runat="server" ForeColor="White" />
                                        </h3>
                                    </li>
                                    <li>
                                        <asp:LoginStatus ID="LoginStatus1" runat="server" />
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
        <div class="container">
            <div class="row" style="background-color: whitesmoke; vertical-align: middle; text-align: center">
                <div class="col-md-2">
                </div>
                <div class="col-md-8">
                    <div class="jumbotron">
                        <h1>PAYMENT</h1>
                    </div>
                    <div style="background-color: cornflowerblue; margin: 30px 0 0 60px; font-family: Arial;">

                        <br />
                        <span style="font-size: larger; color: white; font-weight: bold">First Name:</span>
                        <asp:TextBox runat="server" ValidationGroup="save" ID="txtName" Style="margin-left: 30px; width: 200px; background-image: url('../images/txtBoxbg.jpg') no-repeat;"></asp:TextBox>
                        <br />
                        <br />
                        <span style="font-size: larger; color: white; font-weight: bold">Last Name:</span>
                        <asp:TextBox runat="server" ValidationGroup="save" ID="txtLastName" Style="margin-left: 30px; width: 200px; background-image: url('../images/txtBoxbg.jpg') no-repeat;"></asp:TextBox>

                        <br />
                        <br />
                        <span style="font-size: larger; color: white; font-weight: bold">Your Email Id:</span>
                        <asp:TextBox runat="server" ValidationGroup="save" TextMode="Email" Style="margin-left: 20px; width: 200px;" ID="txtEmailId"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="regexEmailValid" runat="server"
                            ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ControlToValidate="txtEmailId" ValidationGroup="save"
                            ErrorMessage="Invalid Email Format"
                            ForeColor="red"></asp:RegularExpressionValidator><br />
                        <br />
                        <span style="font-size: larger; color: white; font-weight: bold">Your Phone No:</span>
                        <asp:TextBox runat="server" ID="txtPhone" TextMode="Number" ValidationGroup="save" Style="margin-left: 6px; width: 200px;"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtPhone"
                            ForeColor="red" ErrorMessage="Invalid Phone No"
                            ValidationGroup="save" ValidationExpression="^([0-9\(\)\/\+ \-]*)$"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                        <span style="font-size: larger; color: white; font-weight: bold">ADDRESS</span>

                        <asp:TextBox runat="server" ID="TextBoxStAddress" TextMode="MultiLine" ValidationGroup="save" Style="margin-left: 6px; width: 200px;"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="stAddressValidator" runat="server" ControlToValidate="TextBoxStAddress" CssClass="form-control" ValidationGroup="save"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <span style="font-size: larger; color: white; font-weight: bold">CITY</span>

                        <asp:TextBox runat="server" ID="TextBoxCity" ValidationGroup="save" Style="margin-left: 6px; width: 200px;"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxCity" CssClass="form-control" ValidationGroup="save"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <span style="font-size: larger; color: white; font-weight: bold">STATE</span>

                        <asp:TextBox runat="server" ID="TextBoxState" ValidationGroup="save" Style="margin-left: 6px; width: 200px;"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxState" CssClass="form-control" ValidationGroup="save"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <span style="font-size: larger; color: white; font-weight: bold">ZIP</span>
                        <asp:TextBox runat="server" ID="TextBoxZIP" TextMode="Number" ValidationGroup="save" Style="margin-left: 6px; width: 200px;"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxState" CssClass="form-control" ValidationGroup="save"></asp:RequiredFieldValidator>
                        <br />
                        <br />

                        <span style="font-size: larger; color: white; font-weight: bold"></span>
                        <asp:Label runat="server" ID="LblAmount" ForeColor="White" Font-Bold="true" Text="0.01" Style="margin-left: 16px; width: 200px; background-image: url('../images/txtBoxbg.jpg') no-repeat;"></asp:Label>

                        <br />
                        <br />
                        <span style="font-size: larger; color; white; font-weight: bold">Currency:</span>
                        &nbsp&nbsp<asp:DropDownList runat="server" ID="ddlCurrency" Style="margin-left: 42px; width: 204px; background-image: transparent url('../images/txtBoxbg.jpg') no-repeat;">
                            <asp:ListItem>- Select -</asp:ListItem>
                            <asp:ListItem>INR</asp:ListItem>
                            <asp:ListItem>USD</asp:ListItem>
                            <asp:ListItem>EURO</asp:ListItem>
                            <asp:ListItem>Pound</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />

                        <asp:Button ID="btnPay" runat="server" Text="PayPal Checkout" CssClass="btn btn-default btn-primary" OnClick="btnPay_Click" ValidationGroup="save"></asp:Button>
                    </div>
                </div>
                <div class="col-md-4">
                </div>
            </div>
        </div>

    </form>
</body>
</html>
