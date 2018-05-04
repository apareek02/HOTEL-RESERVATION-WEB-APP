<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenerateReport.aspx.cs" Inherits="RiversInnBookingWebsite.GenerateReport" %>

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
    <form id="home" runat="server">
        <div class="colorlib-loader"></div>

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
                        <h1>PAYMENT SUCCESSFULL</h1>
                    </div>
                    <div class="col-md-4">
                    </div>
                </div>
            </div>
             <div class="row" style="background-color: whitesmoke; vertical-align: middle; text-align: center">
                <div class="col-md-2">
                </div>
                <div class="col-md-8">
                    <div class="jumbotron">
                        <h2>Booking Summary</h2>
                        <%--<asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="382px" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                            <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        </asp:DetailsView>--%>
                        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="Booking_id" DataSourceID="SqlDataSource1" ForeColor="#333333">
                            <EditItemTemplate>
                                Booking_id:
                                <asp:Label ID="Booking_idLabel1" runat="server" Text='<%# Eval("Booking_id") %>' />
                                <br />
                                Total_Adult:
                                <asp:TextBox ID="Total_AdultTextBox" runat="server" Text='<%# Bind("Total_Adult") %>' />
                                <br />
                                Total_Child:
                                <asp:TextBox ID="Total_ChildTextBox" runat="server" Text='<%# Bind("Total_Child") %>' />
                                <br />
                                Check_In_Date:
                                <asp:TextBox ID="Check_In_DateTextBox" runat="server" Text='<%# Bind("Check_In_Date") %>' />
                                <br />
                                Check_Out_Date:
                                <asp:TextBox ID="Check_Out_DateTextBox" runat="server" Text='<%# Bind("Check_Out_Date") %>' />
                                <br />
                                Payment_Status:
                                <asp:TextBox ID="Payment_StatusTextBox" runat="server" Text='<%# Bind("Payment_Status") %>' />
                                <br />
                                Booking_Date:
                                <asp:TextBox ID="Booking_DateTextBox" runat="server" Text='<%# Bind("Booking_Date") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <InsertItemTemplate>
                                Booking_id:
                                <asp:TextBox ID="Booking_idTextBox" runat="server" Text='<%# Bind("Booking_id") %>' />
                                <br />
                                Total_Adult:
                                <asp:TextBox ID="Total_AdultTextBox" runat="server" Text='<%# Bind("Total_Adult") %>' />
                                <br />
                                Total_Child:
                                <asp:TextBox ID="Total_ChildTextBox" runat="server" Text='<%# Bind("Total_Child") %>' />
                                <br />
                                Check_In_Date:
                                <asp:TextBox ID="Check_In_DateTextBox" runat="server" Text='<%# Bind("Check_In_Date") %>' />
                                <br />
                                Check_Out_Date:
                                <asp:TextBox ID="Check_Out_DateTextBox" runat="server" Text='<%# Bind("Check_Out_Date") %>' />
                                <br />
                                Payment_Status:
                                <asp:TextBox ID="Payment_StatusTextBox" runat="server" Text='<%# Bind("Payment_Status") %>' />
                                <br />
                                Booking_Date:
                                <asp:TextBox ID="Booking_DateTextBox" runat="server" Text='<%# Bind("Booking_Date") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                Booking_id:
                                <asp:Label ID="Booking_idLabel" runat="server" Text='<%# Eval("Booking_id") %>' />
                                <br />
                                Total_Adult:
                                <asp:Label ID="Total_AdultLabel" runat="server" Text='<%# Bind("Total_Adult") %>' />
                                <br />
                                Total_Child:
                                <asp:Label ID="Total_ChildLabel" runat="server" Text='<%# Bind("Total_Child") %>' />
                                <br />
                                Check_In_Date:
                                <asp:Label ID="Check_In_DateLabel" runat="server" Text='<%# Bind("Check_In_Date") %>' />
                                <br />
                                Check_Out_Date:
                                <asp:Label ID="Check_Out_DateLabel" runat="server" Text='<%# Bind("Check_Out_Date") %>' />
                                <br />
                                Payment_Status:
                                <asp:Label ID="Payment_StatusLabel" runat="server" Text='<%# Bind("Payment_Status") %>' />
                                <br />
                                Booking_Date:
                                <asp:Label ID="Booking_DateLabel" runat="server" Text='<%# Bind("Booking_Date") %>' />
                                <br />

                            </ItemTemplate>
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        </asp:FormView>
    
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RiversInnConnectionString %>" SelectCommand="SELECT [Booking_id], [Total_Adult], [Total_Child], [Check_In_Date], [Check_Out_Date], [Payment_Status], [Booking_Date] FROM [Booking]"></asp:SqlDataSource>
    
                    </div>
                    <div class="col-md-4">
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
