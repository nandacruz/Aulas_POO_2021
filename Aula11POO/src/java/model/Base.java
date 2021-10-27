/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author FERNANDADEMOURACRUZ
 */
public class Base {
    
    //Criando Array List com base na classe Contato
    private static ArrayList<Contato> contatoList;
    
    //retornando valor no ArrayList, caso não haja nenhum, ele vai inicializar com os valores abaixo
    public static  ArrayList<Contato> getContatoList(){
        if(contatoList == null){
            contatoList = new ArrayList<>();
            contatoList.add(new Contato("Fulano", "(13)43908 -0001",new Data (1,1,2001)));
            contatoList.add(new Contato("Beltrano", "(13)43908 -0002",new Data (2,1,2001)));
            contatoList.add(new Contato("Cicrano", "(13)43908 -0003",new Data (3,1,2001)));
        }
        //retornando valor
        return contatoList;
    }
    
}
