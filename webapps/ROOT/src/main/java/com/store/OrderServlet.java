package com.store;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.sql.*;
import java.util.*;

@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        // Get cart from session
        Map<String, Integer> cart = (Map<String, Integer>) session.getAttribute("cart");

        if (cart == null || cart.isEmpty()) {
            response.getWriter().println("Cart is empty!");
            return;
        }

        Connection con = null;
        PreparedStatement ps = null;

        try {
            // Load Oracle Driver
            Class.forName("oracle.jdbc.driver.OracleDriver");

            // Connect to database
            con = DriverManager.getConnection(
                    "jdbc:oracle:thin:@localhost:1521/FREEPDB1",
                    "system",        // 👉 your username
                    "1234"         // 👉 your password
            );

            // Insert query
            String sql = "INSERT INTO ORDERS (PRODUCT_NAME, QUANTITY, PRICE, ORDER_DATE) VALUES (?, ?, ?, SYSDATE)";
            ps = con.prepareStatement(sql);

            // Loop cart items
            for (Map.Entry<String, Integer> entry : cart.entrySet()) {

                String product = entry.getKey();
                int quantity = entry.getValue();

                int price = 0;

                // Example pricing (you can change)
                if (product.equalsIgnoreCase("T-Shirt")) {
                    price = 500;
                } else if (product.equalsIgnoreCase("Jeans")) {
                    price = 1000;
                } else {
                    price = 300;
                }

                ps.setString(1, product);
                ps.setInt(2, quantity);
                ps.setInt(3, price * quantity);

                ps.executeUpdate();
            }

            // Clear cart after order
            session.removeAttribute("cart");

            // Redirect to success page
            response.sendRedirect("success.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        } finally {
            try {
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}	