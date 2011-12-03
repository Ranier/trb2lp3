package br.cesjf.lp3.modelo;

public class CalcImc {
    protected float ealtura;
    protected float epeso;
    protected float imc;
   

    public CalcImc(float ealtura, float epeso, float imc) {
        this.ealtura = ealtura;
        this.epeso = epeso;
        this.imc = imc;
            
    }
    
    public CalcImc(){
    }
    
    public float CalcularImc(){
     imc = epeso / (ealtura * ealtura);
     return imc;
    } 

    public float getAltura() {
        return ealtura;
    }

    public void setAltura(float ealtura) {
        this.ealtura = ealtura;
    }

    public float getImc() {
        return imc;
    }

    public void setImc(float imc) {
        this.imc = imc;
    }

    public float getPeso() {
        return epeso;
    }

    public void setPeso(float epeso) {
        this.epeso = epeso;
    }
    
    
    
}
