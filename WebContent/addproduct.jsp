<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Account</title>
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
            <%@include file="components/commoncss.jsp" %>
        
       
    </head>
    <body>
        <div class="container">
                  <%@include file="components/navbar.jsp" %>
        
            <div class="regbox box  ">
                <img class="avatar" style="margin-top: 10px" src="img/collaboration.png">
                <h1>Register Account</h1>
	<form action="ProductServlet" method="post">
                   <p>Product ID</p>
		<input type="text"  name="id" required>
		
                   <p>Name</p>
		<input type="text" name="name" required>
		
                   <p>Category</p>
		<input type="password"  name="category" required>
		
		 <p>Price</p>
		<input type="password"  name="price" required>
		
		
		 <p>Quantity</p>
		<input type="password"  name="quantity" required>
		
		
		
                   <input type="submit" value="Register">
                </form>
</div>
</div>

</body>
</html>