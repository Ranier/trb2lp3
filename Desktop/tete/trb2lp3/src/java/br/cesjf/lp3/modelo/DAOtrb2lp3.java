/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.cesjf.lp3.modelo;

import java.io.Serializable;
import javax.ejb.CreateException;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author Ranier
 */
@Entity
public class DAOtrb2lp3 implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    protected String nt1;
    protected String nt2;
    protected int golt1;
    protected int golt2;

    /**
     * Get the value of golt2
     *
     * @return the value of golt2
     */
    public int getGolt2() {
        return golt2;
    }

    /**
     * Set the value of golt2
     *
     * @param golt2 new value of golt2
     */
    public void setGolt2(int golt2) {
        this.golt2 = golt2;
    }


    /**
     * Get the value of golt1
     *
     * @return the value of golt1
     */
    public int getGolt1() {
        return golt1;
    }

    /**
     * Set the value of golt1
     *
     * @param golt1 new value of golt1
     */
    public void setGolt1(int golt1) {
        this.golt1 = golt1;
    }


    /**
     * Get the value of nt2
     *
     * @return the value of nt2
     */
    public String getNt2() {
        return nt2;
    }

    /**
     * Set the value of nt2
     *
     * @param nt2 new value of nt2
     */
    public void setNt2(String nt2) {
        this.nt2 = nt2;
    }


    /**
     * Get the value of nt1
     *
     * @return the value of nt1
     */
    public String getNt1() {
        return nt1;
    }

    /**
     * Set the value of nt1
     *
     * @param nt1 new value of nt1
     */
    public void setNt1(String nt1) {
        this.nt1 = nt1;
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
        if (!(object instanceof DAOtrb2lp3)) {
            return false;
        }
        DAOtrb2lp3 other = (DAOtrb2lp3) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.cesjf.lp3.modelo.DAOtrb2lp3[ id=" + id + " ]";
    }
    
}
