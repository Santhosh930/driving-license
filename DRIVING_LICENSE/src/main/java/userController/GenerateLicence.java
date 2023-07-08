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

@WebServlet("/getdetail")
public class GenerateLicence extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		UserDao dao = new UserDao();

		Person person = LogInController.person;
		if (person != null) {
			String name = person.getName();
			int age1 = person.getAge();
//		it is used to convert int to string 
			String age = String.valueOf(age1);
			long ph_no1 = person.getPhone_no();
			String phone_no = String.valueOf(ph_no1);
			String licence_no = person.getDriving().getLicence_number();
			String vehicle = person.getDriving().getVehicle_type();
			String p_address = person.getDriving().getAddress();

			req.setAttribute("p_name", name);
			req.setAttribute("p_age", age);
			req.setAttribute("p_phoneno", phone_no);
			req.setAttribute("p_licenceno", licence_no);
			req.setAttribute("p_vehicle", vehicle);
			req.setAttribute("p_address", p_address);

			RequestDispatcher dispatcher = req.getRequestDispatcher("licence.jsp");
			dispatcher.forward(req, resp);
		} else {
			req.setAttribute("update_success", "FIRST YOU SHOULD LOGIN");
			RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");
			dispatcher.forward(req, resp);

		}

	}
}
