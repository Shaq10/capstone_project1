package webapp;
import appLayer.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "login")
public class login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        User userObject =  new User();

        request.setAttribute("username", request.getParameter("host_name"));
        String var1 = request.getParameter("host_name");
        String var2 = request.getParameter("host_password");


        if(userObject.isValidUserCredentials(request.getParameter("host_name"), request.getParameter("host_password"))){
            request.getRequestDispatcher("/welcome.jsp").forward(request,response);
        }else{
            request.setAttribute("errorMessage", "Invalid host username and password. Try again");
            request.getRequestDispatcher("/host.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        PrintWriter out = response.getWriter();
        out.println("host-username" + request.getParameter("host_name"));

    }
}
