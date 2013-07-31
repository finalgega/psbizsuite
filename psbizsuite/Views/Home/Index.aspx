<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>

<html>
<head id="Head1" runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Login</title>

    <link rel="stylesheet" href="../../Assets/Css/screen.css" type="text/css" media="screen" title="default" />
    <!--  jquery core -->
    <script src="../psbizsuite/Assets/Jquery/jquery-1.7.2.js" type="text/javascript"></script>

    <script>
        $(document).ready(function () {
            $(".forgot-pwd").click(function () {
                $("#loginbox").hide();
                $("#forgotbox").show();
            });
            $(".back-login").click(function () {
                $("#loginbox").show();
                $("#forgotbox").hide();
            });
               
        });
    </script>

</head>
<body id="login-bg">

    <!-- Start: login-holder -->
    <div id="login-holder">

        <!-- start logo -->
        <div id="logo-login">
            <a href="index.html">
                <img src="../psbizsuite/Assets/Images/shared/logo.png" width="156" height="40" alt="" /></a>
        </div>
        <!-- end logo -->
        <!-- start error message -->
        <div id="errorMsg" style="top: 170px; position:relative; float:right;">
            <span style="color:yellow; font-size: 15px; float:right; "><%= TempData["msg"]%></span>  
        </div>  
        <!-- end error message -->   
        <div class="clear"></div>

        <!--  start loginbox ................................................................................. -->
        <div id="loginbox">

            <!--  start login-inner -->
            <div id="login-inner">
                <% using (Html.BeginForm("Login","Home",FormMethod.Post))
                   { %>
                <table class="zeroPS" border="0">
                    <tr>
                        <th>Username</th>
                        <td>
                            <input type="text" name="username" class="login-inp" placeholder="loginID" /></td>
                    </tr>
                    <tr>
                        <th>Password</th>
                        <td>
                            <input type="password" placeholder="yourpassword" name="password" class="login-inp" /></td>
                    </tr>
                    <tr>
                        <th></th>
                        <td style="display: table-cell; vertical-align: top;">
                           
                    </tr>
                    <tr>
                        <th></th>
                        <td>
                            <input type="submit" class="submit-login" style="height: 30px" /></td>
                    </tr>
                </table>
                <% } %>
            </div>
            <!--  end login-inner -->
            <div class="clear"></div>
            <a class="forgot-pwd">Forgot Password?</a>
        </div>
        <!--  end loginbox -->

        <!--  start forgotbox ................................................................................... -->
        <div id="forgotbox">
            <div id="forgotbox-text" style="margin-bottom:20px">Reset Password </div>
            <!--  start forgot-inner -->
            <div id="forgot-inner">
                 <% using (Html.BeginForm("resetpwd", "Home", FormMethod.Post))
                   { %>
                <table border="0" class="zeroPS">
                    <tr>
                        <th>Username</th>
                        <td><input type="text" value="" name="usernameReset" class="login-inp" /></td>
                    </tr>
                    <tr>
                        <th>Email address</th>
                        <td><input type="text" value="" name="emailReset"  class="login-inp" /></td>
                    </tr>
                    <tr>
                        <th></th>
                        <td>
                            <input type="submit" class="submit-login" style="height: 30px"/></td>
                    </tr>
                </table>
                  <% } %>
            </div>
            <!--  end forgot-inner -->
            <div class="clear"></div>
            <a class="back-login">Back to login</a>
        </div>
        <!--  end forgotbox -->

    </div>
    <!-- End: login-holder -->

</body>
</html>
