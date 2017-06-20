package br.cesjf.lppo;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class StatusTarefa implements Serializable{
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idStatus;
    private String descricao;
    private int qtdeMaxima;

    public StatusTarefa() {
    }

    public StatusTarefa(long idStatus, String descricao, int qtdeMaxima) {
        this.idStatus = idStatus;
        this.descricao = descricao;
        this.qtdeMaxima = qtdeMaxima;
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

    public int getQtdeMaxima() {
        return qtdeMaxima;
    }

    public void setQtdeMaxima(int qtdeMaxima) {
        this.qtdeMaxima = qtdeMaxima;
    }
    
    
}
