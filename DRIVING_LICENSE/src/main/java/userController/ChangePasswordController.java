package userController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userDAO.UserDao;
import userDTO.Person;
@WebServlet("/changepassword")
public class ChangePasswordController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		UserDao dao = new UserDao();
		String oldpass = req.getParameter("oldpass");
		String pass1 = req.getParameter("pass1");
		String pass2 = req.getParameter("pass2");
		Person person=LogInController.person;
		if( pass1.equals(pass2)) {
			if(person != null) {
			dao.updatePassword(pass1, person);
			req.setAttribute("update_success", "PASSWORD UPDATED SUCCESSFULLY");
			RequestDispatcher dispatcher=req.getRequestDispatcher("changepass.jsp");
			dispatcher.forward(req, resp);}else {
				req.setAttribute("update_success", "FIRST YOU SHOULD LOGIN");
				RequestDispatcher dispatcher=req.getRequestDispatcher("login.jsp");
				dispatcher.forward(req, resp);
			}
			
		}else {
			req.setAttribute("update_unsuccess", "ENTERED PASSWORD AND RE-ENTERED PASSWORD DOSEN'T MATCH");
			RequestDispatcher dispatcher = req.getRequestDispatcher("changepass.jsp");
			dispatcher.include(req, resp);
		}

	}

}
