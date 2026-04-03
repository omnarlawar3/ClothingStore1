package com.store;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String product = request.getParameter("product");
        String action = request.getParameter("action");

        HttpSession session = request.getSession();
        Map<String, Integer> cart = (Map<String, Integer>) session.getAttribute("cart");

        if (cart != null && cart.containsKey(product)) {

            int qty = cart.get(product);

            if (action.equals("inc")) {
                cart.put(product, qty + 1);
            } else if (action.equals("dec")) {
                if (qty > 1) {
                    cart.put(product, qty - 1);
                } else {
                    cart.remove(product); // remove if 0
                }
            }
        }

        session.setAttribute("cart", cart);

        response.sendRedirect("cart.jsp");
    }
}