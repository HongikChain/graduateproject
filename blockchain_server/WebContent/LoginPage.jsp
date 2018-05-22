<%@page import="com.blockchain.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인</title>

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<link href="./Resources/css/LoginPage.css" rel="stylesheet"/>
<script src="./Resources/js/LoginPage.js"> </script>

</head>
<body>

<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="#" class="active" id="login-form-link">Login</a>
							</div>
							<div class="col-xs-6">
								<a href="#" id="register-form-link">Register</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form" action="http://localhost:8181/blockchain_server/login.do" method="post" role="form" style="display: block;">
									<div class="form-group">
										<input type="text" name="id"  tabindex="1" class="form-control" placeholder="아이디" value="">
									</div>
									<div class="form-group">
										<input type="password" name="password" tabindex="2" class="form-control" placeholder="비밀번호">
									</div>
									<div class="form-group" style="text-align:center;">
										<%
											String login = (String)session.getAttribute("login");
											if(login != null){
													if(login.equals("fail"))
														out.println("<div style='color:red; display:inline-block; font-size:small;'>아이디와 비밀번호가 일치하지 않습니다.</div>");
													if(login.equals("dberror"))
														out.println("<div style='color:red; display:inline-block; font-size:small;'>데이터베이스 에러가 발생했습니다.</div>");
													
											}
											
										%>
									</div>
									<div class="form-group text-center">
										<input type="checkbox" tabindex="3" class="" name="remember" id="remember">
										<label for="remember"> Remember me </label>
									</div>
									
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Log In">
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
													<a href="http://phpoll.com/recover" tabindex="5" class="forgot-password">Forgot Password?</a>
												</div>
											</div>
										</div>
									</div>
								</form>
								<form id="register-form" action="http://localhost:8181/blockchain_server/register.do" method="post" role="form" style="display: none;">
									<div class="form-group">
										<input type="text" name="id"  tabindex="1" class="form-control" placeholder="아이디" value="">
									</div>
									<div class="form-group">
										<input type="password" name="password" tabindex="2" class="form-control" placeholder="패스워드" value="">
									</div>
									<div class="form-group">
										<input type="text" name="name" tabindex="3" class="form-control" placeholder="이름">
									</div>
									<div class="form-group">
										<input type="text" name="major" tabindex="4" class="form-control" placeholder="전공">
									</div>
									<div class="form-group">
										<input type="text" name="grade" tabindex="5" class="form-control" placeholder="학년">
									</div>
									<div class="form-group">
										<input type="text" name="phone" tabindex="6" class="form-control" placeholder="연락처">
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Register Now">
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
</body>
</html>