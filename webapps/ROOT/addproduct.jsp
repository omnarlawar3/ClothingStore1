<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<title>Add Product</title>

<style>

body{
font-family:Arial;
background:#f5f5f5;
}

.container{
width:400px;
margin:60px auto;
background:white;
padding:30px;
border-radius:10px;
box-shadow:0px 4px 10px rgba(0,0,0,0.2);
}

h2{
text-align:center;
}

input,textarea{
width:100%;
padding:10px;
margin:8px 0;
border:1px solid #ccc;
border-radius:6px;
}

button{
width:100%;
padding:12px;
background:#28a745;
color:white;
border:none;
border-radius:6px;
cursor:pointer;
font-size:16px;
}

button:hover{
background:#218838;
}

</style>
</head>

<body>

<div class="container">

<h2>Add Product</h2>

<form action="AddProductServlet" method="post">

<label>Product Name</label>
<input type="text" name="name" required>

<label>Price</label>
<input type="text" name="price" required>

<label>Category</label>
<input type="text" name="category" required>

<label>Image Path</label>
<input type="text" name="image" placeholder="images/tshirt.jpg">

<label>Description</label>
<textarea name="description"></textarea>

<button type="submit">Add Product</button>

</form>

</div>

</body>
</html>