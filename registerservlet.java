package fullstack.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



@WebServlet("/register")
public class registerservlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname =request.getParameter("name");
		String uemail=request.getParameter("email");
		String upwd=request.getParameter("pass");
		String umobile=request.getParameter("contact");
		
		RequestDispatcher dispatcher =null;
		Connection con =null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 con =DriverManager.getConnection("jdbc:mysql://localhost:3306/you?useSSL=false","root","Bhuvan11");
			PreparedStatement pst =con.prepareStatement("insert into users(uname,uemail,upwd,umobile) values(?,?,?,?)");
			pst.setString(1,uname);
			pst.setString(2, uemail);
			pst.setString(3,upwd);
			pst.setString(4, umobile);
			
			int rowCount =pst.executeUpdate();
			dispatcher =request.getRequestDispatcher("registration.jsp");
			if (rowCount > 0){
				request.setAttribute("status", "success");
				
			}
			else {
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
		} catch(Exception e) {
			e.printStackTrace();
			
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

}
