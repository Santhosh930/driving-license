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

@WebServlet("/forgot")
public class ForgotPasswordController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserDao dao = new UserDao();
		String email = req.getParameter("email");
		String pass1 = req.getParameter("pass1");
		String pass2 = req.getParameter("pass2");
		Person person = dao.getUserByEmail(email);
		if (person != null) {
			if (pass1.equals(pass2)) {
				dao.updatePassword(pass1,person);
				req.setAttribute("update_success", "PASSWORD UPDATED SUCCESSFULLY");
				RequestDispatcher dispatcher=req.getRequestDispatcher("login.jsp");
				dispatcher.forward(req, resp);

			} else {
				req.setAttribute("update_unsuccess", "ENTERED PASSWORD AND RE-ENTERED PASSWORD DOSEN'T MATCH");
				RequestDispatcher dispatcher = req.getRequestDispatcher("forgot.jsp");
				dispatcher.include(req, resp);

			}

		} else {
			req.setAttribute("invalid_email", "EMAIL NOT FOUND");
			RequestDispatcher dispatcher = req.getRequestDispatcher("forgot.jsp");
			dispatcher.include(req, resp);
		}

	}

}

