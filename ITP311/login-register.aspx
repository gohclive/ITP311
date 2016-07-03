﻿<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="login-register.aspx.cs" Inherits="ITP311.login_register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Silver Medical - Login &amp; Registration</title>

    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="font-awesome-4.6.3/css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/login.css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    <script src="js/jquery-2.2.4.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar navbar navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                </button>
                <a class="navbar-brand" href="#">
                    <img src="img/banner-high-heartbeat@1x.png" alt="logo" height="63px" />
                </a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="/index.aspx">Home</a>
                    </li>
                    <li>
                        <a href="/index.aspx#about">About</a>
                    </li>
                    <li>
                        <a href="/index.aspx#services">Services</a>
                    </li>
                    <li>
                        <a href="/index.aspx#contact-us">Contact Us</a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="#">Log In</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Top content -->
    <div class="top-content">

        <div class="inner-bg">
            <div class="container">

                <form runat="server">

                <div class="row">
                    <div class="col-sm-5">
                        <div class="form-box">
                            <div class="form-top">
                                <div class="form-top-left">
                                    <h3>Login to our site</h3>
                                    <p>Enter username and password to log on:</p>
                                </div>
                                <div class="form-top-right">
                                    <i class="fa fa-key"></i>
                                </div>
                            </div>
                            <div class="form-bottom">
                                    <div class="form-group">
                                        <label class="sr-only" for="formUsername">Username</label>
                                        <asp:TextBox ID="loginUsername" placeholder="Username..." class="form-username form-control" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label class="sr-only" for="formPassword">Password</label>
                                       <asp:TextBox TextMode="Password" ID="loginPassword" placeholder="Password..." class="form-password form-control" runat="server"></asp:TextBox>
                                    </div>
                                    <asp:button Text="Sign In" ID="signIn" class="btn btn-default" runat="server" OnClick="signIn_Click"/>
                            </div>
                        </div>

                    </div>

                    <div class="col-sm-1 middle-border"></div>
                    <div class="col-sm-1"></div>

                    <div class="col-sm-5">

                        <div class="form-box">
                            <div class="form-top">
                                <div class="form-top-left">
                                    <h3>Sign up now</h3>
                                    <p>Fill in the form below to get instant access:</p>
                                </div>
                                <div class="form-top-right">
                                    <i class="fa fa-pencil"></i>
                                </div>
                            </div>
                            <div class="form-bottom">
                                    <div class="form-group">
                                        <label class="sr-only" for="formNRIC">NRIC</label>
                                        <asp:TextBox name="formNRIC" placeholder="NRIC..." class="form-NRIC form-control" ID="formNRIC" runat="server" Width="300px" />
                                    </div>
                                    <div class="form-group">
                                        <label class="sr-only" for="formFN">First name</label>
                                        <asp:TextBox name="formFN" placeholder="First name..." class="form-first-name form-control" ID="formFN" runat="server" Width="300px" />
                                    </div>
                                    <div class="form-group">
                                        <label class="sr-only" for="formLN">Last name</label>
                                        <asp:TextBox name="formLN" placeholder="Last name..." class="form-last-name form-control" ID="formLN" runat="server" Width="300px" />
                                    </div>
                                    <div class="form-group">
                                        <label class="sr-only" for="formPhone">Phone Number</label>
                                        <asp:TextBox TextMode="Number" name="formPhone" placeholder="Phone Number..." class="form-phonenumber form-control" id="formPhone" runat="server" Width="300px" />
                                    </div>
                                    <div class="form-group">
                                        <label class="sr-only" for="formEmail">Email</label>
                                        <asp:TextBox TextMode="Email" name="formEmail" placeholder="Email..." class="form-email form-control" id="formEmail" runat="server" Width="300px" />
                                    </div>
                                    <asp:Button ID="signUp" class="btn btn-default" Text="Sign me up!" runat="server" Width="300px" OnClick="signUp_Click" />
                            </div>
                        </div>

                    </div>
                </div>
            </form>
            </div>
        </div>

    </div>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright © Silver Medical Group 2014</p>
                </div>
            </div>
        </div>
    </footer>

</body>
</html>
