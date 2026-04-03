<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<title>Admin Dashboard</title>

<style>

body{
font-family: Arial;
margin:0;
background:#f4f6f9;
}

/* Top Navbar */

.navbar{
background:#222;
color:white;
padding:15px 30px;
display:flex;
justify-content:space-between;
align-items:center;
}

.navbar h2{
margin:0;
}

/* Sidebar */

.sidebar{
width:200px;
background:#333;
height:100vh;
position:fixed;
padding-top:30px;
}

.sidebar a{
display:block;
color:white;
padding:15px;
text-decoration:none;
}

.sidebar a:hover{
background:#444;
}

/* Main Content */

.main{
margin-left:220px;
padding:40px;
}

/* Cards */

.cards{
display:flex;
gap:30px;
flex-wrap:wrap;
}

.card{
background:white;
padding:30px;
width:220px;
border-radius:10px;
box-shadow:0 4px 10px rgba(0,0,0,0.1);
text-align:center;
transition:0.3s;
}

.card:hover{
transform:scale(1.05);
}

.card h3{
margin-bottom:10px;
}

.btn{
background:#28a745;
color:white;
padding:10px 15px;
border:none;
border-radius:5px;
text-decoration:none;
}

.btn:hover{
background:#218838;
}

</style>

</head>

<body>

<!-- Navbar -->

<div class="navbar">
<h2>Admin Dashboard</h2>
<a href="adminlogin.jsp" style="color:white;">Logout</a>
</div>

<!-- Sidebar -->

<div class="sidebar">

<a href="adminpanel.jsp">Dashboard</a>

<a href="addproduct.jsp">Add Product</a>

<a href="viewproducts.jsp">View Products</a>

<a href="vieworder.jsp">View Orders</a>

</div>

<!-- Main Content -->

<div class="main">

<h2>Welcome Admin</h2>

<div class="cards">

<div class="card">
<h3>Add Product</h3>
<p>Add new products to store</p>
<a href="addproduct.jsp" class="btn">Add</a>
</div>

<div class="card">
<h3>View Products</h3>
<p>Manage all products</p>
<a href="viewproducts.jsp" class="btn">View</a>
</div>

<div class="card">
<h3>Orders</h3>
<p>Check customer orders</p>
<a href="vieworder.jsp" class="btn">Orders</a>
</div>

</div>

</div>

</body>
</html>