package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class OrderUpload
 */
@WebServlet("/OrderUpload")
public class OrderUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderUpload() {
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
        try{
        	Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useSSL=false", "root","root");
	        Statement stm = conn.createStatement();
	        String name = request.getParameter("cust_name"),
	        		pack = request.getParameter("package"),
	        		depart = request.getParameter("depart"),
	        		ret = request.getParameter("return"),
	        		income = request.getParameter("income"),
	        		feedback = request.getParameter("feedback"),
	        		state = request.getParameter("state");
	        stm.execute("INSERT INTO travel.order VALUES(null,'"+name+"','"+pack+"','"+feedback+"','"+state+"','"+depart+"','"+ret+"','Area A store','"+income+"')");
	        stm.close();
	        conn.close();
	        response.sendRedirect("operation.jsp");
	        
        }catch(Exception e){
        	System.out.println("Alert!");
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
