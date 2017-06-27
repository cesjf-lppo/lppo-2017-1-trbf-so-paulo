package br.cesjf.lppo.servlet;

import br.cesjf.lppo.Etiqueta;
import br.cesjf.lppo.dao.EtiquetaJpaController;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.UserTransaction;

/**
 *
 * @author Paulo
 */
@WebServlet(name = "KambanServlet", urlPatterns = {"/kamban.html"})
public class KambanServlet extends HttpServlet {

     @PersistenceUnit(unitName = "trbflppo-2017-1PU")
    EntityManagerFactory emf;
    
    @Resource(name = "java:comp/UserTransaction")
    UserTransaction ut;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Etiqueta> etiquetas = new ArrayList<>();
        EtiquetaJpaController dao = new EtiquetaJpaController(ut, emf);
        etiquetas = dao.findEtiquetaEntities();

        request.setAttribute("etiquetas", etiquetas);
        request.getRequestDispatcher("WEB-INF/kamban.jsp").forward(request, response);
    }
}
