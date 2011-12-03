/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.cesjf.lp3.modelo;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author Ranier
 */
@Entity
public class DAO3trb2lp3 implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    protected float Valor;
    protected int Meses;
    protected float Juros;
    protected double ValorFinal;

    /**
     * Get the value of ValorFinal
     *
     * @return the value of ValorFinal
     */
    public double getValorFinal() {
        return ValorFinal;
    }

    /**
     * Set the value of ValorFinal
     *
     * @param ValorFinal new value of ValorFinal
     */
    public void setValorFinal(double ValorFinal) {
        this.ValorFinal = ValorFinal;
    }


    /**
     * Get the value of Juros
     *
     * @return the value of Juros
     */
    public float getJuros() {
        return Juros;
    }

    /**
     * Set the value of Juros
     *
     * @param Juros new value of Juros
     */
    public void setJuros(float Juros) {
        this.Juros = Juros;
    }


    /**
     * Get the value of Meses
     *
     * @return the value of Meses
     */
    public int getMeses() {
        return Meses;
    }

    /**
     * Set the value of Meses
     *
     * @param Meses new value of Meses
     */
    public void setMeses(int Meses) {
        this.Meses = Meses;
    }


    /**
     * Get the value of Valor
     *
     * @return the value of Valor
     */
    public float getValor() {
        return Valor;
    }

    /**
     * Set the value of Valor
     *
     * @param Valor new value of Valor
     */
    public void setValor(float Valor) {
        this.Valor = Valor;
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DAO3trb2lp3)) {
            return false;
        }
        DAO3trb2lp3 other = (DAO3trb2lp3) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.cesjf.lp3.modelo.DAO3trb2lp3[ id=" + id + " ]";
    }
    
}
