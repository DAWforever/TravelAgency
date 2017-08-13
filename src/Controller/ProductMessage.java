package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProductMessage
 */
@WebServlet("/ProductMessage")
public class ProductMessage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductMessage() {
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
        
        String subject = request.getParameter("subject");
        String method = request.getParameter("method");
        String dest = request.getParameter("to");
        String priority = request.getParameter("priority");
        String content = request.getParameter("content");
        try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useSSL=false", "root","root");
	        Statement stm = conn.createStatement();
	        String s = "INSERT INTO travel.message VALUES (null,'"+subject+"','"+method+"','"+dest+"','"+content+"','"+priority+"')";
	        System.out.println(s);
	        stm.execute(s);
	        stm.close();
	        conn.close();
	        if(method.equals("product"))
	        	response.sendRedirect("ProductControl.jsp");
	        else
	        	response.sendRedirect(method+".jsp");
	        	
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
