package com.store;
import java.io.PrintWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddProductServlet")
public class AddProductServlet extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	response.setContentType("text/html");
	PrintWriter out = response.getWriter();

String name = request.getParameter("name");
String price = request.getParameter("price");
String category = request.getParameter("category");
String image = request.getParameter("image");
String description = request.getParameter("description");

try {
	
Connection con = DBConnection.getConnection();

PreparedStatement ps = con.prepareStatement(
"insert into products(id,name,price,category,image,description) values(product_seq.nextval,?,?,?,?,?)");
ps.setString(1,name);
ps.setString(2,price);
ps.setString(3,category);
ps.setString(4,image);
ps.setString(5,description);

int i = ps.executeUpdate();

if(i > 0){
	response.sendRedirect("adminpanel.jsp");
}else{
    out.println("<h2>Product Not Added</h2>");
}


} catch(Exception e){
e.printStackTrace();
}

}
}