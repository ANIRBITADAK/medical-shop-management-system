<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<title>Medical Shop Management System</title>
	</head>
		<style>
		.center{
			margin: 0;
			position: absolute;
			top: 50%;
			left: 50%;
			transform: translate(-50%,-50%);
		}
		.button{
		margin-left:50px;
		}
		</style>
	<body style="background-color:#7fd3ff;">
	<h1 align="center">  Medical Shop Management System</h1>
		<div align="center" class="center">
			<h2>Login</h2>
			<form action="login.jsp" method="post">
				Username:<input type="text" name="username" ><br><br>
				Password:<input type="password" name="password"><br><br>
				<input type="submit" value="Login" >
			</form>
		</div>
		
		
	</body>
</html>
