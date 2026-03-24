<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<title>Admin Login</title>

<style>

body{
font-family:Arial;
background:linear-gradient(135deg,#667eea,#764ba2);
height:100vh;
display:flex;
justify-content:center;
align-items:center;
margin:0;
}

.login-box{
background:white;
padding:40px;
border-radius:12px;
width:350px;
box-shadow:0 10px 25px rgba(0,0,0,0.2);
text-align:center;
}

.login-box h2{
margin-bottom:25px;
}

input{
width:100%;
padding:12px;
margin:10px 0;
border-radius:6px;
border:1px solid #ccc;
}

button{
width:100%;
padding:12px;
background:#667eea;
color:white;
border:none;
border-radius:6px;
font-size:16px;
cursor:pointer;
}

button:hover{
background:#5a67d8;
}

</style>

</head>

<body>

<div class="login-box">

<h2>Admin Login</h2>

<form action="AdminLoginServlet" method="post">

<input type="text" name="username" placeholder="Username">

<input type="password" name="password" placeholder="Password">

<button type="submit">Login</button>

</form>

</div>

</body>
</html>