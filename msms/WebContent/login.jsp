<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
</head>
<body>
	<%
		
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			
			try
			{if(username.equals("admin")&& password.equals("admin")){
				session.setAttribute("username",username);
				response.sendRedirect("dashboard.jsp");}
			else if(username.isEmpty()||password.isEmpty()){
		
				out.print("<script type=\"text/javascript\">");
				out.print("alert(\"id or password can't be empty\")");
				out.print("</script>");
				response.sendRedirect("index.jsp");
			}
		
			else{
				out.print("<script type=\"text/javascript\">");
				out.print("alert(\"invalid credentials\")");
				out.print("</script>");
				response.sendRedirect("index.jsp");
				
			}
			}catch(Exception e)
			{
				e.printStackTrace();
			}
	%>
</body>
</html>