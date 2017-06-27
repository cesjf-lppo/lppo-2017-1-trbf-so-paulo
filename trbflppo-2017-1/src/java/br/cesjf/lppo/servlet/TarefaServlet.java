package br.cesjf.lppo.servlet;

import br.cesjf.lppo.Tarefa;
import br.cesjf.lppo.dao.TarefaJpaController;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
@WebServlet(name = "TarefaServlet", urlPatterns = {"/criaTarefa.html", "/listaTarefas.html", "/excluiTarefa.html", "/editaTarefa.html"})
public class TarefaServlet extends HttpServlet {
    
    @PersistenceUnit(unitName = "trbflppo-2017-1PU")
    EntityManagerFactory emf;
    
    @Resource(name = "java:comp/UserTransaction")
    UserTransaction ut;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if(request.getServletPath().contains("/editaTarefa.html")){
            editarGet(request, response);
        }else if(request.getServletPath().contains("/excluiTarefa.html")){
            excluirGet(request, response);
            response.sendRedirect("listaTarefas.html");
        }else if(request.getServletPath().contains("/listaTarefas.html")){
            listarGet(request, response);
        }else if(request.getServletPath().contains("/criaTarefa.html")){
            criarGet(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if(request.getServletPath().contains("/editaTarefa.html")){
            editarPost(request, response);
        }
        if(request.getServletPath().contains("/criaTarefa.html")){
            try {
                criaPost(request, response);
            } catch (ParseException ex) {
                Logger.getLogger(TarefaServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        }
    }

    private void editarGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            TarefaJpaController dao = new TarefaJpaController(ut, emf);
            Long id = Long.parseLong(request.getParameter("id"));
            Tarefa tarefa = dao.findTarefa(id);
            request.setAttribute("tarefas", tarefa);
            request.getRequestDispatcher("WEB-INF/edita-tarefa.jsp").forward(request, response);
        }catch(Exception ex){
            response.sendRedirect("listaTarefas.html");
        }
    }

    private void excluirGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            TarefaJpaController dao = new TarefaJpaController(ut, emf);
            Long id = Long.parseLong(request.getParameter("id"));

            dao.destroy(id);
        } catch (Exception ex) {
            response.sendRedirect("listaTarefas.html");
        }
    }

    private void listarGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Tarefa> tarefas = new ArrayList<>();
        TarefaJpaController dao = new TarefaJpaController(ut, emf);
        tarefas = dao.findTarefaEntities();
        
        request.setAttribute("tarefas", tarefas);
        request.getRequestDispatcher("WEB-INF/lista-tarefas.jsp").forward(request, response);
    }

    private void criarGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/cria-tarefa.jsp").forward(request, response);
    }

    private void editarPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try{
            SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
            Date dataConcluir = formato.parse(request.getParameter("dataConcluir"));
            Date dataConcluido = formato.parse(request.getParameter("dataConcluido"));
            TarefaJpaController dao = new TarefaJpaController(ut, emf);
            Long id = Long.parseLong(request.getParameter("id"));
            Tarefa tarefa = dao.findTarefa(id);
            tarefa.setTitulo(request.getParameter("titulo"));
            tarefa.setDescricao("descricao");
            tarefa.setConcluir(dataConcluir);
            tarefa.setConclusao(dataConcluido);
            dao.edit(tarefa);
            
            response.sendRedirect("listaTarefas.html");
            
        }catch(Exception ex){
            response.sendRedirect("listaTarefas.html");
        }
    }

    private void criaPost(HttpServletRequest request, HttpServletResponse response) throws ParseException {
        SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
        Date data = formato.parse(request.getParameter("dataConcluir"));
        Tarefa tarefa1 = new Tarefa();
        tarefa1.setTitulo(request.getParameter("titulo"));
        tarefa1.setDescricao(request.getParameter("descricao"));
        tarefa1.setConcluir(data);
        
        TarefaJpaController dao = new TarefaJpaController(ut, emf);
        try {
            dao.create(tarefa1);
            response.sendRedirect("listaTarefas.html");
        } catch (Exception ex) {
            Logger.getLogger(TarefaServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
