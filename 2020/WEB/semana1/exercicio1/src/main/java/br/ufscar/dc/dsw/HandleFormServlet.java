package br.ufscar.dc.dsw;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/HandleForm"})
public class HandleFormServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response
    )
            throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<html>");

        request.getRequestDispatcher("headers.html").include(request, response);

        Map<String, String[]> mapaDeParametros = request.getParameterMap();
        if (!hasFields(mapaDeParametros)) {
            out.println("<body><div class=\"container\"><h1>Dados incompletos ou inválidos</h1></div></body></html>");
            return;
        }

        int minValue = Integer.parseInt(request.getParameter("minValue"));
        int maxValue = Integer.parseInt(request.getParameter("maxValue"));
        int incrementValue = Integer.parseInt(request.getParameter("incrementValue"));

        out.println("<body><div class=\"container\">");
        out.println("<h1>Tabela de conversão</h1>");
        out.println("<table class=\"table table-striped\">\n"
                + "  <thead>\n"
                + "    <tr>\n"
                + "      <th scope=\"col\">Celsius</th>\n"
                + "      <th scope=\"col\">Fahrenheit</th>\n"
                + "    </tr>\n"
                + "  </thead>"
                + "<tbody>");
        for (int currentValue = minValue; currentValue <= maxValue; currentValue += incrementValue) {
            double fahrenheit = 1.8 * currentValue + 32;
            out.println(" <tr>\n"
                    + "      <td>" + currentValue + "</td>\n"
                    + "      <td>" + fahrenheit + "</td>\n"
                    + "    </tr>");
        }
        out.println("</tbody></table></div></body></html>");

    }

    private boolean hasFields(Map<String, String[]> mapaDeParametros) {

        return mapaDeParametros.containsKey("minValue")
                && mapaDeParametros.containsKey("maxValue")
                && mapaDeParametros.containsKey("incrementValue");
    }
}
