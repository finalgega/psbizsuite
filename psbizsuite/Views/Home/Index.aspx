﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Login</title>

    <link rel="stylesheet" href="../../Assets/Css/screen.css" type="text/css" media="screen" title="default" />

    <!--  jquery core -->
    <script src="../../Assets/Jquery/jquery-1.4.1.min.js" type="text/javascript"></script>

    <!-- Custom jquery scripts -->
    <script src="../../Assets/Jquery/custom_jquery.js" type="text/javascript"></script>

    <!-- MUST BE THE LAST SCRIPT IN <HEAD></HEAD></HEAD> png fix -->
    <script src="../../Assets/Jquery/jquery.pngFix.pack.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(document).pngFix();
        });
    </script>
</head>
<body id="login-bg"> 
 
    <!-- Start: login-holder -->
    <div id="login-holder">

	    <!-- start logo -->
	    <div id="logo-login">
		    <a href="index.html"><img src="../../Assets/Images/shared/logo.png" width="156" height="40" alt="" /></a>
	    </div>
	    <!-- end logo -->
	
	    <div class="clear"></div>
	
	    <!--  start loginbox ................................................................................. -->
	    <div id="loginbox">
	
	    <!--  start login-inner -->
	    <div id="login-inner">
		    <table class="zeroPS" border="0">
		    <tr>
			    <th>Username</th>
			    <td><input type="text"  class="login-inp" /></td>
		    </tr>
		    <tr>
			    <th>Password</th>
			    <td><input type="password" value="************"  onfocus="this.value=''" class="login-inp" /></td>
		    </tr>
		    <tr>
			    <th></th>
			    <td style="display: table-cell; vertical-align:top;"><input type="checkbox" class="checkbox-size" id="login-check" /><label for="login-check">Remember me</label></td>
		    </tr>
		    <tr>
			    <th></th>
			    <td><a href="Director/DirectorDashboard"><input type="button" class="submit-login" /></a></td>
		    </tr>
		    </table>
	    </div>
 	    <!--  end login-inner -->
	    <div class="clear"></div>
	    <a href="x" class="forgot-pwd">Forgot Password?</a>
     </div>
     <!--  end loginbox -->
 
	    <!--  start forgotbox ................................................................................... -->
	    <div id="forgotbox">
		    <div id="forgotbox-text">Please send us your email and we'll reset your password.</div>
		    <!--  start forgot-inner -->
		    <div id="forgot-inner">
		    <table border="0" class="zeroPS">
		    <tr>
			    <th>Email address:</th>
			    <td><input type="text" value=""   class="login-inp" /></td>
		    </tr>
		    <tr>
			    <th> </th>
			    <td><input type="button" class="submit-login"  /></td>
		    </tr>
		    </table>
		    </div>
		    <!--  end forgot-inner -->
		    <div class="clear"></div>
		    <a href="x" class="back-login">Back to login</a>
	    </div>
	    <!--  end forgotbox -->

    </div>
    <!-- End: login-holder -->
</body>
</html>
