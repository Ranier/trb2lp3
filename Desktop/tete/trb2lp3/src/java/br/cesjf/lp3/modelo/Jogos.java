/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.cesjf.lp3.modelo;


public class Jogos {
            protected String Jogos;
            protected String nt1;
            protected String nt2;
            protected int golt1;
            protected int golt2;

    public Jogos() {
        throw new UnsupportedOperationException("Not yet implemented");
    }

    public int getGolt1() {
        return golt1;
    }

    public void setGolt1(int golt1) {
        this.golt1 = golt1;
    }

    public int getGolt2() {
        return golt2;
    }

    public void setGolt2(int golt2) {
        this.golt2 = golt2;
    }

    public String getNt1() {
        return nt1;
    }

    public void setNt1(String nt1) {
        this.nt1 = nt1;
    }

    public String getNt2() {
        return nt2;
    }

    public void setNt2(String nt2) {
        this.nt2 = nt2;
    }
    
    


    public Jogos(String nt1, String nt2, int golt1, int golt2, String Jogos) {
        this.nt1 = nt1;
        this.nt2 = nt2;
        this.golt1 = golt1;
        this.golt2 = golt2;
        this.Jogos = Jogos;
    }
    
    
    public String getJogos() {
        return Jogos;
    }

    /**
     * Set the value of Jogos
     *
     * @param Jogos new value of Jogos
     */
    public void setJogos(String Jogos) {
        this.Jogos = Jogos;
    }

}
