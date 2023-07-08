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
import userDTO.DrivingLicence;
import userDTO.Person;

@WebServlet("/updatname")
public class UpdateName extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		HttpSession session = req.getSession(false);

		UserDao dao = new UserDao();

		Person person = LogInController.person;
		if (person != null) {
			String name = req.getParameter("name").toUpperCase();

			dao.updateName(name, person);

//		req.setAttribute("update_user", "UPDATED SUCCESSFULLY");
			RequestDispatcher dispatcher = req.getRequestDispatcher("home.jsp");
			dispatcher.forward(req, resp);
		} else {
			req.setAttribute("update_success", "FIRST YOU SHOULD LOGIN");
			RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");
			dispatcher.forward(req, resp);
		}

	}

}
