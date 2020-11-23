package br.ufscar.dc.dsw.controller;

import br.ufscar.dc.dsw.bean.BuscaPorEstadoBean;
import br.ufscar.dc.dsw.domain.Cidade;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/buscaPorEstado"})
public class EstadoController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        String sigla = request.getParameter("estado");
        
        List<Cidade> cidades = new BuscaPorEstadoBean().getCidades(sigla);
        
        Gson gsonBuilder = new GsonBuilder().create();
        
        String json = gsonBuilder.toJson(cidades);

        System.out.println(json);
        response.getWriter().println(json);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
