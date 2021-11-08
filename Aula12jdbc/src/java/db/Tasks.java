/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.*;
import java.util.ArrayList;
import web.DbtListener;

/**
 *
 * @author FERNANDADEMOURACRUZ
 */
public class Tasks {
    
    public static ArrayList<String> getTasks () throws Exception{
        ArrayList<String> list = new ArrayList<>();
        //classe conexão
        Connection con = DbtListener.getConnection();
        //possibilita a execução de comandos no bd
        Statement stmt = con.createStatement();
        //Ler os dados
        ResultSet rs = stmt.executeQuery("select *from tasks");
        //percorrer as linhas de um conjunto de dados retornado pela query
        while(rs.next()){
            list.add(rs.getString("name"));
        }
        rs.close();
        stmt.close();
        con.close();
        return list;
        
    }
    
    public static void addTask(String taskName) throws Exception{
        
        Connection con = DbtListener.getConnection();
        //possibilita a execução de comandos no bd
        Statement stmt = con.createStatement();
        //metodo execute
        stmt.execute("insert into tasks values ('"+taskName+"')");
        
        stmt.close();
        con.close();
        
    }
    
    public static void removeTask(String taskName) throws Exception{
        
        Connection con = DbtListener.getConnection();
        //possibilita a execução de comandos no bd
        Statement stmt = con.createStatement();
        //metodo execute
        stmt.execute("delete from tasks where name = '"+taskName+"'");
        
        stmt.close();
        con.close();
        
    }
}
