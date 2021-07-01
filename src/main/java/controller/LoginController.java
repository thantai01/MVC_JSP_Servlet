package controller;

import model.Account;
import source.LoginDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.Date;

@WebServlet (name = "Servlet", urlPatterns = "/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("emailName");
        String password = request.getParameter("password");
        String[] emailContent = email.split("@");
        try {
            Account account = LoginDAO.checkLoginMethod(emailContent[0],password);
            if (account == null) {
                response.sendRedirect("login.jsp");
            } else {
                request.setAttribute("loginTime", LocalDateTime.now());
                RequestDispatcher rd = request.getRequestDispatcher("main");
                rd.forward(request,response);
            }

        } catch (SQLException | ClassNotFoundException throwable) {
            throwable.printStackTrace();
        }
    }
    protected void doRegister(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
