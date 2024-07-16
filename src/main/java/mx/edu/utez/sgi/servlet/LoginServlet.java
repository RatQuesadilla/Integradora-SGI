package mx.edu.utez.sgi.servlet;

import mx.edu.utez.sgi.dao.DaoLogin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean flag = (boolean) request.getAttribute("flag");
        request.getRequestDispatcher(flag ? "/view/inicio.jsp" : "/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        /*Acepte acentos*/
        response.setContentType("text/html; charset=UTF-8");

        DaoLogin dao = new DaoLogin();
        /*parameter es para lo que viene en el formulario*/
        String username = (String) request.getParameter("username");
        String password = (String) request.getParameter("password");

        request.setAttribute("flag",dao.findUsernameAndPassword(username, password));
        if ((boolean) request.getAttribute("flag")){
            request.setAttribute("user", request.getParameter("username"));
        }
        doGet(request, response);

    }
}