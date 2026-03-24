package com.store;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;

public class RemoveServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String product = request.getParameter("product");

        HttpSession session = request.getSession();
        Map<String, Integer> cart = (Map<String, Integer>) session.getAttribute("cart");

        if (cart != null) {
            cart.remove(product);
        }

        response.sendRedirect("cart.jsp");
    }
}