package com.store;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.util.*;

@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String product = request.getParameter("product");

        HttpSession session = request.getSession();

        Map<String, Integer> cart = (Map<String, Integer>) session.getAttribute("cart");

        if (cart == null) {
            cart = new HashMap<>();
        }

        // Add product
        if (product != null) {
            cart.put(product, cart.getOrDefault(product, 0) + 1);
        }

        session.setAttribute("cart", cart);

        response.sendRedirect("home.jsp");
    }
}