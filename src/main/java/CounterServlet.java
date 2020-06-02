import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CounterServlet", urlPatterns = "/count")
public class CounterServlet extends HttpServlet {
    private int pageCount = 0;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            if (request.getParameter("reset").equals("1")) {
                pageCount = 0;
            }
        } catch (NullPointerException ex) {
            ex.printStackTrace();
        }

        pageCount++;
        String title = "Total # of page views: ";
        out.println("<h1>" + title + " " + pageCount + "</h1>");
    }
}
