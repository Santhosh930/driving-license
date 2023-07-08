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

@WebServlet("/updateaddress")
public class UpdateAddress extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		UserDao dao = new UserDao();
		Person person = LogInController.person;
		if (person != null) {
			String address = req.getParameter("address");
			dao.updateAddress(address, person);

			RequestDispatcher dispatcher = req.getRequestDispatcher("home.jsp");
			dispatcher.forward(req, resp);
		} else {
			req.setAttribute("update_success", "FIRST YOU SHOULD LOGIN");
			RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");
			dispatcher.forward(req, resp);

		}

	}
}
