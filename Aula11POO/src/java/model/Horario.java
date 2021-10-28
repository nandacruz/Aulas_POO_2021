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
public class Horario {
    //atributos da classe
    private int horas;
    private int minutos;
    private int segundos;
    
    
    /**
     * 
     * @param horas
     * @param minutos
     * @param segundos 
     */
    public void setHorario(int horas, int minutos, int segundos){
        
        this.setHoras(horas);
        this.setMinutos(minutos);
        this.setSegundos(segundos);
    }
    
    
    /**
     * Construtor com parâmetros
     * @param horas
     * @param minutos
     * @param segundos 
     */
    public Horario(int horas, int minutos, int segundos){
        //o this referencia o atributo da propria classe
        this.setHorario(horas,minutos,segundos);
    }
    
   
    /**
     * Método para retornar o horário em String concatenada com ":".
     * @return 00:00:00
     */
    public String getHorario(){
        
        String horario = "";
        
        if(horas < 10){
            horario += "0";
        }
        horario += horas + ":";
        
        if(minutos < 10){
            horario += "0";
        }
        horario += minutos + ":";
        
        if(segundos < 10){
            horario += "0";
        }
        horario += segundos;
        
        return horario;
    }
    
    //Getters e Setters dos atributos

    public int getHoras() {
        return horas;
    }

    public void setHoras(int horas) {
        this.horas = horas;
    }

    public int getMinutos() {
        return minutos;
    }

    public void setMinutos(int minutos) {
        this.minutos = minutos;
    }

    public int getSegundos() {
        return segundos;
    }

    public void setSegundos(int segundos) {
        this.segundos = segundos;
    }
   

    
}
