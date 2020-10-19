import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie[] ck = request.getCookies();
        String username = "", password = "";
        for (Cookie c:ck) {
            if (c.getName().equals("username")){
                username = c.getValue();
            }
            if (c.getName().equals("password")){
                password = c.getValue();
            }
        }

        if (request.getParameter("username").equals(username) && request.getParameter("password").equals(password)){
            Cookie ck1 = new Cookie("loggedIn", "true");
            ck1.setMaxAge(60*30);
            response.addCookie(ck1);
            response.sendRedirect("shop.jsp");
        }else {
            PrintWriter out = response.getWriter();
            out.println("Incorrect password or username");
            out.println(username);
            out.println(password);
            out.close();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
