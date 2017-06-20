package br.cesjf.lppo;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Tarefa implements Serializable{
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idTarefa;
    private Long idUsuario;
    private Long idStatus;
    private String descricao;
    private Date inicio;
    private Date fim;

    public Tarefa() {
        
    }

    public Tarefa(Long idTarefa, Long idUsuario, Long idStatus, String descricao, Date inicio, Date fim) {
        this.idTarefa = idTarefa;
        this.idUsuario = idUsuario;
        this.idStatus = idStatus;
        this.descricao = descricao;
        this.inicio = inicio;
        this.fim = fim;
    }

    public Long getIdTarefa() {
        return idTarefa;
    }

    public void setIdTarefa(Long idTarefa) {
        this.idTarefa = idTarefa;
    }

    public Long getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(Long idUsuario) {
        this.idUsuario = idUsuario;
    }

    public Long getIdStatus() {
        return idStatus;
    }

    public void setIdStatus(Long idStatus) {
        this.idStatus = idStatus;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Date getInicio() {
        return inicio;
    }

    public void setInicio(Date inicio) {
        this.inicio = inicio;
    }

    public Date getFim() {
        return fim;
    }

    public void setFim(Date fim) {
        this.fim = fim;
    }

   
}
