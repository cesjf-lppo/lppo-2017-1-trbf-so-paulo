package br.cesjf.lppo.dao;

import br.cesjf.lppo.Etiqueta;
import br.cesjf.lppo.Usuario;
import br.cesjf.lppo.Tarefa;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class KanbanDao {

    private final PreparedStatement opBuscaPorIdUsuario;

    private final PreparedStatement opListar;
    
    

    public KanbanDao() throws Exception {
        Connection conexao = ConnectionFactory.createConnection();
        opListar = conexao.prepareStatement("SELECT * FROM pedido");
        opBuscaPorIdUsuario = conexao.prepareStatement("SELECT * FROM etiqueta WHERE referenciaAutor = ?");
    }


    public List<Etiqueta> buscarPorIdUsuario(Long id) throws Exception {
        try {
            List<Etiqueta> etiquetas = new ArrayList<>();
            Etiqueta etiqueta = null;
            opBuscaPorIdUsuario.clearParameters();
            opBuscaPorIdUsuario.setLong(1, id);
            ResultSet resultado = opBuscaPorIdUsuario.executeQuery();
            while(resultado.next()){
                etiqueta = new Etiqueta();
                etiqueta.setId(resultado.getLong("id"));
                etiqueta.setReferenciaAutor((Usuario) resultado.getObject("referenciaAutor"));
                etiqueta.setReferenciaTarefa((Tarefa) resultado.getObject("referenciaTarefa"));                
                etiqueta.setTitulo(resultado.getString("titulo"));
                etiquetas.add(etiqueta);
            }

            return etiquetas;
        } catch (SQLException ex) {
            throw new Exception("Erro ao tentar recuperar etiquetas por autor!", ex);
        }
    }
    
}
