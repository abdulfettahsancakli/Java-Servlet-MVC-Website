<%@ page language="java" import="java.sql.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Fettah</title>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
                      <%@include file="components/commoncss.jsp" %>
                              <link href="css/home-style.css" rel="stylesheet" type="text/css"/>
                      
                      
  
 

</head>
<body>
<%@include file="components/shopnavbar.jsp" %>
<div style="color: black; text-align: center; font-size: 30px;">All Products <i class='fab fa-elementor'></i></div>
<table>
<thead>
  <tr>
    <th scope="col">ID</th>
    <th scope="col">Name</th>
    <th scope="col">Category</th>
    <th scope="col"><i class="fa fa-inr"></i> Price</th>
     <th scope="col">Add to cart <i class='fas fa-cart-plus'></i></th>
  </tr>
</thead>
</table>
<%
Connection conn = null;
Statement st = null;
ResultSet rs = null;
try {
Class.forName("com.mysql.cj.jdbc.Driver");
String dbUrl = "jdbc:mysql://localhost:3306/webdb";
conn = DriverManager.getConnection(dbUrl, "root", "Fettah");

st = conn.createStatement();
rs = st.executeQuery("SELECT * FROM shoproduct ");



while(rs.next()) {
%>

<table>
     
        
        <tbody>
          <tr>
            <td><%= rs.getString(1)%></td>
            <td><%= rs.getString(2)%></td>
            <td><%= rs.getString(3)%></td>
            <td><i class="fa fa-inr"></i><%= rs.getString(4)%> </i></td>
  			<td><a href="addToCartAction?id=<%= rs.getString(1)%>">Add to cart <i class='fas fa-cart-plus'></i></a></td>          </tr>
        </tbody>
      </table>
      <%
}
} catch (Exception ex) {
ex.printStackTrace();
%>
Hata oluştu !
<%
} finally {
if (rs != null) rs.close();
if (st != null) st.close();
if (conn != null) conn.close();
}
%>
</body></html>