/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

/**
 *
 * @author FERNANDADEMOURACRUZ
 */
public class Acesse_History {
    
    
     //criando tabela
    public static String getCreateStatement(){
        return "CREATE TABLE IF NOT EXISTS Fernanda_access_history("
                + "datetime DATETIME UNIQUE NOT NULL,"               
                + "username VARCHAR(50) UNIQUE NOT NULL"               
                + ")";
    }
    
}
