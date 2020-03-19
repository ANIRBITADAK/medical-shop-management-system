package msms;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Add_medicine")
public class Add_medicine extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Add_medicine() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String med_name=request.getParameter("med_name");
		String med_unit=request.getParameter("med_unit");
		String price_per_unit=request.getParameter("price_per_unit");
		String description=request.getParameter("desc");
		String batch_no=request.getParameter("Batch_no");
		String expiry_date=request.getParameter("expiry_date");
		PrintWriter out=response.getWriter();
		if(med_name.isEmpty()==true||med_unit.isEmpty()==true||price_per_unit.isEmpty()==true||description.isEmpty()==true||batch_no.isEmpty()==true||expiry_date.isEmpty()==true) {
			out.println("<script>alert(\"one or more fields are empty\")</script>");
			response.sendRedirect("add_medicines.jsp");
		}
		
		
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicines", "root", "abanadak");
			Statement st=con.createStatement();
			boolean x=st.execute("insert into med values( '"+med_name+"','"+med_unit+"','"+price_per_unit+"','"+description+"','"+batch_no+"','"+expiry_date+"' )");
			if(x==false)
			{
				out.println("<script>alert(\"stocks updated successfully\")</script>");
			
				
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
	}

	

}
