package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateComment
 */
@WebServlet("/UpdateComment")
public class UpdateComment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateComment() {
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
	        ResultSet rs = stm.executeQuery("SELECT * FROM travel.user WHERE Role='staff'");
	        while(rs.next()){
	        	
	        	String name = rs.getString("Name");
	        	String comment = request.getParameter("judge"+name);
	        	if(comment!=null && !comment.equals(rs.getString("Comment"))){
	        		Statement s2 = conn.createStatement();
	        		s2.execute("UPDATE travel.user SET user.Comment='"+comment+"' WHERE user.Name='"+name+"'");
	        		s2.close();
	        	}
	        }
	        response.sendRedirect("HR.jsp");
	        
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
