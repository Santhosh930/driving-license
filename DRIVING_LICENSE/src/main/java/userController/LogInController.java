package userController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import userDAO.UserDao;
import userDTO.Person;

@WebServlet("/login")
public class LogInController extends HttpServlet {

	public static Person person;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		UserDao dao = new UserDao();// Instantiate

		String email = req.getParameter("email");
		String password = req.getParameter("password");

		person = dao.getUserByEmail(email);

		if (person != null) {
			if (person.getPassword().equals(password)) {
//				HttpSession session = req.getSession();
//				session.setAttribute("email", email);
				RequestDispatcher dispatcher = req.getRequestDispatcher("home.jsp");
				dispatcher.forward(req, resp);

			} else {
				req.setAttribute("invalid_pass", "INVALID PASSWORD");
				RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");
				dispatcher.include(req, resp);
			}

		} else {
			req.setAttribute("invalid_email", "EMAIL NOT FOUND");
			RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");
			dispatcher.include(req, resp);
		}
	}

}
