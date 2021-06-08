

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class addToCartAction
 */
@WebServlet("/addToCartAction")
public class addToCartAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 
	
	 int quantity=1;
	 int product_price=0;
	 int product_total=0;
	 int cart_total=0;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public addToCartAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		 String id=request.getParameter("id");
		 try {
			 int z=0;
			 Connection conn = null;
			 Statement st = null;
			 ResultSet rs = null;
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 String dbUrl = "jdbc:mysql://localhost:3306/webdb";
			 conn = DriverManager.getConnection(dbUrl, "root", "Fettah");
			 st = conn.createStatement();
			 rs = st.executeQuery("select *from shoproduct where id='+id+'");
			 while(rs.next()) {
			 	product_price=rs.getInt(4);
			 	product_total=product_price;
			 }
			 ResultSet rs1 =st.executeQuery("select * from  shopcart where productid='+id+'");
			 while(rs1.next()){
			 	cart_total=rs1.getInt(4);
			 	cart_total=cart_total+product_total;
			 	quantity=rs1.getInt(2);
			 	quantity=quantity+1;
			 	z=1;
			 }
			 if(z==1){
				 
			 	st.executeUpdate("update shopcart set total='"+cart_total+"',quantity='"+quantity+"' where productid='+id+'");
			 	response.sendRedirect("cart.jsp");
			 }
			 if(z==0){
			 	PreparedStatement ps=conn.prepareStatement("insert into shopcart(productid,quantity,price,total) values(?,?,?,?)");
			 	
			 	ps.setString(1,id);
			 	ps.setInt(2,quantity);
			 	ps.setInt(3,product_price);
			 	ps.setInt(4,product_total);
			 	ps.executeUpdate();
			 	response.sendRedirect("cart.jsp");
			 }
			 }
			 catch(Exception e){
					System.out.println(e);
					response.sendRedirect("welcome.jsp");
				}

	}


		 
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

		doGet(request, response);
		

		 
}

	
	}
