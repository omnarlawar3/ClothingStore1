<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>

    <style>
    .logo{
    position:absolute;
    top:20px;
    left:20px;
    text-align:center;
    margin-bottom:20px;
}
.logo img{width:100px;}
        body {
            margin: 0;
            font-family: Arial;
            background: linear-gradient(to right, #4facfe, #00f2fe);
        }

        .login-box {
            width: 300px;
            margin: 120px auto;
            padding: 30px;
            background: white;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0 5px 20px rgba(0,0,0,0.3);
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
        }

        input {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 8px;
            border: 1px solid #ccc;
        }

        button {
            width: 100%;
            padding: 10px;
            background: #4CAF50;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
        }
        .forgot{
        display:block;
    text-align:center;
    margin-top:15px;
    color:black;
    font-size:16ps;
    
}
.forgot:hover{text-decoration:underline;}
    </style>
</head>

<body>
<div class="logo">
<img src="images/weblogo.png" alt="Clothing Store Logo">
</div>

<div class="login-box">
    <h2>Login</h2>

    <form action="LoginServlet" method="post">
        <input type="text" name="username" placeholder="Enter Username"><br>
        <input type="password" name="password" placeholder="Enter Password"><br>
        <button type="submit">Login</button>
    </form>
    <a class="forgot" href="#">Forgot Password?</a>
</div>

</body>
</html>
