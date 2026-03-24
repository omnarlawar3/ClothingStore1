<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*" %>

<html>
<head>
    <title>Cart</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div style="background:#222; padding:12px; display:flex; align-items:center; justify-content:space-between;">

    <div style="display:flex; align-items:center;">
        <img src="images/weblogo.png" width="40" style="margin-right:10px;">
        <span style="color:white; font-size:22px; font-weight:bold;">
            Clothing Store
        </span>
    </div>

    <div style="display:flex; gap:25px;">
        <a href="home.jsp" style="color:white; text-decoration:none;">Home</a>
        <a href="cart.jsp" style="color:white; text-decoration:none;">Cart</a>
        <a href="vieworder.jsp" style="color:white; text-decoration:none;">Orders</a>
    </div>

</div>

<h2>🛒 Your Cart</h2>

<div class="success-box">

<%
Map<String, Integer> cart = (Map<String, Integer>) session.getAttribute("cart");

if(cart != null && !cart.isEmpty()) {
    for(Map.Entry<String, Integer> entry : cart.entrySet()) {
%>
        <p><b><%= entry.getKey() %></b> - Qty: <%= entry.getValue() %></p>
<%
    }
%>

    <form action="order.jsp">
        <button type="submit">Checkout</button>
    </form>

<%
} else {
%>
    <p>Cart is empty</p>
<%
}
%>
<br>
<a href="home.jsp">
    <button>Continue Shopping</button>
</a>
</div>

</body>
</html>