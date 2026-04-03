package com.store;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        PrintWriter out = response.getWriter();

        if(username.equals("admin") && password.equals("1234")) {
        	response.sendRedirect("home.jsp");
        } else {
            out.println("<h1>Invalid Login</h1>");
        }
    }
}