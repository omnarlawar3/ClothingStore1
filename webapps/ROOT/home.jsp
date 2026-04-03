
<%@ page import="java.sql.*" %>
<%@ page import="com.store.DBConnection" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<title>Shopping</title>
<script>
function showMessage(){alert("Product Added to Cart");
}
</script>
<link rel="stylesheet" href="style.css">
<style>
.logo{
    position:absolute;
    top:1px;
    left:2px;
    text-align:center;
    margin-bottom:20px;
}
.logo img{width:65px;}
.products{
display:flex;
justify-content:center;
gap:40px;
margin-top:40px;
}

.product-card{
width:250px;
background:white;
padding:20px;
border-radius:12px;
text-align:center;
box-shadow:0 4px 10px rgba(0,0,0,0.1);
transition:0.3s;
}

.product-card:hover{
transform:scale(1.05);
box-shadow:0 6px 20px rgba(0,0,0,0.2);
}

.product-card img{
width:180px;
}

.price{
font-size:18px;
font-weight:bold;
color:#333;
}

.btn{
background:#ff9800;
color:white;
padding:10px 15px;
border:none;
border-radius:6px;
cursor:pointer;
}

.btn:hover{
background:#e68900;
}
</style>


</head>
<body>
<div class="logo">
<img src="images/weblogo.png" alt="Clothing Store Logo">
</div>
<div style="background:#222; padding:15px; display:flex; justify-content:space-between; align-items:center; color:white;">

<div style="font-size:20px; font-weight:bold;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Clothing Store
</div>

<form action="search.jsp" method="get">
<input type="text" name="keyword" placeholder="Search products..." 
style="padding:6px;border-radius:5px;border:none;">
<button style="padding:6px 10px;background:#ff9800;color:white;border:none;border-radius:5px;">
Search
</button>
</form>

<div style="display:flex; gap:25px;">
<a href="home.jsp" style="color:white;text-decoration:none;">Home</a>
<a href="cart.jsp" style="color:white;text-decoration:none;">Cart</a>
<a href="vieworder.jsp" style="color:white;text-decoration:none;">Orders</a>
</div>

</div>
<div id="popup" style="
display:none;
position:fixed;
top:100px;
right:20px;
background:#28a745;
color:blue;
padding:12px 20px;
border-radius:6px;
font-weight:bold;
box-shadow:0 4px 10px rgba(0,0,0,0.3);">
✅ Product added to cart
</div>

<h2 class="title">🛒 Clothing Store..</h2>
<div class="products">
<p id="msg" style="color:green; text-align:center;"></p>

<%
Connection con = DBConnection.getConnection();
PreparedStatement ps = con.prepareStatement("select * from products");
ResultSet rs = ps.executeQuery();

while(rs.next()){
%>

<div class="product-card">
<a href="Shirt.jsp?id=<%=rs.getInt("id") %>">
<img src="<%= rs.getString("image") %>"></a>

<h3><%= rs.getString("name") %></h3>

<p class="price">₹<%= rs.getString("price") %></p>

<form action="CartServlet" method="post">
<input type="hidden" name="product" value="<%= rs.getString("name") %>">
<button type="submit" class="btn" onclick="alert('Product Added to Cart')">Add to Cart</button>

</form>
</div>

<%
}
%>

<!-- T-SHIRT -->
<div class="product-card">
<a href="T-shirt.jsp">
<img src="images/t-shirt.jpg">
</a>
<h3>T-Shirt</h3>
<p class="price">₹500</p>

<form action="CartServlet" method="post">
<input type="hidden" name="product" value="Tshirt">
<button type="submit" class="btn" onclick="alert('Product Added to Cart')">Add to Cart</button>

</form>
</div>

<!-- JEANS -->
<div class="product-card">
<a href="Jeans.jsp">
<img src="images/jeans.jpg">
</a>
<h3>Jeans</h3>
<p class="price">₹1500</p>

<form action="CartServlet" method="post">
<input type="hidden" name="product" value="Jeans">
<button type="submit" class="btn" onclick="alert('Product Added to Cart')">Add to Cart</button>

</form>
</div>

</div>
<div style="text-align:center; margin-top:40px;">
<a href="cart.jsp">
<button style="
padding:12px 25px;
background:#28a745;
color:white;
border:none;
border-radius:6px;
font-size:16px;
cursor:pointer;
">
Go to Cart 🛒
</button>
</a>

</div>
<h2 style="text-align:center; margin-top:30px; color:darkblue;">
Welcome to Clothing Store
</h2>
<footer class="footer">

    <div class="footer-content">

        <div class="footer-about">
            <h3>About</h3>
            <p>Clothing Store is an online shopping website where you can buy
            the latest fashion clothes at affordable prices.</p>
        </div>

        <div class="footer-contact">
            <h3>Contact</h3>
            <p>Phone: 
+91 9146988671
+91 9763524818
</p>
            <p>Email: clothingstore@gmail.com</p>
        </div>

        

    </div>

    <p class="footer-bottom">© 2026 Clothing Store. All Rights Reserved.</p>

</footer>
<script>
function showpopup(){

document.getElementById("popup").style.display="block";

setTimeout(function(){
	document.getElementById("popup").style.display="none";
},1500);

}
</script>
</body>
</html>