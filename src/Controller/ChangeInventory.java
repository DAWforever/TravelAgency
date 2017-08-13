package Controller;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ChangeInventory
 */
@WebServlet("/ChangeInventory")
public class ChangeInventory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangeInventory() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        int amount = Integer.valueOf(request.getParameter("amount"));
        String name = request.getParameter("product");
        String method = request.getParameter("method");
        try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useSSL=false", "root","root");
	        Statement stm = conn.createStatement();
	        if(method.equals("product")){
	        String from = request.getParameter("FromStore");
	        String to = request.getParameter("ToStore");
	        String s = "UPDATE travel.inventory SET "+from+"="+from+"-"+amount+", "+to+"="+to+"+"+amount+" WHERE name='"+name+"'";
	        stm.execute(s);
	        stm.close();
	        conn.close();
	        response.sendRedirect("ProductControl.jsp");
	        }
	        else if(method.equals("purchase")){
	        	String store = request.getParameter("store");
	        	String s = "SELECT * FROM travel.inventory WHERE name='"+name+"'";
	        	ResultSet rs = stm.executeQuery(s);
	        	if(rs.next()){
	        		s = "UPDATE travel.inventory SET inventory."+store+" = inventory."+store+"+"+amount+" WHERE inventory.name='"+name+"'";
	        		
	        	}else{
	        		s = "INSERT INTO travel.inventory SET  inventory.name='"+name+"',inventory."+store+"="+amount;
	        	}
	        	System.out.println(s);
	        	stm.execute(s);
	        	rs.close();
		        stm.close();
		        conn.close();
	        	response.sendRedirect("purchase.jsp");
	        }
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
