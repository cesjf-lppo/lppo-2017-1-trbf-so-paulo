package br.cesjf.lppo.servlet;

import br.cesjf.lppo.Usuario;
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
@WebServlet(name = "UsuarioServlet", urlPatterns = {"/criaUsuario.html", "/listaUsuarios.html", "/excluiUsuario.html", "/editaUsuario.html"})
public class UsuarioServlet extends HttpServlet {

    @PersistenceUnit(unitName = "trbflppo-2017-1PU")
    EntityManagerFactory emf;
    
    @Resource(name = "java:comp/UserTransaction")
    UserTransaction ut;
    
      @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if(request.getServletPath().contains("editaUsuario.html")){
            editarGet(request, response);
        }else if(request.getServletPath().contains("excluiUsuario.html")){
            excluirGet(request, response);
            response.sendRedirect("listaUsuarios.html");
        }else if(request.getServletPath().contains("listaUsuarios.html")){
            listarGet(request, response);
        }else if(request.getServletPath().contains("criaUsuario.html")){
            criarGet(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if(request.getServletPath().contains("/editaUsuario.html")){
            try {
                editarPost(request, response);
            } catch (Exception ex) {
                Logger.getLogger(UsuarioServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        if(request.getServletPath().contains("/criaUsuario.html")){
            criarPost(request, response);
        }
        
    }

    private void editarGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try{
            UsuarioJpaController dao = new UsuarioJpaController(ut, emf);
            Long id = Long.parseLong(request.getParameter("id"));
            Usuario usuario = dao.findUsuario(id);
            
            request.setAttribute("usuario", usuario);
            request.getRequestDispatcher("WEB-INF/edita-usuario.jsp").forward(request, response);
        }catch(Exception ex){
            response.sendRedirect("listaUsuarios.html");
        }
    }

    private void excluirGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            UsuarioJpaController dao = new UsuarioJpaController(ut, emf);
            Long id = Long.parseLong(request.getParameter("id"));
        
            dao.destroy(id);
        } catch (Exception ex) {
            response.sendRedirect("listaUsuarios.html");
        }
    }

    private void listarGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Usuario> usuarios = new ArrayList<>();
        UsuarioJpaController dao = new UsuarioJpaController(ut, emf);
        usuarios = dao.findUsuarioEntities();
        
        request.setAttribute("usuarios", usuarios);
        request.getRequestDispatcher("WEB-INF/lista-usuarios.jsp").forward(request, response);
    }

    private void criarGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/cria-usuario.jsp").forward(request, response);
    }

    private void editarPost(HttpServletRequest request, HttpServletResponse response) throws IOException, Exception{
        try{
            UsuarioJpaController dao = new UsuarioJpaController(ut, emf);
            Long id = Long.parseLong(request.getParameter("id"));
            Usuario usuario = dao.findUsuario(id);
            usuario.setNomeCompleto(request.getParameter("nome"));
            usuario.setEmail(request.getParameter("email"));
            usuario.setSenha(request.getParameter("senha"));
            dao.edit(usuario);
            
            response.sendRedirect("listaUsuarios.html");
        } catch (IOException ex) {
            response.sendRedirect("listaUsuarios.html");
        }
    }

    private void criarPost(HttpServletRequest request, HttpServletResponse response) {
        Usuario usuario1 = new Usuario();
        usuario1.setNomeCompleto(request.getParameter("nome"));
        usuario1.setEmail(request.getParameter("email"));
        usuario1.setSenha(request.getParameter("senha"));
        
        UsuarioJpaController dao = new UsuarioJpaController(ut, emf);
        try {
            dao.create(usuario1);
            response.sendRedirect("listaUsuarios.html");
        } catch (Exception ex) {
            Logger.getLogger(UsuarioServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
