package userController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userDTO.Person;

@WebServlet("/logout")
public class LogoutController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		HttpSession session = req.getSession(false);
		Person person1=LogInController.person=null;
		if (person1 == null) {
//			session.invalidate();
			req.setAttribute("logout_success", "LOGGED OUT SUCCESS");
			RequestDispatcher dispatcher = req.getRequestDispatcher("userinterface.jsp");
			dispatcher.forward(req, resp);
			
		}

	}

}

