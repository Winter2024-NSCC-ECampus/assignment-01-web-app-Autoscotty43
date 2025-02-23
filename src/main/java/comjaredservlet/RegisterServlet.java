package comjaredservlet;

import comjareddao.UserDAO;
import comjaredmodel.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDAO userDAO;

    @Override
    public void init() {
        userDAO = new UserDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form data
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Create the new user
        User newUser = new User(name, email, password);

        // Attempt to register the user in the database
        boolean success = userDAO.registerUser(newUser);

        if (success) {
            // Redirect to login page after successful registration
            response.sendRedirect("login.jsp?message=Registration%20successful%20please%20login");
        } else {
            // Redirect back to register page with an error message
            response.sendRedirect("register.jsp?error=User%20Registration%20Failed");
        }
    }
}