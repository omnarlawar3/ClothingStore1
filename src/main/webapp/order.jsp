<html>
<head>
    <title>Place Order</title>
    <link rel="stylesheet" href="style.css">
    <style>.checkout-container{
width:450px;
margin:60px auto;
background:white;
padding:30px;
border-radius:12px;
box-shadow:0 4px 20px rgba(0,0,0,0.2);
font-family:Arial;
}

.checkout-container h2{
text-align:center;
margin-bottom:20px;
}

.form-group{
margin-bottom:15px;
}

.form-group label{
font-weight:bold;
display:block;
margin-bottom:5px;
}

.form-group input,
.form-group textarea,
.form-group select{
width:100%;
padding:10px;
border-radius:6px;
border:1px solid #ccc;
}

.order-btn{
width:100%;
padding:12px;
background:#28a745;
color:white;
border:none;
border-radius:6px;
font-size:16px;
cursor:pointer;
}

.order-btn:hover{
background:#218838;
}</style>
</head>

<body>

<div class="checkout-container">

<h2>Place Your Order</h2>

<form action="success.jsp" method="post">

<div class="form-group">
<label>Full Name</label>
<input type="text" name="name" required>
</div>

<div class="form-group">
<label>Phone Number</label>
<input type="text" name="phone" required>
</div>

<div class="form-group">
<label>Address</label>
<textarea name="address" required></textarea>
</div>

<div class="form-group">
<label>Payment Method</label>
<select name="payment">
<option>Cash on Delivery</option>
<option>UPI</option>
<option>Credit Card</option>
</select>
</div>

<button class="order-btn">Confirm Order</button>

</form>

</div>


</body>
</html>