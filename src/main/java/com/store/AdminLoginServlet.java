package com.store;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet("/AdminLoginServlet")

public class AdminLoginServlet extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {

String username = request.getParameter("username");
String password = request.getParameter("password");

if(username.equals("admin") && password.equals("admin123")){

response.sendRedirect("adminpanel.jsp");

}else{

response.getWriter().println("Invalid Admin Login");

}

}
}