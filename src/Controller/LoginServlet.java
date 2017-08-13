package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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

        //拿取页面传递的数据
        String method = request.getParameter("method");
        String username = request.getParameter("username") ;
        String password = request.getParameter("password") ;
        System.out.println(username+" "+password);
        //查找用户
        //创建service层对象
        
        if(method.equals("login") && username.equals(password)){
        	if(username.equals("product")){
        		response.getWriter().write("Login success! Wait for one sencond.") ;
                response.setHeader("Refresh", "1;url="+ request.getContextPath() + "/ProductControl.jsp") ;
        	}else {
        		response.getWriter().write("Login success! Wait for one sencond.") ;
                response.setHeader("Refresh", "1;url="+ request.getContextPath() + "/"+username+".jsp") ;
        	}
            //登陆成功
            
        }else{
            //登陆失败
            request.setAttribute("errorinfo", "Error password or username") ;
            request.getRequestDispatcher("/Login.jsp").forward(request, response) ;
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
