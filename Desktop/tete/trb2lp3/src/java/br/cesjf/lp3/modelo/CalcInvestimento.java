/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.cesjf.lp3.modelo;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.persistence.EntityManager;
import javax.transaction.UserTransaction;



public class CalcInvestimento {
    
    protected float Valor;
    protected float Juros;
    protected int Meses;
    protected double ValorFinal;

    public CalcInvestimento() {
        throw new UnsupportedOperationException("Not yet implemented");
    }
    
    public double CalcInvestimento(){
     ValorFinal = Valor*(Math.pow((1 + (Juros * 0.01f)), Meses));;
     return ValorFinal;
    } 

    public CalcInvestimento(float Valor,float Juros,int Meses,double ValorFinal){
        
    this.Valor = Valor;
    this.Juros = Juros;
    this.Meses = Meses;
    this.ValorFinal = ValorFinal;
    
    
    
    }
    
    
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

    public void persist(Object object) {
        /* Add this to the deployment descriptor of this module (e.g. web.xml, ejb-jar.xml):
         * <persistence-context-ref>
         * <persistence-context-ref-name>persistence/LogicalName</persistence-context-ref-name>
         * <persistence-unit-name>trb2lp3PU</persistence-unit-name>
         * </persistence-context-ref>
         * <resource-ref>
         * <res-ref-name>UserTransaction</res-ref-name>
         * <res-type>javax.transaction.UserTransaction</res-type>
         * <res-auth>Container</res-auth>
         * </resource-ref> */
        try {
            Context ctx = new InitialContext();
            UserTransaction utx = (UserTransaction) ctx.lookup("java:comp/env/UserTransaction");
            utx.begin();
            EntityManager em = (EntityManager) ctx.lookup("java:comp/env/persistence/LogicalName");
            em.persist(object);
            utx.commit();
        } catch (Exception e) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", e);
            throw new RuntimeException(e);
        }
    }

}
