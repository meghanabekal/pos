<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
<style>
		body,
		html {
			margin: 0;
			padding: 0;
			height: 100%;
			background: #60a3bc !important;
		}
		.user_card {
			height: 400px;
			width: 350px;
			margin-top: auto;
			margin-bottom: auto;
			background: #f39c12;
			position: relative;
			display: flex;
			justify-content: center;
			flex-direction: column;
			padding: 10px;
			box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
			-webkit-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
			-moz-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
			border-radius: 5px;

		}
		.brand_logo_container {
			position: absolute;
			height: 170px;
			width: 170px;
			top: -75px;
			border-radius: 50%;
			background: #60a3bc;
			padding: 10px;
			text-align: center;
		}
		.brand_logo {
			height: 150px;
			width: 150px;
			border-radius: 50%;
			border: 2px solid white;
		}
		.form_container {
			margin-top: 100px;
		}
		.login_btn {
			width: 100%;
			background: #c0392b !important;
			color: white !important;
		}
		.login_btn:focus {
			box-shadow: none !important;
			outline: 0px !important;
		}
		.login_container {
			padding: 0 2rem;
		}
		.input-group-text {
			background: #c0392b !important;
			color: white !important;
			border: 0 !important;
			border-radius: 0.25rem 0 0 0.25rem !important;
		}
		.input_user,
		.input_pass:focus {
			box-shadow: none !important;
			outline: 0px !important;
		}
		.custom-checkbox .custom-control-input:checked~.custom-control-label::before {
			background-color: #c0392b !important;
		}


</style>


</head>
<body>
{$list}
	<div class="container h-100">
		<div class="d-flex justify-content-center h-100">
			<div class="user_card">
				<div class="d-flex justify-content-center">
					<div class="brand_logo_container">
						<img src="data:image/jpeg;base64,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" class="brand_logo" alt="Logo">
					</div>
				</div>
				<div class="d-flex justify-content-center form_container">
			
<form:form action="Register" modelAttribute="cust" method="post">

						<div class="input-group mb-3">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
							<input type="text" name="emailAddress" class="form-control input_user"  placeholder="emailAddress">
						</div>
							<div class="input-group mb-3">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
							<input type="text" name="firstName" class="form-control input_user" placeholder="emailAddress">
						</div>
							<div class="input-group mb-3">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
							<input type="text" name="lastName" class="form-control input_user" placeholder="lastName">
						</div>
						<div class="input-group mb-2">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input type="password" name="password" class="form-control input_pass"  placeholder="password">
						</div>
						<div class="form-group">
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input" id="customControlInline">
								<label class="custom-control-label" for="customControlInline">Remember me</label>
							</div>
						</div>
							<div class="d-flex justify-content-center mt-3 login_container">
				 	<button type="submit" name="button" class="btn">Register</button>
				   </div>
			</form:form>
				</div>
		
				<div class="mt-4">
					<div class="d-flex justify-content-center links">
						Already have an account? <a href="#" class="ml-2">Sign In</a>
					</div>
					<div class="d-flex justify-content-center links">
						<a href="#">Forgot your password?</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
<br/>

<br/>
</body>
</html>