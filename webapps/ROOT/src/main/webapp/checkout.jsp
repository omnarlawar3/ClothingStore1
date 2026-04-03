<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*" %>

<html>
<head>
<title>Checkout</title>

<style>
body {
    font-family: Arial;
    background: #f5f5f5;
}

.container {
    background: white;
    padding: 20px;
    margin: 40px;
    border-radius: 10px;
    box-shadow: 0 0 10px #ccc;
}
</style>

</head>

<body>

<div class="container">

<h2>🧾 Order Summary</h2>

<%
    Map<String, Integer> cart = (Map<String, Integer>) session.getAttribute("cart");
    int total = 0;

    if (cart != null && !cart.isEmpty()) {

        for (Map.Entry<String, Integer> entry : cart.entrySet()) {

            String item = entry.getKey();
            int qty = entry.getValue();

            int price = 0;

            if(item.equals("T-Shirt")) price = 500;
            else if(item.equals("Jeans")) price = 1500;

            int subtotal = price * qty;
            total += subtotal;
%>

<p><b><%= item %></b> - ₹<%= price %> × <%= qty %> = ₹<%= subtotal %></p>

<%
        }
%>

<hr>
<h3>Total Amount: ₹<%= total %></h3>

<form action="OrderServlet" method="post">
    <input type="hidden" name="product" value="T-Shirt">
    <input type="hidden" name="quantity" value="1">
    <input type="hidden" name="price" value="500">
    
    <button type="submit">Confirm Order</button>
</form>

<%
    } else {
%>

<p>No items in cart</p>

<%
    }
%>

</div>

</body>
</html>