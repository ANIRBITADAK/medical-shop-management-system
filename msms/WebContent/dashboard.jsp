<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
</head>
<style>
	body {
	margin: 0;
	background: white;
	font-family: sans-serif;
	font-weight: 800;
}

.container {
	width: 80%;
	margin: 0 auto;
}

header {
  background: #55d6aa;
}

header::after {
  content: '';
  display: table;
  clear: both;
}

nav {
  float: right;
}

nav ul {
  margin: 0;
  padding: 0;
  list-style: none;
}

nav li {
  display: inline-block;
  margin-left: 50px;
  padding-top: 23px;

  position: relative;
}

nav a {
  color: #444;
  text-decoration: none;
  text-transform: uppercase;
  font-size: 14px;
}

nav a:hover {
  color: #000;
}

nav a::before {
  content: '';
  display: block;
  height: 5px;
  background-color: #444;

  position: absolute;
  top: 0;
  width: 0%;

  transition: all ease-in-out 250ms;
}

nav a:hover::before {
  width: 100%;
}
</style>
<body>

<%
	if(session.getAttribute("username")==null)
		response.sendRedirect("index.jsp");
%>
	
	Welcome ${username}
	<div align="right">
		<form action="logout">
			<input type="submit" value="Logout">
		</form>
	</div>
	<h1 align="center">Medical Shop Management System</h1>
	<header>
    <div class="container">
      <nav>
        <ul>
          <li><a href="add_medicines.jsp">Add Medicines</a></li>
          <li><a href="#">Sell Medicine</a></li>
          <li><a href="stock_check.jsp">Stock Check</a></li>
          <li><a href="#">Sell Check</a></li>
        </ul>
      </nav>
    </div>
  </header>
  
  
  

	
</body>
</html>