<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Navbar</title>
</head>
<body>
               

<nav class="navbar navbar-expand-lg navbar-light bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" style="color: white" href="index.jsp">Fettah Meryem Shop</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" style="color:white" aria-current="page" href="index.jsp">Home</a>
        </li>
      </ul>
      
     	
    
        <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
                <a class="nav-link" style="color:white" href="#">${name}</a>
                <a class="nav-link" style="color:white" href="welcome.jsp">Logout</a>
            </li>
      		
        </ul>



        
        
        
    </div>
  </div>
</nav>



</body>
</html>