<%@ page import="java.sql.*" %>
<%@ page import="com.store.DBConnection" %>

<html>
<head>
<title>View Orders</title>
<link rel="stylesheet" href="style.css">

<style>
body {
    font-family: Arial;
    background-color: #f2f2f2;
}

.container {
    width: 80%;
    margin: auto;
    background: white;
    padding: 20px;
    border-radius: 10px;
}

h2 {
    text-align: center;
}

table {
    width: 100%;
    border-collapse: collapse;
}

th {
    background-color: #28a745;
    color: white;
    padding: 10px;
}

td {
    padding: 10px;
    text-align: center;
}

tr:nth-child(even) {
    background-color: #f9f9f9;
}

a {
    display: block;
    text-align: center;
    margin-top: 20px;
    text-decoration: none;
    font-weight: bold;
}
</style>

</head>

<body>
<div style="background:#222; padding:15px; display:flex; justify-content:space-between; align-items:center; color:white;">

    <div style="font-size:20px; font-weight:bold;">
        Clothing Store
    </div>

    <div style="display:flex; gap:25px;">
        <a href="home.jsp" style="color:white; text-decoration:none;">Home</a>
        <a href="cart.jsp" style="color:white; text-decoration:none;">Cart</a>
        <a href="vieworder.jsp" style="color:white; text-decoration:none;">Orders</a>
    </div>

</div>

<div class="container">
<%@ page import="java.sql.*" %>

<h2>📦 Order History</h2>

<table border="1" cellpadding="10">
<tr>
    <th>ID</th>
    <th>Product</th>
    <th>Quantity</th>
    <th>Price</th>
</tr>

<%
try {
    Connection con = DBConnection.getConnection();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM orders");

    while(rs.next()) {
%>

<tr>
    <td><%= rs.getInt("id") %></td>
    <td><%= rs.getString("product_name") %></td>
    <td><%= rs.getInt("quantity") %></td>
    <td><%= rs.getInt("price") %></td>
</tr>

<%
    }
} catch(Exception e) {
    out.println(e);
}
%>

</table>
<a href="home.jsp">Back to Home</a>

</div>

</body>
</html>