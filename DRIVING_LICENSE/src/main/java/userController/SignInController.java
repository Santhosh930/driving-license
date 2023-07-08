package userController;

import java.io.IOException;

import javax.persistence.PersistenceException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userDAO.UserDao;
import userDTO.DrivingLicence;
import userDTO.Person;

@WebServlet("/signin")
public class SignInController extends HttpServlet {
	static long mobile;
	static String email, password, address, vehicle = "";

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String age1 = req.getParameter("age");
		int age = Integer.parseInt(age1);
		String p_num = req.getParameter("pnone_number");
		try {
			mobile = Long.parseLong(p_num);
			email = req.getParameter("email");
			password = req.getParameter("password");
			address = req.getParameter("address");
			String[] vehicle1 = req.getParameterValues("vehicle");
			vehicle = "";
			try {
				for (String vehicle2 : vehicle1) {
					vehicle = vehicle.concat(vehicle2) + "  ";
				}
				UserDao dao = new UserDao();// Instantiate

				DrivingLicence licence = new DrivingLicence();// Instantiate

				Person user = new Person();// instantiate
				user.setName(name.toUpperCase());
				user.setAge(age);
				user.setPhone_no(mobile);
				user.setEmail(email.toLowerCase());
				user.setPassword(password);

				licence.setAddress(address);
				licence.setVehicle_type(vehicle);
				licence.setLicence_number(dao.licenceNumber(name, age));
				user.setDriving(licence);
				try {
					dao.saveUser(user);
					req.setAttribute("signin_success", "WELCOME  " + name.toUpperCase());
					RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");
					dispatcher.forward(req, resp);
				} catch (PersistenceException e) {
					req.setAttribute("duplicate_email", "EMAIL ID ALREADY EXIST");
					RequestDispatcher dispatcher = req.getRequestDispatcher("signin.jsp");
					dispatcher.include(req, resp);
				}

			} catch (NullPointerException e) {
				req.setAttribute("select_option", "SELECT YOUR VEHICLE TYPE");
				RequestDispatcher dispatcher = req.getRequestDispatcher("signin.jsp");
				dispatcher.include(req, resp);
			}

		} catch (NumberFormatException e) {
			req.setAttribute("duplicate_email", "PLEASE CHECK THE MOBAIL NUMBER");
			RequestDispatcher dispatcher = req.getRequestDispatcher("signin.jsp");
			dispatcher.include(req, resp);
		}

	}

}
