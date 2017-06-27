package br.cesjf.lppo;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Etiqueta implements Serializable{
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Usuario referenciaAutor;
    private Tarefa referenciaTarefa;
    private String titulo;

    public Etiqueta() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Usuario getReferenciaAutor() {
        return referenciaAutor;
    }

    public void setReferenciaAutor(Usuario referenciaAutor) {
        this.referenciaAutor = referenciaAutor;
    }

    public Tarefa getReferenciaTarefa() {
        return referenciaTarefa;
    }

    public void setReferenciaTarefa(Tarefa referenciaTarefa) {
        this.referenciaTarefa = referenciaTarefa;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

   
}
