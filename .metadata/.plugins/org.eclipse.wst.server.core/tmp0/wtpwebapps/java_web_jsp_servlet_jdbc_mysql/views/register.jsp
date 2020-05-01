<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
</head>
<body>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card">
					<div class="card-header">Register</div>
					<div class="card-body">
					<div class="alert alert-success center" role="alert">
				<p>${NOTIFICATION}</p>
			</div>

						<form class="form-horizontal" action="<c:url value='/dang-ki'/>" id="FormRegister"
						method="post">

							<div class="form-group">
								<label for="name" class="cols-sm-2 control-label">Your
									Name</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-user fa" aria-hidden="true"></i></span> <input
											type="text" class="form-control" name="fullName" id="fullName"
											placeholder="Enter your Name" />
									</div>
								</div>
							</div>
							<!--  
							<div class="form-group">
								<label for="email" class="cols-sm-2 control-label">Your
									Email</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-envelope fa" aria-hidden="true"></i></span> <input
											type="text" class="form-control" name="email" id="email"
											placeholder="Enter your Email" />
									</div>
								</div>
							</div>
							-->
							<div class="form-group">
								<label for="username" class="cols-sm-2 control-label">Username</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-users fa" aria-hidden="true"></i></span> <input
											type="text" class="form-control" name="userName"
											id="userName" placeholder="Enter your Username" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="password" class="cols-sm-2 control-label">Password</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
											type="password" class="form-control" name="password"
											id="password" placeholder="Enter your Password" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="confirm" class="cols-sm-2 control-label">Confirm
									Password</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
											type="password" class="form-control" name="confirm"
											id="confirm" placeholder="Confirm your Password" />
									</div>
								</div>
							</div>
							<div class="form-group ">
							<input type="hidden" value="register" name="action" />
								<button type="submit" class="btn btn-primary btn-lg btn-block login-button">Register</button>
							</div>
							<div class="login-register">
								<a href="/java_web_jsp_servlet_jdbc_mysql/dang-nhap?action=login">Login</a>
							</div>
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>