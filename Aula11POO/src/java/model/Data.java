/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author FERNANDADEMOURACRUZ
 */
public class Data {
    
    //Atributos com modificador de acesso
    //Quando não dizemos qual é o modificador de acesso, as classes so é acessivel 
    //por outras classes do mesmo pacote
    
    private int dia;
    private int mes;
    private int ano;
    
    
    public void setData(int dia, int mes, int ano){
        this.setDia(dia);
        this.setMes(mes);
        this.setAno(ano);
    }
    
    
    /*
    public void setMes(int mes){
        if(mes < 1) this.mes = 1;
        else if(mes > 12) this.mes = 12;
        else this.mes = mes;
    }
    
    public int getMes(){
        return this.mes;
    }
    */
    
    /**
     * Construtor que inicializa a data como 1/1/2000
     */
    //construtor que vao definir as instruções que serão executadas apos usarmos o new
    public Data(){
        
        dia = 1;
        mes = 1;
        ano = 2000;
    }
    
    //sobrecarga de construtor
    //usando parametros para alimentar os atributos da classe
     /**
     * Construtor que inicializa a data com os parametros
     */
    public Data(int dia, int mes, int ano){
        //o this referencia o atributo da propria classe
        this.setData(dia,mes,ano);
    }
    
    
    
    //Método para retornar a data
    public String getData(){
        
        String data = " ";
        
        if(dia < 10){
            data += "0";
        }
        data += dia + "/";
        
        if(mes < 10){
            data += "0";
        }
        data += mes + "/";
        
        data +=ano;
        
        return data;
    }

    public int getDia() {
        return dia;
    }

    public void setDia(int dia) {
        if(dia < 1) this.dia = 1;
        else if(dia > 31) this.dia = 31;
        else this.dia = dia;
    }

    public int getMes() {
        return mes;
    }

    public void setMes(int mes) {
        if(mes < 1) this.mes = 1;
        else if(mes > 12) this.mes = 12;
        else this.mes = mes;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }
    
}
