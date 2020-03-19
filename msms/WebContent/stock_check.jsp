<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Stock Check</title>
</head>
<body>
	 <table id="table" border="1">
	            
	            
	            <tr>
	                <th>Medicine Name</th>
	                <th>No. of Units</th>
	                <th>Price per Unit</th>
	 				<th>Description</th>    
	 				<th>Batch Number</th> 
	 				<th>Expiry Date</th>      
	            </tr>
	            
	            
	            
	   </table> 
	   
<%
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicines", "root", "abanadak");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from med");
		while(rs.next())
		{
			String med_name=rs.getString("med_name");
			String med_unit=rs.getString("med_unit");
			String price_per_unit=rs.getString("price_per_unit");
			String description=rs.getString("description");
			String batch_no=rs.getString("batch_no");
			String expiry_date=rs.getString("expiry_date");
			
			out.println (med_name+" "+med_unit+" "+price_per_unit+" "+description+" "+batch_no+" "+expiry_date);
			out.println('\n');

		}
		
	}catch(Exception e)
	{
		e.printStackTrace();
	}

%>        
 
  
</body>
</html>