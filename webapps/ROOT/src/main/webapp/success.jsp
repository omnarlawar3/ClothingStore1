<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta charset="UTF-8">
    <title>Success</title>
    <link rel="stylesheet" href="style.css">
    <style>
.success-box{
    background:white;
    padding:60px;
    border-radius:12px;
    width:350px;
    margin:auto;
    margin-top:120px;
    text-align:center;
    box-shadow:0 5px 15px rgba(0,0,0,0.2);
}

.buttons{
    margin-top:20px;
}

.btn1, .btn2{
    display:inline-block;
    padding:10px 20px;
    margin:8px;
    text-decoration:none;
    border-radius:6px;
    font-size:15px;
}

.btn1{
    background:#28a745;
    color:white;
}

.btn2{
    background:#007bff;
    color:white;
}
</style>
</head>

<body>
<div style="background:black; padding:10px; color:white;">
    <span>Shopping Store</span>
    <a href="home.jsp" style="color:white; text-decoration:none;">Home</a>
</div>

<div class="success-box">
    <h2>✅ Order Placed Successfully!</h2>

    <div class="buttons">
        <a href="home.jsp" class="btn1">Continue Shopping</a>
        <a href="vieworder.jsp" class="btn2">View Orders</a>
    </div>
</div>

</body>
</html>