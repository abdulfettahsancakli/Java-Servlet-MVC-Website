<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Join Us</title>
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
            <%@include file="components/commoncss.jsp" %>
        
    </head>
    <body>
    
        <div class="container">
          <%@include file="components/navbar.jsp" %>
        
            <div class="box">
                <img class="avatar" style="margin-top: 10px" src="img/collaboration.png">
                <h1 style="margin-top: 30px"> Login Account</h1>
<form action="LoginServlet" method="post">
                    <p>
Username</p>
<input type="text" placeholder="Username" name="username" required>
                    <p>
Password</p>
<input type="password" placeholder="Password" name="password" required>
                    <input type="submit" value="Login">
                    <a href="register.jsp">Create New Account</a>
                </form>
</div>
</div>

</body>
</html>