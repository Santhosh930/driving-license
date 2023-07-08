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

@WebServlet("/updatephonenumber")
public class UpdatePhoneNumber extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		UserDao dao = new UserDao();

		Person person = LogInController.person;
		if (person != null) {
			String phone_no1 = req.getParameter("pnone_number");
			try {
				long phone_no = Long.parseLong(phone_no1);

				dao.updatePhoneNumber(phone_no, person);
				RequestDispatcher dispatcher = req.getRequestDispatcher("home.jsp");
				dispatcher.forward(req, resp);
			} catch (NumberFormatException e) {
				req.setAttribute("invalid_mobail","PLEASE CHECK THE MOBAIL NUMBER");
				RequestDispatcher dispatcher = req.getRequestDispatcher("updatephonenumber.jsp");
				dispatcher.include(req, resp);
			}
			
		} else {
			req.setAttribute("update_success", "FIRST YOU SHOULD LOGIN");
			RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");
			dispatcher.forward(req, resp);

		}

	}
}
