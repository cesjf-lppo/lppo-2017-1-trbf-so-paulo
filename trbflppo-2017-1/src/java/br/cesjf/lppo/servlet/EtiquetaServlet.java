package br.cesjf.lppo.servlet;

import br.cesjf.lppo.Etiqueta;
import br.cesjf.lppo.Tarefa;
import br.cesjf.lppo.Usuario;
import br.cesjf.lppo.dao.EtiquetaJpaController;
import br.cesjf.lppo.dao.TarefaJpaController;
import br.cesjf.lppo.dao.UsuarioJpaController;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet(name = "EtiquetaServlet", urlPatterns = {"/criaEtiqueta.html",  "/listaEtiquetas.html", "/excluiEtiqueta.html", "/editaEtiqueta.html", "/listaEtiquetasAutor.html", "/listaEtiquetasAutorTitulo.html"})
public class EtiquetaServlet extends HttpServlet {
    
    @PersistenceUnit(unitName = "trbflppo-2017-1PU")
    EntityManagerFactory emf;
    
    @Resource(name = "java:comp/UserTransaction")
    UserTransaction ut;
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        if(request.getServletPath().contains("/editaEtiqueta.html")){
            editarGet(request,response);
        } else if(request.getServletPath().contains("/excluiEtiqueta.html")){
            excluirGet(request, response);
            response.sendRedirect("listaEtiquetas.html");
        } else if(request.getServletPath().contains("/listaEtiquetas.html")){
            listarGet(request, response);
        }else if(request.getServletPath().contains("/criaEtiqueta.html")){
            criarGet(request, response);
        }else if(request.getServletPath().contains("/listaEtiquetasAutor.html")){
            listarEtiquetaAutorGet(request, response);
        }else if(request.getServletPath().contains("/listaEtiquetasAutorTitulo.html")){
            listarEtiquetaAutorTituloGet(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        if(request.getServletPath().contains("/editaEtiqueta.html")){
            editarPost(request, response);
        }
        
        if(request.getServletPath().contains("/criaEtiqueta.html")){
            try {
                criarPost(request, response);
            } catch (Exception ex) {
                Logger.getLogger(EtiquetaServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    private void editarGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try{
            Long id = Long.parseLong(request.getParameter("id"));
            EtiquetaJpaController dao = new EtiquetaJpaController(ut, emf);
            Etiqueta etiqueta = dao.findEtiqueta(id);
            List<Etiqueta> etiquetas = dao.findEtiquetaEntities();
            
            request.setAttribute("etiqueta", etiqueta);
            request.setAttribute("etiquetas", etiquetas);
            
            List<Tarefa> tarefas = new ArrayList<>();
            TarefaJpaController daoT = new TarefaJpaController(ut, emf);
            tarefas = daoT.findTarefaEntities();

            request.setAttribute("tarefas", tarefas);

            request.getRequestDispatcher("WEB-INF/edita-etiqueta.jsp").forward(request, response);
        }catch(Exception ex){
            response.sendRedirect("listaEtiquetas.html");
        }
    }
    private void excluirGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        EtiquetaJpaController dao = new EtiquetaJpaController(ut, emf);
        Long id = Long.parseLong(request.getParameter("id"));
        
        try {
            dao.destroy(id);
        } catch (Exception ex) {
            response.sendRedirect("listaEtiquetas.html");
        }
    }

    private void listarGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        List<Etiqueta> etiquetas = new ArrayList<>();
        EtiquetaJpaController dao = new EtiquetaJpaController(ut, emf);
        etiquetas = dao.findEtiquetaEntities();
        
        request.setAttribute("etiquetas", etiquetas);
        request.getRequestDispatcher("WEB-INF/lista-etiquetas.jsp").forward(request, response);
    }

    private void criarGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Usuario> usuarios = new ArrayList<>();
        UsuarioJpaController dao = new UsuarioJpaController(ut, emf);
        usuarios = dao.findUsuarioEntities();
        
        List<Tarefa> tarefas = new ArrayList<>();
        TarefaJpaController daoT = new TarefaJpaController(ut, emf);
        tarefas = daoT.findTarefaEntities();
        
        request.setAttribute("tarefas", tarefas);
        request.setAttribute("usuarios", usuarios);
        
        request.getRequestDispatcher("WEB-INF/cria-etiqueta.jsp").forward(request, response);
    }

    private void listarEtiquetaAutorGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Etiqueta> etiquetas = new ArrayList<>();
        EtiquetaJpaController dao = new EtiquetaJpaController(ut, emf);
        etiquetas = dao.findEtiquetaEntities();
        
        request.setAttribute("etiquetas", etiquetas);
        request.getRequestDispatcher("WEB-INF/lista-etiquetaautor.jsp").forward(request, response);
    }

    private void listarEtiquetaAutorTituloGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Etiqueta> etiquetas = new ArrayList<>();
        EtiquetaJpaController dao = new EtiquetaJpaController(ut, emf);
        etiquetas = dao.findEtiquetaEntities();
        
        request.setAttribute("etiquetas", etiquetas);
        request.getRequestDispatcher("WEB-INF/lista-etiquetaautortitulo.jsp").forward(request, response);
    }

    private void editarPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            EtiquetaJpaController dao = new EtiquetaJpaController(ut, emf);
            Long id = Long.parseLong(request.getParameter("id"));
            Etiqueta etiqueta = dao.findEtiqueta(id);
            UsuarioJpaController u = new UsuarioJpaController(ut, emf);
            TarefaJpaController t = new TarefaJpaController(ut, emf);

            etiqueta.setReferenciaAutor((u.findUsuario(Long.parseLong(request.getParameter("idUsuario")))));
            
            etiqueta.setReferenciaTarefa((t.findTarefa(Long.parseLong(request.getParameter("idTarefa")))));
            etiqueta.setTitulo(request.getParameter("titulo"));
        
            dao.edit(etiqueta);
            
            response.sendRedirect("listaEtiquetas.html");
        } catch (Exception ex) {
            response.sendRedirect("listaEtiquetas.html");
        }
    }

    private void criarPost(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Etiqueta etiqueta1 = new Etiqueta();
        UsuarioJpaController u = new UsuarioJpaController(ut, emf);
        TarefaJpaController t = new TarefaJpaController(ut, emf);

        etiqueta1.setReferenciaAutor((u.findUsuario(Long.parseLong(request.getParameter("idUsuario")))));
        etiqueta1.setReferenciaTarefa((t.findTarefa(Long.parseLong(request.getParameter("idTarefa")))));
        etiqueta1.setTitulo(request.getParameter("titulo"));

        EtiquetaJpaController dao = new EtiquetaJpaController(ut, emf);
        
        try{
            dao.create(etiqueta1);
            response.sendRedirect("listaEtiquetas.html");
        } catch (Exception ex) {
            Logger.getLogger(UsuarioServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
