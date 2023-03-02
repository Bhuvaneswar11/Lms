<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up Form by Colorlib</title>

<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<div class="main">
	<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="images/Data_security_05.jpg" alt="sing up image">
						</figure>
						<a href="registration.jsp" class="signup-image-link">Create an
							account</a>
					</div>

					<div class="signin-form">
						<h2 class="form-title">Sign In</h2>
						<form method="post" action="login" class="register-form"
							id="login-form">
							<div class="form-group">
								<label for="username"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="username" id="username"
									placeholder="Your Name" required="required"/>
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> 
								<input type="password" name="password" id="password"
									placeholder="Password" required="required" />
							</div>
							<div class="form-group">
								<a href="forgotPassword.jsp">Forgot Password</a>
							</div>
							
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Log in" />
							</div>
						</form>
						<div class="social-login">
							<span class="social-label">Or login with</span>
							<ul class="socials">
								<li><a href="https://www.facebook.com/login/"><i
										class="display-flex-center zmdi zmdi-facebook"></i></a></li>
								<li><a href="https://twitter.com/i/flow/login"><i
										class="display-flex-center zmdi zmdi-twitter"></i></a></li>
								<li><a href="https://accounts.google.com/v3/signin/identifier?dsh=S185317329%3A1669565306137983&continue=https%3A%2F%2Fmyaccount.google.com%3Futm_source%3Daccount-marketing-page%26utm_medium%3Dcreate-account-button&flowEntry=AddSession&flowName=GlifWebSignIn"><i
										class="display-flex-center zmdi zmdi-google"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>

	</div>

	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	<script type="text/javascript">
	
	
	var status=document.getElementById("status").value;
	if(status == "failed"){
		swal("Sorry","Wrong UserName or Password","error");
	}
	else if(status == "invalid Email"){
		swal("Sorry","UserName is Mandatory","error");
	}
	else if(status == "invalid upwd "){
		swal("Sorry","Please Enter Password","error");
	}
	else if(status == "resetSuccess"){
		swal("Hurray","Password Reset Successfully","success");
	}
	else if(status == "resetFailed"){
		swal("Sorry","Password Reset Failed","error");
	}
	</script>
</body>
</html>